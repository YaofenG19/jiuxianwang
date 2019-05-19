$(function(){

    


    //渲染
    var dGuide = document.getElementsByClassName('dGuide')[0];
    var animation03 = document.getElementsByClassName('animation03')[0];
    var dIntroInfo = document.getElementsByClassName('dIntroInfo')[0];
    var par = location.search.slice(1);
    var gid = par.split("=")[1];
    // console.log(gid);
    // console.log(par);
    function init(){
        ajax2({
            type: 'get',
            url: '../api/details.php',
            data: 'id=' + gid,
            success: function(str){
                // console.log(str);
                var arr = JSON.parse(str);
                // console.log(arr);
                var idx = 0;
                arr.some(function(item,index){
                    idx = index;
                    return item.gid == gid;
                })
                var obj = arr[idx];
                // console.log(gid);
                render();
                render2();

                var magnifierConfig = {
                    magnifier: "#magnifier1", //最外层的大容器
                    width: 420, //承载容器宽
                    height: 420, //承载容器高
                    moveWidth: null, //如果设置了移动盒子的宽度，则不计算缩放比例
                    zoom: 2 //缩放比例
                };
        
                var _magnifier = magnifier(magnifierConfig);


                render3();

                $('.buyNum_add').click(function(){
                    var num = $(this).prev().val();
                    num++;
                    $(this).prev().val(num);
                })
                $('.buyNum_reduce').click(function(){
                    var num = $('#_nub').val();
                    num--;
                    if(num <= 1) {//设置下限
                        num = 1;
                    }
                    $('#_nub').val(num);
                })


                var uid = getCookie('username');
                var num = document.getElementById('_nub');
                $('#goCart').click(function(){
                    var num = _nub.value;
                    // console.log(num);
                    $.ajax({
                        type: 'post',
                        url: '../api/detocart.php',
                        async:true,
                        data: {
                            uids: uid,
                            nums: num,
                            gids: gid,
                        },
                        success: function(data){
                            location.href= 'car.html';
                            // console.log(data);
                        }
                    })
                })

                var chooseclick = document.getElementsByClassName('chooseclick');
                var dIcon11 = document.getElementsByClassName('dIcon11');
                for(var i = 0; i<chooseclick.length;i++){
                    
                    chooseclick[i].index = i;
                    chooseclick[i].onclick = function(){
                        for(var i=0;i<chooseclick.length;i++){
                            chooseclick[i].style.border = '1px solid #e5e5e5';
                            dIcon11[i].style.display = 'none';
                        }
                        chooseclick[this.index].style.border = '1px solid #cc3333';
                        dIcon11[this.index].style.display = 'block';
                    }
                }
                function render(){
                    dGuide.innerHTML = `<a href="../Page.html">首页</a>
                                        <i>></i>
                                        <span class="d_cur">${obj.title}</span>`
                }
                function render2(){
                    var simg = obj.detailsBigImg.split("&");
                    animation03.innerHTML = `<li>
                                            <div class="small-img">
                                                <img src="${simg[0]}" />
                                            </div>
                                        </li>
                                        <li>
                                            <div class="small-img">
                                                <img src="${simg[1]}" />
                                            </div>
                                        </li>
                                        <li>
                                            <div class="small-img">
                                                <img src="${simg[2]}" />
                                            </div>
                                        </li>
                                        <li>
                                            <div class="small-img">
                                                <img src="${simg[3]}" />
                                            </div>
                                        </li>
                                        <li>
                                            <div class="small-img">
                                                <img src="${simg[4]}" />
                                            </div>
                                        </li>`
                }
                function render3(){
                    dIntroInfo.innerHTML = `<div class="comName">
                                                <h1>${obj.title}</h1>
                                            </div>
                                            <div class="infoWrap clearfix">
                                                <div class="priceBox">
                                                    <div class="infoTit">酒仙价</div>
                                                    <div class="nowPrice">
                                                        <span class="pri">
                                                            <em>￥</em>
                                                            <strong>${obj.price}</strong>
                                                        </span>
                                                        <span></span>
                                                    </div>
                                                    <div class="clubDisc">
                                                        <i class="clubImg"></i>
                                                        <span>会员下单再享98折，可省71.76元</span>
                                                        <a href="javascript:;">开通会员></a>
                                                    </div>
                                                    <div class="mobileBay">
                                                        <p class="mb_head">
                                                            <i class="dIcon"></i>
                                                            <span>手 机 购 买</span>
                                                            <em class="dIcon1"></em>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="salesScoreGold">
                                                <ul>
                                                    <li class="comSales">
                                                        <i class="dIcon1 dIcon"></i>
                                                        <span>累计销量</span>
                                                        <em>${obj.saleNum}</em>
                                                    </li>
                                                    <li class="comScore">
                                                        <i class="dIcon2 dIcon"></i>
                                                        <span>酒友评分</span>
                                                        <em>5.0</em>
                                                    </li>
                                                    <li class="comGold">
                                                        <i class="dIcon3 dIcon"></i>
                                                        <span>送金币</span>
                                                        <em>598</em>
                                                        <a href="javascript:;"></a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="comChooseBay clearfix">
                                                <div class="jt">
                                                    <div class="infoTit">津 &nbsp;&nbsp;贴</div>
                                                    <div class="infoCopons">
                                                        <div class="jt_list">
                                                            酒仙购物津贴全平台可叠加使用，
                                                            <span>速领>></span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="yh">
                                                    <div class="infoTit">优惠券</div>
                                                    <div class="infoCon">
                                                        <div class="couponsLead">
                                                            <i></i>
                                                            <span>满799减70</span>
                                                        </div>
                                                        <div class="couponsLead">
                                                            <i></i>
                                                            <span>满599减50</span>
                                                        </div>
                                                        <div class="couponsLead">
                                                            <i></i>
                                                            <span>满399减30</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="cityBox">
                                                    <div class="infoTit">配送到</div>
                                                </div>
                                                <div class="chooseBox clearfix">
                                                    <div class="infoTit">选&nbsp;&nbsp;&nbsp;择</div>
                                                    <div class="infoChoose">
                                                        <ul class="clearfix">
                                                            <li class="choItem">
                                                                <a href="javascript:;" class="chooseclick">
                                                                    <span>${obj.title}</span>
                                                                    <i class="dIcon11"></i>
                                                                </a>
                                                            </li>
                                                            <li class="choItem">
                                                                <a href="javascript:;" class="chooseclick">
                                                                    <span>${obj.title}（双瓶装）</span>
                                                                    <i class="dIcon11"></i>
                                                                </a>
                                                            </li>
                                                            <li class="choItem">
                                                                <a href="javascript:;" class="chooseclick">
                                                                    <span>${obj.title}（6瓶装）</span>
                                                                    <i class="dIcon11"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="bayNumBox">
                                                    <div class="infoTit">数 &nbsp;&nbsp;量</div>
                                                    <div class="infoBuyNum">
                                                        <div class="buyNum">
                                                            <input type="text" id="_nub" value="1">
                                                            <a href="javascript:;" class="buyNum_add"></a>
                                                            <a href="javascript:;" class="buyNum_reduce"></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="bayBtnBox">
                                                    <div class="infoBuy">
                                                        <a href="javascript:;" id="goCart">加入购物车</a>
                                                    </div>
                                                </div>
                                            </div>`
                }

            }
        })
    }
    init();


    
    var welcome = document.getElementsByClassName('welcome')[0];
    var headerlog = document.getElementById('headerlog');
    var headerreg = document.getElementById('headerreg');
    var jinbi = document.getElementById('jinbi');
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
    }




})