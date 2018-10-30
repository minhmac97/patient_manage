<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: MinhMac-PC
  Date: 8/2/2018
  Time: 11:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="col-md-3 left_col">
    <div class="left_col scroll-view" ng-controller="menuController">
        <div class="nav_title" style="border: 0;text-align: center;height: 0;">
        </div>
        <div class="clearfix"></div>
        <%--<br/>--%>
        <div class="profile clearfix">
            <div class="profile_pic">
                <img ng-src="{{user.avartar?user.avartar.absoluteUrl('/static/images/icon/user.png'):'/static/images/icon/user.png'}}"  class="img-circle profile_img">
            </div>
            <div class="profile_info">
                <span>Welcome,</span>
                <h2>{{user.name}}</h2>
            </div>
        </div>
        <br/>
        <!-- sidebar menu -->
        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
            <div class="menu_section">
                <h3>Quản lý</h3>
                <ul class="nav side-menu">
                    <c:if test="${isAdmin}">
                        <li>
                        <a href="/admin/account"><i class="fa fa-group"></i>Tài khoản</a>
                    </li>
                    </c:if>
                    <c:if test="${isAdmin}">
                        <li>
                        <a href="/admin/facility"><i class="fa fa-hospital-o"></i>Cơ sở y tế</a>
                    </li>
                    </c:if>
                    <%--<c:if test="${isAdmin}">--%>
                    <li>
                        <a href="/admin/type-device"><i class="fa fa-stethoscope"></i>Loại thiết bị</a>
                    </li>
                    <%--</c:if>--%>
                    <li>
                        <a><i class="fa fa-medkit"></i>Trang thiết bị
                        <span class="fa fa-chevron-down"></span></a>
                            <ul class="nav child_menu">
                                <li><a href="/admin/device">Danh sách thiết bị</a></li>
                                <%--<c:if test="${isAdmin}">--%>
                                <li><a href="/admin/manufacturer">Hãng sản xuất</a></li>
                                <%--</c:if>--%>
                                <c:if test="${isAdmin}">
                                    <li><a href="/admin/resource">Nguồn vốn</a></li>
                                </c:if>
                        </ul>
                    </li>
                    <c:if test="${isAdmin}">
                        <li><a href="/admin/supplier"><i class="fa fa-tasks"></i>Đơn vị cung cấp</a></li>
                    </c:if>
                    <c:if test="${!isAdmin}">
                        <li><a href="/admin/supplier-of-facility"><i class="fa fa-tasks"></i>Đơn vị cung cấp</a></li>
                    </c:if>
                    <%--<c:if test="${isAdmin}">--%>
                    <li>
                        <a><i class="fa fa-tags"></i>Tên thương mại
                                <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li>
                                <a href="/admin/commercial-name">Tên thương mại</a>
                            </li>
                            <li>
                                <a>Danh mục tên<span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu">
                                        <li class="sub_menu"><a href="/admin/base-name">Tên gốc</a></li>
                                        <li><a href="/admin/sub-name">Tên phụ trợ</a></li>
                                    </ul>
                            </li>
                        </ul>
                    </li>
                    <%--</c:if>--%>
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
        ngApp.controller('menuController', function ($scope, $http) {
            $scope.user=${currentUser};
        });
    </script>
</div>
