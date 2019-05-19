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
    


    //验证 
    var regInputs = document.getElementsByClassName('regInput');
    var regTrue = document.getElementsByClassName('regTrue');
    var regFalse = document.getElementsByClassName('regFalse');
    var poiFalse = document.getElementsByClassName('poiFalse');
    var poisr = document.getElementsByClassName('poisr');
    var strength = document.getElementsByClassName('strength');
    var regBtn = document.getElementById('regBtn');
    for(var i = 0; i < regInputs.length; i++){
        regInputs[i].index = i;
    }

    //账户验证
    regInputs[0].onfocus = function(){
        poisr[0].style.display = 'block';
        poiFalse[0].style.display = 'none';
        regFalse[0].style.display = 'none'; 
    }
    regInputs[0].onblur = function(){
        var phone = regInputs[0].value.trim();
        if(phone){
            var res = checkReg.phone(phone);
            if(res){
                regInputs[this.index].isok = true;
                regTrue[0].style.display = 'block';
                regFalse[0].style.display = 'none';
                poiFalse[0].style.display = 'none';
                poisr[0].style.display = ' none';
            }else{
                // inputs[this.index].isok = true;
                regFalse[0].style.display = 'block';
                regTrue[0].style.display = 'none';
                poiFalse[0].style.display = 'block';
            }
        }else{
            poiFalse[0].style.display = 'block';
        }
        ajax2({
            type: 'post',
            url: '../api/checkname.php',
            data: 'username=' + regInputs[0].value,
            success: function(str){
                console.log(str)
                if(str == 'no'){
                    poiFalse[0].innerHTML = '该手机号码已经注册';
                    poiFalse[0].style.display = 'block';
                    poisr[0].style.display = 'none';
                }if(str == 'yes'){
                    poiFalse[0].style.display = 'none';
                }
            }
        })


    }
    
    // 验证码验证
    regInputs[1].onblur = function(){
        var val = $(".yzm").val().toLowerCase();
        var num = show_num.join("");
        if(val==''){
            poiFalse[1].style.display = 'block';
        }else if(val == num){
            regInputs[this.index].isok = true;
            regTrue[1].style.display = 'block';
            regFalse[1].style.display = 'none';
        }else{
            regFalse[1].style.display = 'block';
            regTrue[1].style.display = 'none';
        }

    }
    regInputs[1].onfocus = function(){
        regTrue[1].style.display = 'none';
        regFalse[1].style.display = 'none';
        poiFalse[1].style.display = 'none';
    }
    // 短信验证码
    regInputs[2].onfocus = function(){
        regInputs[this.index].isok = true;
    }

    // 密码强度验证
    function getLv(txt){
        var lv = 0;
        if (/[0-9]/.test(txt)) {
            lv++;
        }
        if (/[a-zA-Z]/.test(txt)) {
            lv++;
        }
        if (/[^0-9a-zA-Z_]/.test(txt)) {
            lv++;
        }
        return lv;
    }
    regInputs[3].onkeyup = function(){
        // document.querySelector('#strengthLevel').className = "strengthLv" + (this.value.length <8 ? 0:getLv(this.value));
        // poisr[1].style.display = 'block';
        if(getLv(this.value) == 1 && regInputs[3].value.length >7){
            strength[0].style.display = 'block';
            strength[1].style.display = 'none';
            strength[2].style.display = 'none';
        }else{
            strength[0].style.display = 'none';
        }
        if(getLv(this.value) == 2 && regInputs[3].value.length >7){
            strength[0].style.display = 'none';
            strength[1].style.display = 'block';
            strength[2].style.display = 'none';
        }else{
            strength[1].style.display = 'none';
        }
        if(getLv(this.value) == 3 && regInputs[3].value.length >7){
            strength[0].style.display = 'none';
            strength[1].style.display = 'none';
            strength[2].style.display = 'block';
        }else{
            strength[2].style.display = 'none';
        }

    }
    regInputs[3].onblur = function(){
        poisr[1].style.display = 'none';
        if(regInputs[3].value.length < 7){
            regFalse[3].style.display = 'block';
            regTrue[3].style.display = 'none';
        }else{
            regFalse[3].style.display = 'none';
            regTrue[3].style.display = 'block';
            regInputs[this.index].isok = true;
        }
        
    }
    regInputs[3].onfocus = function(){
        regTrue[3].style.display = 'none';
        regFalse[3].style.display = 'none';
        poisr[1].style.display = 'block';
    }


    // 确认密码
    regInputs[4].onblur = function(){
        poiFalse[2].style.display = 'none';
        if(regInputs[3].value == regInputs[4].value && regInputs[4].value != ''){
            regFalse[4].style.display = 'none';
            regTrue[4].style.display = 'block';
            regInputs[this.index].isok = true;
        }else{
            regFalse[4].style.display = 'block';
            regTrue[4].style.display = 'none';
        }
        if(regInputs[4].value == ''){
            poiFalse[2].style.display = 'block';
        }
    }
    regInputs[4].onfocus = function(){
        regTrue[4].style.display = 'none';
        regFalse[4].style.display = 'none';
        poiFalse[2].style.display = 'none';
    }
    // 点击提交
    function checkall() {
        var istrue = true;
        for (var i = 0; i < regInputs.length - 2; i++) {
            if (!regInputs[i].isok) {
                istrue = false;
            }
        }
        return istrue;
    }


    regBtn.onclick = function(){
        if(checkall()){
            ajax2({
                type: 'post',
                url: '../api/reg.php',
                data: 'username=' + regInputs[0].value + '&password=' + regInputs[3].value,
                success: function(str){
                    if(str == 'yes'){
                        location.href = 'login.html'; 
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


