<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="col-md-3 left_col">
    <div class="left_col scroll-view" ng-controller="menuController">
        <div class="nav_title" style="border: 0;text-align: center;height: 0;">
        </div>
        <div class="clearfix"></div>
        <%--<br/>--%>
        <div class="profile clearfix">
            <div class="profile_pic">
                <img src="/static/images/icon/user.png" class="img-circle profile_img">
            </div>
            <div class="profile_info">
                <span>Welcome,</span>
                <h2>BS. YẾN</h2>
            </div>
        </div>
        <br/>
        <!-- sidebar menu -->
        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
            <div class="menu_section">
                <h3>Quản lý</h3>
                <ul class="nav side-menu">
                    <li>
                        <a href="/admin/list-account-hospital"><i class="fa fa-group"></i>Tài khoản</a>
                    </li>
                    <li>
                        <a href="/admin/list-profile-hospital"><i class="fa fa-clipboard"></i>Hồ sơ bệnh nhân</a>
                    </li>
                    <li>
                        <a href="/admin/list-doctor-hospital"><i class="fa fa-user-md"></i>Danh sách bác sĩ</a>
                    </li>
                    <li>
                        <a href="/admin/list-department-hospital"><i class="fa fa-list-alt"></i>Danh sách khoa</a>
                    </li>
                    <li>
                        <a href="/admin/list-specialist-hospital"><i class="fa fa-list-alt"></i>DS chuyên khoa</a>
                    </li>
                    <%--<li>--%>
                        <%--<a><i class="fa fa-medkit"></i>Trang thiết bị--%>
                        <%--<span class="fa fa-chevron-down"></span></a>--%>
                        <%--<ul class="nav child_menu">--%>
                            <%--<li><a href="/admin/device">Danh sách thiết bị</a></li>--%>
                            <%--<li><a href="/admin/manufacturer">Hãng sản xuất</a></li>--%>
                            <%--<li><a href="/admin/resource">Nguồn vốn</a></li>--%>
                        <%--</ul>--%>
                    <%--</li>--%>
                </ul>
            </div>
            <div class="menu_section">
                <h3>Tiện ích</h3>
                <ul class="nav side-menu">
                    <li>
                        <a><i class="fa fa-bar-chart-o"></i>Thống kê
                            <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="/admin/statistic-device">Thiết bị</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <!-- /sidebar menu -->
        <!-- /menu footer buttons -->
    </div>
    <script>
        <%--ngApp.controller('menuController', function ($scope, $http) {--%>
            <%--$scope.user=${currentUser};--%>
        <%--});--%>
    </script>
</div>
