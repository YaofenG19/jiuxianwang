$(function(){
    $.ajax({
        type: 'get',
        url: '../api/list.php',
        async: true,
        success: function(str){
            // console.log(str);
            var arr = JSON.parse(str);
            // console.log(arr);
            $res = arr.map(function(item){
                return `                <li data-id="${item.id}">
                <div class="sComPic">
                    <img data-src="${item.listImg}" alt="">
                </div>
                <div class="sComIntro">
                    <p class="sTitle"><a href="javascript:;">${item.title}</a></p>
                    <p class="sComempty"></p>
                    <p class="sComPrice">
                        <span>￥<em>${item.price}</em></span>
                        <a href="javascript:;" target="_blank" class="sBayBut">立即抢购</a>
                    </p>
                </div>
            </li>`
            }).join('');
            $('.allLists').html($res);
        }
    })



        $('.returnTop').click(function(){
            var timer = setInterval(function(){
                var scrtop = window.scrollY;
                scrtop = window.scrollY;
                scrtop = 0;
                if(scrtop <= 0){
                    clearInterval(timer);
                    window.scrollTo(0,0);
                }else{
                    window.scrollTo(0,scrtop);
                }
            })
        })
    
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


        var allLists = document.getElementsByClassName('allLists');

        allLists[0].onclick = function(ev){
            target = ev.target;
            if(target.tagName == 'IMG'){
                var par = target.parentNode.parentNode.getAttribute("data-id");
                location.href = '../html/details.html?guid=' + par;
            }else if(target.tagName == 'P'){
                var par = target.parentNode.parentNode.getAttribute("data-id");
                location.href = '../html/details.html?guid=' + par;
            }
        }

})