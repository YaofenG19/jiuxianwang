$(function(){


    var name = getCookie('username');

    function render(){
        $.ajax({
            type: 'get',
            url: '../api/dateset.php',
            asyne: true,
            data: {
                uid: name
            },
            success: function(str){
                // console.log(str);
                var arr = JSON.parse(str);
                var res = arr.data.map(function(item){
                    return `<div class="cart_list"  data-id="${item.zid}">
                    <div class="cartgoods">
                        <div class="checkBox">
                            <input type="checkbox">
                        </div>
                        <div class="cartgds">
                            <div class="goods_info">
                                <div class="goods_img">
                                    <img src="${item.listImg}" alt="">
                                </div>
                                <div class="goods_right">
                                    <span class="goods_title">${item.title}</span>
                                </div>
                            </div>
                        </div>
                        <div class="cartprice"><span class="cart_price">￥${item.price}</span>
                        </div>
                        <div class="cartgold">
                            <span>297金币</span>
                        </div>
                        <div class="cartquantity">
                            <div class="goodsnum">
                                <span class="reduce">-</span>
                                <input type="text" class="num" value="${item.num}" autocomplete="off" minmun="1">
                                <span class="add">+</span>
                            </div>
                        </div>
                        <div class="cartsubtotal">￥${item.price*item.num}</div>
                        <div class="cartoperating">
                            <p class="list_del">删除</p>
                            <p class="move_collect">移入我的收藏</p>
                        </div>
                    </div>
                </div>`
                }).join('');
                $('.g_type').append(res);

                // 点击实现数据加
        $('.cart_list').on('click','.add',function(){
            // alert(123);
            var $id = $(this).parent().parent().parent().parent().attr("data-id");
            // console.log($id);
            $.ajax({
                type : 'get',
                url : '../api/cartskill.php',
                data : {
                    key :'jia',
                    dataid : $id
                },
                success : function(data){
                }
            })
        })
        $('.cart_list').on('click','.reduce',function(){
            var $id = $(this).parent().parent().parent().parent().attr("data-id");
            // console.log($id);
            $.ajax({
                type : 'get',
                url : '../api/cartskill.php',
                data : {
                    key :'jian',
                    dataid : $id
                },
                success : function(data){
                }
            })

        })
        // 删除宝贝
        $('.cart_list').on('click','.list_del',function(){
                var $id = $(this).parent().parent().parent().attr("data-id");
                // console.log($id);
            $.ajax({
                type : 'get',
                url : '../api/cartskill.php',
                data : {
                    key :'del',
                    dataid : $id
                },
                success : function(data){
                }
            })
        })
            }
        })
    }

    render();

        
    //增加
    $('.g_type').on('click','.add',function(){
        var num = $(this).prev().val();
        num++;
        $(this).prev().val(num);
        total($(this));
    })

    //减少
    $('.g_type').on('click','.reduce',function(){
        var num = $(this).next().val();
        num--;
        if(num <= 1) {//设置下限
			num = 1;
		}
        $(this).next().val(num);
        total($(this));
    })

    //手动输入
    $('.g_type').on('input','.num',function() {
		var num = $(this).val();
		if(num <= 1) {
			num = 1;
		}
		$(this).val(num);
		total($(this));
    });
    
    //小计
    function total(now){
        var num = $(now).parent().find('.num').val();
        // console.log(num);
        var price = $(now).parent().parent().prev().prev().text().slice(1);
        // console.log(price);
        var xiaoji = (num * price).toFixed(2);
        // console.log(xiaoji)
        $(now).parent().parent().next().html('￥ ' + xiaoji);
        all();
    }


    // 删除
	$('.g_type').on('click','.list_del',function() {
		var res = confirm('您确认要删除吗？');
		if(res) {
			$(this).parent().parent().parent().remove();
		}
    });
    

    // function update() {
	// 	var len = $('.add').size();
	// 	if(len == 0) {
	// 		$('.cartGoPay').hide();
	// 	}else{
    //         $('.cartGoPay').show();
	// 	}
	// }


    //全选
	$('.allcheck').click(function() {
		var istrue = $('.allcheck').prop('checked');
        $('.checkBox input').prop('checked',istrue);
        $('.cart_shop input').prop('checked',istrue);
        $('#allcheck').prop('checked',istrue);
		all();
    });
	$('#allcheck').click(function() {
		var istrue = $('#allcheck').prop('checked');
        $('.checkBox input').prop('checked',istrue);
        $('.cart_shop input').prop('checked',istrue);
        $('.allcheck').prop('checked',istrue);
		all();
    });
	$('.cart_shop input').click(function() {
		var istrue = $('.cart_shop input').prop('checked');
        $('.checkBox input').prop('checked',istrue);
        $('.allcheck').prop('checked',istrue);
        $('#allcheck').prop('checked',istrue);
		all();
    });
    

    // 复选框控制全选
    $('.g_type').on('click','.checkBox input',function() {
		var len = $('.checkBox input:checked').size();
		var total = $('.checkBox input').size();
		if(len == total) {
			//全都勾选了
			$('#allcheck').prop('checked',true);
            $('.allcheck').prop('checked',true);
            $('.cart_shop input').prop('checked',true);
		}else{
			$('#allcheck').prop('checked',false);
            $('.allcheck').prop('checked',false);
            $('.cart_shop input').prop('checked',false);
		}
		all();//刷新总数量和总价格
	});

	//计算总数量和总价格
	var arr = [];
	function all() {
		arr = [];//存被勾选的复选框的下标
		$('.checkBox input').each(function(i,item) {
			if($(item).prop('checked')) {
				//被勾选了，把下标存起来
                arr.push(i);
                // console.log(arr.push(i));
			}
		});
		
		//总数量
		var num = 0;
		//总价格
		var price = 0;
		
		arr.forEach(function(item) {
            num += $('.num').eq(item).val() * 1;
            // console.log(num);
			price += $('.cartsubtotal').eq(item).text().slice(1) * 1;
		});
		
		// console.log(num,price.toFixed(2));
		
		//渲染到节点
		$('.pieces').html('已选商品<em>'+num+'</em>件');
		$('.total').html('总计（不含运费）：￥<em>' + price.toFixed(2)) + '</em>';
		
    }
    


    //删除选中
    $('#delchecked').click(function(){
        var res = confirm('您确定要删除吗');
        if(res){
			for(var i = arr.length-1; i >= 0; i--) {//从数组的尾部开始删除
				$('.cart_list').eq(arr[i]).remove();
			}
        }
        all();//刷新总数量和总价格
        update();
    })
    var cart_list = document.getElementsByClassName('cart_list');
    // var listnum = document.getElementsByClassName('listnum')[0];
    // var arr2 = [];
    // for(var i = 0;i < cart_list.length;i++){
    //     arr2 = [i];
    //     var math = arr2.length + 1;
    // }
    // listnum.innerHTML = math;




    if(getCookie('username')){
        var name = getCookie('username');
        // console.log(name);
        $('.headerlog').css('display','none');
        $('#user').css('display','inline-block').html('hi, '+ name);
        $('.abort').css('display','inline-block');
        $('.headerreg').css('display','none');
    }
    $('.abort').click(function(){
        removeCookie("username");
    })



})