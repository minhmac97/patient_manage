<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<section class="container">
    <section class="login-form">
        <form role="login">
            <img src="/static/images/icon/haui.png" class="img-responsive" alt="" style="height: 65px;width: 325px;margin-bottom: 10px;"/>
            <input type="text" name="username" id="username" placeholder="Tên đăng nhập..." class="form-control input-lg" autofocus autocomplete="off"/>
            <input type="password" name="password" id="password" placeholder="Mật khẩu..."  class="form-control input-lg" autocomplete="off"/>
            <a href="javascript:void(0);" id="btnLogin" class="btn-lg btn-primary btn-block btn" onclick="loginForm.submit()">Đăng nhập</a>
            <div>
                <a href="https://www.haui.edu.vn" target="_blank">https://www.haui.edu.vn</a>
            </div>
        </form>
    </section>
    <script>
        var loginForm = {
            submit: function () {
                var nickname = $("#username").val();
                var password = $("#password").val();
                if (!nickname || !password || nickname.trim() == "") {
                    alertSmallBoxTitle("Vui lòng nhập đầy đủ tên đăng nhập và mật khẩu!", "error");
                    return;
                };
                AJAXFunction.CallAjax("POST", "/service/admin/login","", {
                    nicknameOrEmail: nickname,
                    password: password
                }, function (data) {
                    $("body").removeClass("loading");
                    if (data.success) {
                        alertSmallBoxTitle("Đăng nhập thành công!",success);
                        setTimeout(function () {
                            location.href = "/admin/device"
                        },500)
                    }else {
                        alertSmallBoxTitle(data.message, "error");
                    }
                }, function (error) {
                    alertSmallBoxTitle("Email/tên đăng nhập hoặc mật khẩu không đúng. Vui lòng nhập lại.","error");
                });
            },
        }
        $(document).keyup(function(e) {
            if (e.keyCode == 13) {
                loginForm.submit();
            }
        });
    </script>
</section>
