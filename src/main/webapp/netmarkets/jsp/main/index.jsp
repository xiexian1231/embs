<%@ page language="java" contentType="text/html; utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>EMBS | 主页</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
        <link href="/embs/ui/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="/embs/ui/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
        <link href="/embs/ui/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="/embs/ui/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
        <link href="/embs/ui/plugins/morris/morris.css" rel="stylesheet" type="text/css" />
        <link href="/embs/ui/plugins/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
        <link href="/embs/ui/plugins/layout/css/layout.min.css" rel="stylesheet" type="text/css" />
        <link href="/embs/ui/plugins/layout/css/themes/darkblue.min.css" rel="stylesheet" type="text/css" id="style_color" />
        <link href="/embs/ui/plugins/layout/css/custom.min.css" rel="stylesheet" type="text/css" />
        <link href="/embs/ui/plugins/jquery-confirm/css/jquery-confirm.css" rel="stylesheet" type="text/css" />
        <link rel="shortcut icon" href="favicon.ico" /> </head>

    <body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white">
        <div class="page-wrapper">
            <!-- BEGIN HEADER -->
            <div class="page-header navbar navbar-fixed-top">
                <!-- BEGIN HEADER INNER -->
                <div class="page-header-inner ">
                    <!-- BEGIN LOGO -->
                    <div class="page-logo">
                        <a href="index.jsp">
                            <img src="/embs/ui/plugins/layout/img/logo.png" alt="logo" class="logo-default" /> </a>
                        <div class="menu-toggler sidebar-toggler">
                            <span></span>
                        </div>
                    </div>
                    <!-- END LOGO -->
                    <!-- BEGIN RESPONSIVE MENU TOGGLER -->
                    <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
                        <span></span>
                    </a>
                    <!-- END RESPONSIVE MENU TOGGLER -->
                    <!-- BEGIN TOP NAVIGATION MENU -->
                    <div class="top-menu">
                        <ul class="nav navbar-nav pull-right">
                            <li class="dropdown dropdown-user">
                                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                    <i class="icon-user"></i>
                                    <span id="primaryName" class="username username-hide-on-mobile"> ${sessionScope.user.account } </span>
                                    <i class="fa fa-angle-down"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-default">
                                    <li>
                                        <a href="#" id="changePassword">
                                            <i class="fa fa-check-square-o"></i> 修改密码</a>
                                    </li>
                                    <li>
                                        <a href="#" id="logout">
                                            <i class="icon-key"></i> 退出 </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <!-- END TOP NAVIGATION MENU -->
                </div>
                <!-- END HEADER INNER -->
            </div>
            <!-- END HEADER -->
            <!-- BEGIN HEADER & CONTENT DIVIDER -->
            <div class="clearfix"> </div>
            <!-- END HEADER & CONTENT DIVIDER -->
            <!-- BEGIN CONTAINER -->
            <div class="page-container">
                <!-- BEGIN SIDEBAR -->
                <div class="page-sidebar-wrapper">
                    <!-- BEGIN SIDEBAR -->
                    <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
                    <!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
                    <div class="page-sidebar navbar-collapse collapse">
                        <!-- BEGIN SIDEBAR MENU -->
                        <ul class="page-sidebar-menu  page-header-fixed " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200" style="padding-top: 20px">
                            <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                            <!-- END SIDEBAR TOGGLER BUTTON -->
                            <!-- DOC: To remove the search box from the sidebar you just need to completely remove the below "sidebar-search-wrapper" LI element -->
                            <li class="nav-item start active open">
                                <a href="javascript:;" class="nav-link nav-toggle">
                                    <i class="icon-rocket"></i>
                                    <span class="title">欢迎</span>
                                    <span class="arrow"></span>
                                </a>
                            </li>
                            <li class="nav-item  ">
                                <a href="javascript:;" class="nav-link nav-toggle">
                                    <i class="icon-user"></i>
                                    <span class="title">用户</span>
                                    <span class="arrow"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li class="nav-item  ">
                                        <a href="page_user_profile_2.html" class="nav-link ">
                                            <i class="icon-users"></i>
                                            <span class="title">用户管理</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item  ">
                                <a href="javascript:;" class="nav-link nav-toggle">
                                    <i class="icon-settings"></i>
                                    <span class="title">设置</span>
                                    <span class="arrow"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li class="nav-item  ">
                                        <a href="page_cookie_consent_1.html" class="nav-link ">
                                        	<i class="icon-link"></i>
                                            <span class="title">MCC|TDMS连接管理</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <!-- END SIDEBAR MENU -->
                        <!-- END SIDEBAR MENU -->
                    </div>
                    <!-- END SIDEBAR -->
                </div>
                <!-- END SIDEBAR -->
                <!-- BEGIN CONTENT -->
                <div class="page-content-wrapper">
                    <!-- BEGIN CONTENT BODY -->
                    <div class="page-content">
                        <!-- BEGIN PAGE BAR -->
                        <div class="page-bar">
                            <ul class="page-breadcrumb">
                                <li>
                                    <a href="index.jsp">主页</a>
                                    <i class="fa fa-circle"></i>
                                </li>
                                <li>
                                    <span>欢迎</span>
                                </li>
                            </ul>
                        </div>
                       
                        <h1 class="page-title"> 快速访问   </h1>
                        
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <a class="dashboard-stat dashboard-stat-v2 blue" href="#">
                                    <div class="visual">
                                        <i class="fa fa-comments"></i>
                                    </div>
                                    <div class="details">
                                        <div class="desc" style="margin-top: 25px;">
                                            <span style="font-size: 20px;">用户管理</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <a class="dashboard-stat dashboard-stat-v2 purple" href="#">
                                    <div class="visual">
                                        <i class="fa fa-globe"></i>
                                    </div>
                                    <div class="details">
                                        <div class="desc" style="margin-top: 25px;"> 
                                        	<span style="font-size: 20px;">MCC|TDMS连接管理</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <!-- END DASHBOARD STATS 1-->
                        <div class="row">
                            <div class="col-md-6">
                                <div class="portlet light bordered">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="icon-settings font-green-sunglo"></i>
                                            <span class="caption-subject bold font-dark uppercase"> MCC连接设置 </span>
                                        </div>
                                        <div class="actions">
                                            <div class="btn-group">
                                                <a class="btn blue btn-outline btn-circle btn-sm" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true"> 操作
                                                    <i class="fa fa-angle-down"></i>
                                                </a>
                                                <ul class="dropdown-menu pull-right">
                                                    <li>
                                                        <a href="javascript:;"> Action 1</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">Action 2</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">Action 3</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">Action 4</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="portlet-body form">
                                        <form role="form" action="javascript:;"> 
                                        	<div class="form-body">
                                        		<div class="form-group">
                                        			<label>IP地址</label>
                                        			<input type="text" class="form-control" placeholder="IP地址">
                                        		</div>
                                        		<div class="form-group">
                                        			<label>端口</label>
                                        			<input type="text" class="form-control" placeholder="端口号">
                                        		</div>
                                        		<div class="form-group">
                                        			<label>账号</label>
                                        			<input type="text" class="form-control" placeholder="账号">
                                        		</div>
                                        		<div class="form-group">
                                        			<label>密码</label>
                                        			<input type="password" class="form-control" placeholder="密码">
                                        		</div>
                                        	</div>
                                        	<div class="form-actions right">
                                        		<button type="submit" class="btn blue">提交</button>
                                        		<button type="button" class="btn default">取消</button>
                                        	</div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="portlet light bordered">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="icon-settings font-green-sunglo"></i>
                                            <span class="caption-subject bold font-dark uppercase"> TDMS连接设置</span>
                                        </div>
                                        <div class="actions">
                                            <div class="btn-group">
                                                <a class="btn blue btn-outline btn-circle btn-sm" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true"> 操作
                                                    <i class="fa fa-angle-down"></i>
                                                </a>
                                                <ul class="dropdown-menu pull-right">
                                                    <li>
                                                        <a href="javascript:;"> Action 1</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">Action 2</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">Action 3</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">Action 4</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="portlet-body form">
                                        <form role="form" action="javascript:;">
                                        	<div class="form-body">
                                        		<div class="form-group">
                                        			<label>IP地址</label>
                                        			<input type="text" class="form-control" placeholder="IP地址">
                                        		</div>
                                        		<div class="form-group">
                                        			<label>端口</label>
                                        			<input type="text" class="form-control" placeholder="端口号">
                                        		</div>
                                        		<div class="form-group">
                                        			<label>账号</label>
                                        			<input type="text" class="form-control" placeholder="账号">
                                        		</div>
                                        		<div class="form-group">
                                        			<label>密码</label>
                                        			<input type="password" class="form-control" placeholder="密码">
                                        		</div>
                                        	</div>
                                        	<div class="form-actions right">
                                        		<button type="submit" class="btn blue">提交</button>
                                        		<button type="button" class="btn default">取消</button>
                                        	</div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END CONTENT BODY -->
                </div>
                <!-- END CONTENT -->
            </div>
            <!-- END CONTAINER -->
            <!-- BEGIN FOOTER -->
            <div class="page-footer">
                <div class="page-footer-inner"> 2017 &copy; 
                    <a target="_blank" href="http://www.megalinkware.com/" style="text-decoration: none;color: rgba(192, 189, 189, 0.7);">上海美嘉林软件科技股份有限公司</a>
                </div>
                <div class="scroll-to-top">
                    <i class="icon-arrow-up"></i>
                </div>
            </div>
            <!-- END FOOTER -->
        </div>
        
        <script src="/embs/ui/js/jquery-1.9.1.min.js" type="text/javascript"></script>
        <script src="/embs/ui/js/index.js" type="text/javascript"></script>
        <script src="/embs/ui/plugins/jquery-confirm/js/jquery-confirm.js" type="text/javascript"></script>
        <script src="/embs/ui/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="/embs/ui/plugins/js/js.cookie.min.js" type="text/javascript"></script>
        <script src="/embs/ui/plugins/js/jquery.blockui.min.js" type="text/javascript"></script>
        <script src="/embs/ui/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
        <script src="/embs/ui/plugins/bootstrap-daterangepicker/daterangepicker.min.js" type="text/javascript"></script>
        <script src="/embs/ui/plugins/morris/morris.min.js" type="text/javascript"></script>
        <script src="/embs/ui/plugins/morris/raphael-min.js" type="text/javascript"></script>
        <script src="/embs/ui/plugins/js/app.min.js" type="text/javascript"></script>
        <script src="/embs/ui/plugins/layout/scripts/layout.min.js" type="text/javascript"></script>
        
    </body>

</html>
