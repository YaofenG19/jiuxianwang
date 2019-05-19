var checkReg = {
    zhanghao: function (str) {
        var reg = /^[a-zA-Z0-9]{6,20}$/;
        return reg.test(str);
    },
    nicheng: function (str) {
        var reg = /[\u4E00-\u9FA5\uF900-\uFA2Da-zA-Z0-9]{2,8}/;
        return reg.test(str);
    },
    mail: function (str) {
        var reg = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
        return reg.test(str);
    },
    idcard: function (str) {
        var reg = /^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/;
        return reg.test(str);
    },
    phone:function(str){
        var reg = /^1[34578]\d{9}$/;;
        return reg.test(str);
    },
    birth:function(str){
        var reg = /^[1-2][0-9]{3}-[0-1][0-9]-[0-3][0-9]$/;
        return reg.test(str);
    },
    psd:function(str){
        var reg = /^[a-zA-Z0-9]{6,16}$/;
        return reg.test(str);
    },
    samepsd:function(str){
        var reg = /^[a-zA-Z0-9]{6,16}$/;
        return reg.test(str);
    },
}
