$(function(){
    //  三级导航
    $('.nav_list_sec').on('mouseenter','.list_same',function(){
        $(this).find('.nav_list_hide').css('display','block');
    })
    $('.nav_list_sec').on('mouseleave','.list_same',function(){
        $(this).find('.nav_list_hide').css('display','none');
    })
    $('.nav_list_sec').on('mouseenter','.nav_last',function(){
        $(this).find('.nav_list_hide').css('display','block');
    })
    $('.nav_list_sec').on('mouseleave','.nav_last',function(){
        $(this).find('.nav_list_hide').css('display','none');
    })


    // 选项卡
    $('.indexLTab li').hover(function(){
        $(this).attr('class','ac').siblings().attr('class','');
        $('.goodsList').eq($(this).index()).css('display','block').siblings().css('display','none');
    })
    
    // 新闻选项卡
    $('.newsTab li').hover(function(){
        $(this).attr('class','ac').siblings().attr('class','');
        $('.newslist1').eq($(this).index()).css('display','block').siblings().css('display','none');
    })

    // 优惠推荐轮播
    var iw = $('.racelist').eq(0).outerWidth();
    $('.racelist').css('left',iw);
    $('.racelist').eq(0).css('left',0);

    var now = 0;
    //下一张
    function next(){
        $('.racelist').eq(now).animate({'left': -iw},'linear');
        now++;
        if (now >= $('.racelist').size()) {
			now = 0;
		}
        $('.racelist').eq(now).css('left',iw);
        $('.racelist').eq(now).animate({'left': 0},'linear');
        light();
    }
    //上一张
    function prev() {
		$('.racelist').eq(now).animate({ 'left': iw }, 'linear');
		now--;
		if (now <= -1) {
			now = $('.racelist').size() - 1;
		}
		$('.racelist').eq(now).css('left', -iw);
		$('.racelist').eq(now).animate({ 'left': 0 }, 'linear');
		light();
    }
    
    //左右按钮
    $('.raceRightBtn').click(function(){
        next();
        var isok = true;
        if(now > 2){
            isok = false;
        }
    });
    $('.raceLeftBtn').click(function(){
        prev();
    });

    //焦点跟随
    function light(){
        $('.rightNavBox').children().eq(now).addClass('offNavActive').siblings().removeClass('offNavActive');
    }

    // 点击焦点切换
    $('.rightNavBox').on('click', 'span', function () {
		var index = $(this).index();
		if (index > now) {
			//从右边切入新图
			$('.racelist').eq(now).animate({ 'left': -iw }, 'linear');
			$('.racelist').eq(index).css('left', iw);
			$('.racelist').eq(index).animate({ 'left': 0 }, 'linear');
		}

		if (index < now) {
			//从左边切入新图
			$('.racelist').eq(now).animate({ 'left': iw }, 'linear');
			$('.racelist').eq(index).css('left', -iw);
			$('.racelist').eq(index).animate({ 'left': 0 }, 'linear');
		}

		now = index;
		light();
    });
    
    // 第一层数据渲染

    var sp1 = document.getElementsByClassName('spiritUl')[0];
    function init(){
        ajax2({
            type: 'get',
            url: './api/page.php',
            success: function(str){
                // console.log(str);
                create(str);
            }
        })
    }
    init();

    function create(str){
        var arr = JSON.parse(str);
        // console.log(arr);
        var res = arr.map(function(item){
            return `<li data-id="${item.no}">
            <div class="spiritListPic">
            <img src="${item.src}" alt="">
            </div>
            <div class="spiritListTitle">${item.title}</div>
            <div class="spiritListPrice">￥${item.price}</div>
        </li>`
        }).join('');
        sp1.innerHTML = res;
    }
    

    // loadFirst选项卡
    $('.topTenNavLi a').hover(function(){
        $(this).attr('class','fun').siblings().attr('class','');
        $('.tTConWrapUL').eq($(this).index()).css('display','block').siblings().css('display','none');
    })

    //logobox选项卡
    $('.logoTitUL li').hover(function(){
        $(this).attr('class','col').siblings().attr('class','');
        $('.logoBox').eq($(this).index()).css('display','block').siblings().css('display','none');
    })

    // 回到顶部
    var fixDiv = document.getElementsByClassName('fixDiv')[0];
    var goback = document.getElementsByClassName('goback')[0];
    window.onscroll = function(){
        var scrollTop = window.scrollY;
        if(scrollTop >= 1400){
            fixDiv.style.display = 'block';
        }else{
            fixDiv.style.display = 'none';
        }
        goback.onclick = function(){
            var timer = setInterval(function(){
                var scrollTop = window.scrollY;
                scrollTop = window.scrollY;
                scrollTop -=50;
                if(scrollTop <= 0){
                    clearInterval(timer);
                    window.scrollTo(0,0);
                }else{
                    window.scrollTo(0,scrollTop);
                }
            },10)
        }
    }

    // 楼层跳跃
    var module1btn = document.getElementById('module1');
    var module2btn = document.getElementById('module2');

    module1btn.onclick = function(){
        var timer1 = setInterval(function(){
            var scrollTop = window.scrollY;
            scrollTop = window.scrollY;
            scrollTop -=50;
            if(scrollTop <= 1600){
                clearInterval(timer1);
                window.scrollTo(0,1600);
            }else{
                window.scrollTo(0,scrollTop);
            }
        },10)
    }
    module2btn.onclick = function(){
        var timer2 = setInterval(function(){
            var scrollTop = window.scrollY;
            scrollTop = window.scrollY;
            scrollTop -=50;
            if(scrollTop <= 2400){
                clearInterval(timer2);
                window.scrollTo(0,2400);
            }else{
                window.scrollTo(0,scrollTop);
            }
        },10)
    }


    // 购物车
    var isok = true;
    $('.cart').click(function(){
        if(isok){
            $('.cartRight').css('display','block');
        }else{
            $('.cartRight').css('display','none');
        }
        isok = !isok;
    })
    $('.crClose').click(function(){
        $('.cartRight').css('display','none');
        isok = !isok;
    })


    var adnewbox = document.getElementsByClassName('adnewbox')[0];
    var closeadnew = document.getElementsByClassName('closeadnew')[0];
    window.onscroll = function(){
        var scrollTop = window.scrollY;
        if(scrollTop >= 800){
            adnewbox.style.display = 'block';
            var timer = setTimeout(function(){
                closeadnew.onclick = function(){
                    adnewbox.style.display = 'none';
                    clearTimeout(timer);
                }
            },100);
            
        }else{
            adnewbox.style.display = 'none';
        }
    }





    var welcome = document.getElementsByClassName('welcome')[0];
    var headerlog = document.getElementById('headerlog');
    var headerreg = document.getElementById('headerreg');
    var jinbi = document.getElementById('jinbi');
    var logsp1 = document.getElementById('logsp1');
    var rightSideBarlog = document.getElementById('rightSideBarlog');
    var mypho = document.getElementById('mypho');
    var mrpho = document.getElementById('mrpho');
    var hidewec = document.getElementById('hidewec');
    if(getCookie('username')){
        var name = getCookie('username');
        welcome.innerHTML = 'hi,' + name;
        headerlog.innerHTML = '退出';
        headerlog.onclick = function(){
            removeCookie("username");
            // location.href = '../Page.html';
        }
        headerreg.innerHTML = '消息';
        jinbi.style.display = 'inline';
        logsp1.innerHTML = name;
        logsp1.style.color = '#cc0001';
        rightSideBarlog.style.display = 'none';
        hidewec.style.display = 'inline';
        mypho.style.display = 'inline';
        mrpho.style.display = 'none';
    }
    

});


