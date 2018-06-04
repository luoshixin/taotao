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
<#-- 自定义 -->
    <link rel="stylesheet" href="../static/cs/common.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="../static/adminlte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<#-- bootstrap模态框依赖-->
    <script src="../static/adminlte/plugins/bootstrap/js/bootstrap.min.js"></script>
    <link  rel="stylesheet" src="../static/adminlte/plugins/bootstrap/css/bootstrap.min.css">
    <script src="../static/adminlte/plugins/jquery/jquery.min.js"></script>


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
                                <a href="${request.contextPath}/page/goods-query" class="nav-link">
                                    <i class="fa fa-circle-o nav-icon"></i>
                                    <p>查询商品</p>
                                </a>
                            </li>

                            <li class="nav-item">
                                <a href="#" class="nav-link active">
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
                        <h1>添加商品</h1>
                    </div>

                </div>
            </div><!-- /.container-fluid -->
        </section>


        <section class="content">
            <table border="0" class="table-margin">
                <tr class="table-padding">
                    <td>商品类目：</td>
                    <td>
                        <button type="button"
                                class="btn btn-block  btn-primary btn-lg btn-outline-primary btn-sm selected-btn-block" data-toggle="modal" data-target="#chooseCidModel">
                            选择类目
                        </button>
                    <#-- 多级菜单 start-->
                        <!-- 模态框（Modal） -->
                        <div class="modal fade" id="chooseCidModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h6 class="modal-title" id="myModalLabel">
                                            选择类目
                                        </h6>
                                    </div>
                                    <#-- 多级菜单菜单内容 start-->
                                    <div class="modal-body">

                                    </div>
                                    <#-- 多级菜单内容 end -->

                                </div><!-- /.modal-content -->
                            </div><!-- /.modal -->
                        </div>

                    <#-- 多级菜单 end-->
                    </td>
                </tr>

                <tr class="table-padding">
                    <td>商品标题：</td>
                    <td><input type="text" class="form-control goods-input-size"></td>
                </tr>

                <tr class="table-padding">
                    <td>商品卖点：</td>
                    <td><textarea class="form-control goods-textarea-size"></textarea></td>
                </tr>

                <tr class="table-padding">
                    <td>商品价格：</td>
                    <td><input type="text" class="form-control goods-small-input-size"></td>
                </tr>

                <tr class="table-padding">
                    <td>库存数量：</td>
                    <td><input type="text" class="form-control goods-small-input-size"></td>
                </tr>

                <tr class="table-padding">
                    <td>条形码：</td>
                    <td><input type="text" class="form-control goods-small-input-size"></td>
                </tr>

                <tr class="table-padding">
                    <td>商品图片：</td>
                    <td>
                        <button type="button" class="btn btn-block btn-outline-primary btn-sm selected-btn-block">上传图片
                        </button>
                    </td>
                </tr>

                <tr class="table-padding">
                    <td>商品描述：</td>
                    <td>
                        <div id="editor"></div>
                    </td>
                </tr>
            </table>


        </section>

    </div>
    <!-- 中间内容 end -->

<#--<!-- Control Sidebar &ndash;&gt;-->
<#--<aside class="control-sidebar control-sidebar-dark" >-->
<#--<div class="p-3">-->
<#--<h5>Title</h5>-->
<#--<p>Sidebar content</p>-->
<#--</div>-->
<#--</aside>-->
    <!-- /.control-sidebar -->

<#--<!-- Main Footer &ndash;&gt;-->
<#--<footer class="main-footer">-->

<#--</footer>-->
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->


<!-- Bootstrap 4 -->
<script src="../static/adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../static/adminlte/dist/js/adminlte.min.js"></script>

<!-- FastClick -->
<script src="../static/adminlte/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../static/adminlte/dist/js/demo.js"></script>
<!-- CK Editor -->
<script src="../static/adminlte/plugins/ckeditor/ckeditor.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="../static/adminlte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>

<#-- 配置WangEditor富文本编辑器-->
<script type="text/javascript" src="../static/wangEditor-3.1.1/release/wangEditor.js"></script>

<script type="text/javascript">
    var E = window.wangEditor
    var editor = new E('#editor')
    editor.customConfig.uploadFileName = 'imgName'      //给上传的本地图片文件命名的统一名称
    editor.customConfig.uploadImgServer = '${request.contextPath}/file/uploadImages'//官方文档上写的是服务器地址，也就是上传图片的方法名
    editor.customConfig.uploadImgHooks = {
        customInsert: function (insertImg, result, editor) {
            // 图片上传并返回结果，自定义插入图片的事件（而不是编辑器自动插入图片！！！）
            // insertImg 是插入图片的函数，editor 是编辑器对象，result 是服务器端返回的结果
            // 举例：假如上传图片成功后，服务器端返回的是 {url:'....'} 这种格式，即可这样插入图片：
            var url = result.data;
            insertImg(url);

            // result 必须是一个 JSON 格式字符串！！！否则报错
        }
    }
    editor.create();

    // $("button").click(function(){
    //     var html= editor.txt.html();
    //     var text=editor.txt.text();
    //     $("#txt").val(html);
    //     $("#form").submit();
    // })
</script>

</body>
</html>
