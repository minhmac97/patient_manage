String.prototype.isEmail = function () {
    // var re =/^[^<>()[\]\\,;:\%#^\s@\"$&!@]+@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z0-9]+\.)+[a-zA-Z]{2,}))$/
    var re =/^[^<>()[\]\\,;:\%#^\s@\"$&!@]+@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z0-9]+\.)+[a-zA-Z]{2,}))$/
    return re.test(this.toLowerCase());
}
String.prototype.isNickname = function () {
    var re = /^([a-zA-Z0-9_]){6,}$/g;
    return re.test(this.toLowerCase());
}
String.prototype.isFullName = function () {
    var re = /[0-9~!@#$%^&*()+\-_=\[\]{};':"\\|,.<>\/?]/;
    return !re.test(this);
}
String.prototype.isPhoneNumber = function () {
    var re = /^\+?([0-9]{2})\)?[-. ]?([0-9]{4})[-. ]?([0-9]{4})$/;
    return re.test(this);
};
