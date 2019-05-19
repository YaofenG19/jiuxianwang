$(function(){
    $('.headNav').mouseenter(function(){
        $('.jx_pop').css('display','block');
    })
    $('.headNav').mouseleave(function(){
        $('.jx_pop').css('display','none');
    })


    //图片验证
    var show_num = [];
    draw(show_num);

    $("#canvas").on('click',function(){
        draw(show_num);
    })
    
    // 验证
    var userName = document.getElementById('userName');
    var password = document.getElementById('password');
    var verification = document.getElementById('verification');
    var mistakeTip = document.getElementsByClassName('mistakeTip');
    var loyzm = document.getElementsByClassName('loyzm');
    var save = document.getElementById('save');

    for(var i = 0; i < loyzm.length; i++){
        loyzm[i].index = i;
    }

    userName.onblur = function(){
        if(userName.value == ''){
            mistakeTip[0].style.display = 'block';
        }
    }
    userName.onfocus = function(){
        mistakeTip[0].style.display = 'none';
    }

    password.onblur = function(){
        if(password.value == ''){
            mistakeTip[1].style.display = 'block';
        }
    }
    password.onfocus = function(){
        mistakeTip[1].style.display = 'none';
    }

    verification.onfocus = function(){
        mistakeTip[2].style.display = 'none';
    }
        // 验证码验证
        verification.onblur = function(){
            var val = $("#verification").val().toLowerCase();
            var num = show_num.join("");
            if(val==''){
                mistakeTip[2].style.display = 'block';
            }else if(val == num){
                loyzm[this.index].isok = true;
            }
        }
            // 点击提交
    function checkall() {
        var istrue = true;
        for (var i = 0; i < loyzm.length; i++) {
            if (!loyzm[i].isok) {
                istrue = false;
            }
        }
        return istrue;
    }

    save.onclick = function(){
        // if(checkall()){

        // }
        if(getCookie('username')){
            alert('请先退出账户');
        }else{
            ajax2({
                type: 'post',
                url: '../api/login.php',
                data: 'username=' + userName.value + '&password=' + password.value,
                success: function(str){
                    console.log(str);
                    if(str == 'yes'){
                        location.href = '../page.html';
                        setCookie('username',userName.value,7);
                    }
                }
            })
        }

    }

})




//生成并渲染出验证码图形
function draw(show_num) {
    var canvas_width=$('#canvas').width();
    var canvas_height=$('#canvas').height();
    var canvas = document.getElementById("canvas");//获取到canvas的对象，演员
    var context = canvas.getContext("2d");//获取到canvas画图的环境，演员表演的舞台
    canvas.width = canvas_width;
    canvas.height = canvas_height;
    var sCode = "a,b,c,d,e,f,g,h,i,j,k,m,n,p,q,r,s,t,u,v,w,x,y,z,A,B,C,E,F,G,H,J,K,L,M,N,P,Q,R,S,T,W,X,Y,Z,1,2,3,4,5,6,7,8,9,0";
    var aCode = sCode.split(",");
    var aLength = aCode.length;//获取到数组的长度
    
    for (var i = 0; i < 4; i++) {  //这里的for循环可以控制验证码位数（如果想显示6位数，4改成6即可）
        var j = Math.floor(Math.random() * aLength);//获取到随机的索引值
        // var deg = Math.random() * 30 * Math.PI / 180;//产生0~30之间的随机弧度
        var deg = Math.random() - 0.5; //产生一个随机弧度
        var txt = aCode[j];//得到随机的一个内容
        show_num[i] = txt.toLowerCase();
        var x = 10 + i * 15;//文字在canvas上的x坐标
        var y = 20 + Math.random() * 8;//文字在canvas上的y坐标
        context.font = "bold 23px 微软雅黑";
        // context.color = "blue";

        context.translate(x, y);
        context.rotate(deg);

        context.fillStyle = 'blue';
        context.fillText(txt, 0, 0);

        context.rotate(-deg);
        context.translate(-x, -y);
    }
}


