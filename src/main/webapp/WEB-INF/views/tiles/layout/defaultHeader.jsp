<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="top_nav">
    <div class="nav_menu">
        <nav>
            <div class="nav toggle">
                <a id="menu_toggle" href="javascript:void(0)"><i class="fa fa-bars"></i></a>
            </div>
            <div style="display: inline;">
                <img src="/static/images/icon/haui.png" style="width: 255px;height: 45px;margin-top: 5px;"/>
            </div>
            <ul class="nav navbar-nav navbar-right">
                <li class="">
                    <a href="javascript:void(0);" class="user-profile dropdown-toggle" data-toggle="dropdown"
                       aria-expanded="false">
                        <i class="fa fa-circle" style="color: rgb(66, 183, 42)"></i>
                        BS. YẾN
                        <i class="fa fa-chevron-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-usermenu pull-right">
                        <li><a href="/admin/change-password"><i class="fa fa-exchange pull-right"></i>Đổi mật khẩu</a></li>
                        <li><a href="/logout"><i class="fa fa-sign-out pull-right"></i>Đăng xuất</a></li>
                    </ul>
                </li>
            </ul>

        </nav>
    </div>
</div>
