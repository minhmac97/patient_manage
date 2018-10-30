<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>IsofH | <tiles:insertAttribute name="title" ignore="true"/></title>
    <link rel="shortcut icon" href="/static/images/logo/logo_isofh.png" type="image/x-icon">
    <!-- Bootstrap -->
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/static/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/static/css/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="/static/css/flat/green.css" rel="stylesheet">
    <!-- Datatables -->
    <link href="/static/css/table/dataTables.bootstrap.css" rel="stylesheet">
    <link href="/static/css/table/buttons.bootstrap.css" rel="stylesheet">
    <link href="/static/css/table/fixedHeader.bootstrap.css" rel="stylesheet">
    <link href="/static/css/table/responsive.bootstrap.css" rel="stylesheet">
    <link href="/static/css/table/scroller.bootstrap.css" rel="stylesheet">
    <!--jquery-ui-date-css-->
    <link href="/static/css/jquerydate/jquery-ui-1.10.1.css" rel="stylesheet">
    <link href="/static/css/jquerydate/latoja.datepicker.css" rel="stylesheet">
    <!-- notify style -->
    <link href="/static/css/notify/pnotify.css" rel="stylesheet">
    <link href="/static/css/notify/pnotify.buttons.css" rel="stylesheet">
    <!-- select2 style -->
    <link href="/static/css/select2/select2.min.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="/static/css/custom.css" rel="stylesheet">
    <!-- style css -->
    <link href="/static/css/style.css" rel="stylesheet">
    <link href="/static/css/loading.css" rel="stylesheet">
    <!--jquery-confirm-->
    <link href="/static/css/confirm/jquery-confirm.min.css" rel="stylesheet">
    <!-- jQuery -->
    <script src="/static/jquery/jquery.min.js"></script>
    <script src="/static/jquery/year-select.js"></script>
    <!-- Bootstrap -->
    <script src="/static/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="/static/js/fastclick.js"></script>
    <!-- NProgress -->
    <script src="/static/js/nprogress.js"></script>
    <!-- iCheck -->
    <script src="/static/js/icheck.min.js"></script>
    <!-- js-datepicker -->
    <script src="/static/jquery/jquery-ui.js"></script>
    <script src="/static/jquery/jquery.ui.datepicker-vi-VN.js"></script>
    <!-- jquery-confirm -->
    <script src="/static/jquery/confirm/jquery-confirm.min.js"></script>
    <script src="/static/jquery/confirm/confirm-dialog.js"></script>
    <!-- jquery-select2 -->
    <script src="/static/js/select2/select2.min.js"></script>
    <!-- js-download -->
    <script src="/static/js/download/download-images.js"></script>
    <!-- js-qrcode -->
    <script src="/static/js/qrcode/custom-qrcode.js"></script>
    <!-- js-htmlCanvas -->
    <script src="/static/js/htmlCanvas2/html2canvas.min.js"></script>
    <!-- jquery-notify -->
    <script src="/static/js/notify/pnotify.js"></script>
    <script src="/static/js/notify/pnotify.buttons.js"></script>
    <script src="/static/js/notify/alertSmallBox.js"></script>
    <!-- js-zipfile -->
    <script src="/static/js/zipfile/jszip.js"></script>
    <script src="/static/js/zipfile/jszip-utils.js"></script>
    <script src="/static/js/zipfile/FileSaver.js"></script>
    <!-- jquery-validate -->
    <script src="/static/jquery/jquery.validate.min.js" type="text/javascript"></script>
    <script src="/static/js/mlmodule/ml.checkdate.v1.5.js" type="text/javascript"></script>
    <script src="/static/js/mlmodule/ml.validate.v1.0.js" type="text/javascript"></script>
    <!--angularjs-->
    <script src="/static/angularjs/angular.min.js" type="text/javascript"></script>
    <script src="/static/angularjs/angular-sanitize.js" type="text/javascript"></script>
    <script src="/static/angularjs/angular-validate.min.js" type="text/javascript"></script>
    <script src="/static/js/select2/ui.select2.js"></script>
    <script src="/static/angularjs/app.js" type="application/javascript"></script>
    <script src="/static/angularjs/rating.js" type="text/javascript"></script>
    <script src="/static/js/mlmodule/mllibrary.js" type="text/javascript"></script>
    <script src="/static/js/md5/md5.js" type="text/javascript"></script>
    <%--Java--%>
    <c:set var="isLogin" scope="session" value="${UserInfo.isLogin()}"/>
    <c:set var="isAdmin" scope="session" value="${UserInfo.isAdmin()}"/>
    <c:set var="currentUser" scope="session" value="${UserInfo.getCurrentUser()}"/>
    <c:set var="nameUser" scope="session" value="${UserInfo.getUserName()}"/>
</head>
<body class="nav-md" ng-app="manageAdminApp" ng-cloak>
<div class="container body">
    <div class="main_container">
        <!-- menu left -->
        <jsp:include page="../layout/defaultMenuLeft.jsp"/>
        <!-- /menu left -->
        <!-- top navigation -->
        <jsp:include page="../layout/defaultHeader.jsp"/>
        <!-- /top navigation -->
        <!-- page content -->
        <tiles:insertAttribute name="bodyContent"/>
        <!-- /page content -->
        <!-- footer content -->
        <jsp:include page="../layout/defaultFooter.jsp"/>
        <!-- /footer content -->
    </div>
</div>
<!-- Custom Theme Scripts -->
<script src="/static/js/custom.js"></script>
</body>
<div class="modalloading">
    <div style="margin: auto auto">
        <img src="/static/images/icon/loading.gif" style="width: 80px;"/><br/>
        Đang xử lý
    </div>
</div>
</html>