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

    <title>淘淘后台</title>

    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="../static/adminlte/plugins/font-awesome/css/font-awesome.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../static/adminlte/dist/css/adminlte.min.css">
<#-- 分页 -->
    <link rel="stylesheet" href="../static/cs/pagination/kkpager_orange.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">

<#--<!-- Navbar &ndash;&gt;-->
<#--<nav class="main-header navbar navbar-expand bg-white navbar-light border-bottom">-->
<#--<ul class="navbar-nav">-->

<#--<li class="nav-item d-none d-sm-inline-block">-->
<#--<span>查询商品</span>-->
<#--</li>-->

<#--</ul>-->
<#--</nav>-->

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
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                    data-accordion="false">

                <#-- 商品管理 start-->
                    <li class="nav-item has-treeview menu-open">
                        <a href="#" class="nav-link active">
                            <i class="nav-icon fa fa-tree"></i>
                            <p>
                                商品管理
                                <i class="fa fa-angle-left right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">

                            <li class="nav-item">
                                <a href="#" class="nav-link active">
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

    <!-- 中间内容 start -->
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>查询商品</h1>
                    </div>

                </div>
            </div><!-- /.container-fluid -->
        </section>


        <section class="content">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">商品列表</h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <table class="table table-bordered" id="itemsTable">
                        <tbody>
                        <tr>
                            <th>商品id</th>
                            <th>商品标题</th>
                            <th>叶子类目</th>
                            <th>卖点</th>
                            <th>价格</th>
                            <th>库存数量</th>
                            <th>条形码</th>
                            <th>状态</th>
                            <th>创建日期</th>
                            <th>更新日期</th>
                        </tr>
                        <tr>
                            <td>1.</td>
                            <td>1.</td>
                            <td>1.</td>
                            <td>1.</td>
                            <td>1.</td>
                            <td>1.</td>
                            <td>1.</td>
                            <td>1.</td>
                            <td>1.</td>
                            <td>1.</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- /.card-body -->
                <div class="card-footer clearfix">

                <#-- 页码 start -->
                    <div id="kkpager"/>
                <#-- 页码 end -->
                </div>
        </section>

    </div>
    <!-- 中间内容 end -->

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
<script type="text/javascript" src="../static/js/pagination/kkpager.min.js"></script>

<!-- Bootstrap 4 -->
<script src="../static/adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../static/adminlte/dist/js/adminlte.min.js"></script>
<#--
分页配置
GitHub地址：https://github.com/pgkk/kkpager
使用配置
1、导入配置
<script type="text/javascript" src="../lib/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="../src/kkpager.min.js"></script>
<link rel="stylesheet" type="text/css" href="../src/kkpager_orange.css" />
2、存放页码的父控件
<div id="kkpager"/>
-->
<#-- 分页组件 -->
<script type="text/javascript">

    function initPagination(totalPages) {
        //生成分页
        kkpager.generPageHtml({
            pno: 1, // 默认选择第一页
            total: totalPages,// 总页码
            // totalRecords: totalRecords, //总数据条数
            mode: 'click',//默认值是link，可选link或者click
            click: function (page) {
                // 请求结数据
                findItems(page);
                //手动选中按钮
                this.selectPage(page);

                return false;
            }


            //有些参数是可选的，比如lang，若不传有默认值
            /*
            ,lang				: {
                firstPageText			: '首页',
                firstPageTipText		: '首页',
                lastPageText			: '尾页',
                lastPageTipText			: '尾页',
                prePageText				: '上一页',
                prePageTipText			: '上一页',
                nextPageText			: '下一页',
                nextPageTipText			: '下一页',
                totalPageBeforeText		: '共',
                totalPageAfterText		: '页',
                currPageBeforeText		: '当前第',
                currPageAfterText		: '页',
                totalInfoSplitStr		: '/',
                totalRecordsBeforeText	: '共',
                totalRecordsAfterText	: '条数据',
                gopageBeforeText		: ' 转到',
                gopageButtonOkText		: '确定',
                gopageAfterText			: '页',
                buttonTipBeforeText		: '第',
                buttonTipAfterText		: '页'
            }*/
        });

    }
</script>



<#-- 分页请求 -->
<script type="text/javascript">
    function findItems(page) {
        $.get("${request.contextPath}/item/list?page=" + page, function (data, status) {
            // var dataObj=eval("("+data+")");// 加括号后报错
            var jsonObj = eval(data);// 转换为json对象

            // 初始化页码
            initPagination(jsonObj.data.totalPages)

            // 清空表格除了标题
            $("#itemsTable  tr:not(:first)").empty("");
            // 遍历json数组，并且添加数据到table
            var tableHtml = "";
            $.each(jsonObj.data.data, function (i, item) {
                var trStr = "<tr>\n" +
                        "<td>%s</td>\n" +
                        "<td>%s</td>\n" +
                        "<td>%s</td>\n" +
                        "<td>%s</td>\n" +
                        "<td>%s</td>\n" +
                        "<td>%s</td>\n" +
                        "<td>%s</td>\n" +
                        "<td>%s</td>\n" +
                        "<td>%s</td>\n" +
                        "<td>%s</td>\n" +
                        "</tr>";

                trStr = trStr.format(item.id,
                        item.title,
                        item.cid,
                        item.sellPoint,
                        item.price,
                        item.num,
                        item.barcode,
                        item.status,
                        item.created,
                        item.updated);

                tableHtml += trStr;
            });
            // 添加表单数据
            $("#itemsTable tbody:last").append(tableHtml);

        });// 请求结束
    }

</script>

<script type="text/javascript">
    // 字符串的格式化
    String.prototype.format = function () {
        //将arguments转化为数组（ES5中并非严格的数组）
        var args = Array.prototype.slice.call(arguments);
        var count = 0;
        //通过正则替换%s
        return this.replace(/%s/g, function (s, i) {
            return args[count++];
        });
    }
</script>

<script type="text/javascript">
    findItems(1);
</script>

</body>
</html>
