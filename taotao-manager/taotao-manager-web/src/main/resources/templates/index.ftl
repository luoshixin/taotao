
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <title>淘淘后台首页</title>

    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="../static/adminlte/plugins/font-awesome/css/font-awesome.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../static/adminlte/dist/css/adminlte.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">

    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand bg-white navbar-light border-bottom">
        <ul class="navbar-nav">

            <li class="nav-item d-none d-sm-inline-block">
                首页
            </li>

        </ul>
    </nav>


    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
        <!-- Sidebar -->
        <div class="sidebar">
            <!-- Sidebar user panel (optional) -->
            <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                <div class="info">
                    <a href="#" class="d-block">菜单</a>
                </div>
            </div>

            <!-- Sidebar Menu -->
            <nav class="mt-2">
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

                    <#-- 商品管理 start-->
                    <li class="nav-item has-treeview">
                        <a href="#" class="nav-link">
                            <i class="nav-icon fa fa-tree"></i>
                            <p>
                                商品管理
                                <i class="fa fa-angle-left right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">

                            <li class="nav-item">
                                <a href="${request.contextPath}/page/goods-query" class="nav-link">
                                    <i class="fa fa-circle-o nav-icon"></i>
                                    <p>查询商品</p>
                                </a>
                            </li>

                            <li class="nav-item">
                                <a href="${request.contextPath}/page/goods-add" class="nav-link">
                                    <i class="fa fa-circle-o nav-icon"></i>
                                    <p>新增商品</p>
                                </a>
                            </li>

                            <li class="nav-item">
                                <a href="pages/UI/buttons.html" class="nav-link">
                                    <i class="fa fa-circle-o nav-icon"></i>
                                    <p>规格参数</p>
                                </a>
                            </li>

                        </ul>
                    </li>
                    <#-- 商品管理 end-->

                    <#-- 网站内容管理 start-->
                    <li class="nav-item has-treeview">
                        <a href="#" class="nav-link">
                            <i class="nav-icon fa fa-tree"></i>
                            <p>
                                网站内容管理
                                <i class="fa fa-angle-left right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="pages/UI/general.html" class="nav-link">
                                    <i class="fa fa-circle-o nav-icon"></i>
                                    <p>内容分类管理</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="pages/UI/icons.html" class="nav-link">
                                    <i class="fa fa-circle-o nav-icon"></i>
                                    <p>内容管理</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <#-- 网站内容管理 end-->

                </ul>
            </nav>
            <!-- /.sidebar-menu -->
        </div>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
    </div>
    <!-- /.content-wrapper -->

    <#--<!-- Control Sidebar &ndash;&gt;-->
    <#--<aside class="control-sidebar control-sidebar-dark">-->

    <#--</aside>-->
    <#--<!-- /.control-sidebar &ndash;&gt;-->

    <#--<!-- Main Footer &ndash;&gt;-->
    <#--<footer class="main-footer">-->

    <#--</footer>-->
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="../static/adminlte/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../static/adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../static/adminlte/dist/js/adminlte.min.js"></script>
</body>
</html>
