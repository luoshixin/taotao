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

<#-- 多图上传 -->
    <link href="../static/bootstrap-fileinput/css/bootstrap.css" rel="stylesheet">
    <link href="../static/bootstrap-fileinput/css/fileinput.css" media="all" rel="stylesheet" type="text/css"/>
    <link href="../static/bootstrap-fileinput/css/theme.css" media="all" rel="stylesheet" type="text/css"/>
    <link href="../static/bootstrap-fileinput/css/ymq/footer.css" media="all" rel="stylesheet" type="text/css"/>
    <script src="../static/bootstrap-fileinput/js/jquery.min.js"></script>
    <script src="../static/bootstrap-fileinput/js/sortable.js" type="text/javascript"></script>
    <script src="../static/bootstrap-fileinput/js/fileinput.js" type="text/javascript"></script>
    <script src="../static/bootstrap-fileinput/js/zh.js" type="text/javascript"></script>
    <script src="../static/bootstrap-fileinput/js/theme.js" type="text/javascript"></script>
    <script src="../static/bootstrap-fileinput/js/bootstrap.min.js" type="text/javascript"></script>


    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="../static/adminlte/plugins/font-awesome/css/font-awesome.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../static/adminlte/dist/css/adminlte.min.css">
<#-- 自定义 -->
    <link rel="stylesheet" href="../static/cs/common.css">
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
                    <td>商品标题：</td>
                    <td><input id="title" type="text" class="form-control goods-input-size"></td>
                </tr>

                <tr class="table-padding">
                    <td>商品卖点：</td>
                    <td><textarea id="sellPoint" class="form-control goods-textarea-size"></textarea></td>
                </tr>

                <tr class="table-padding">
                    <td>商品价格：</td>
                    <td><input id="price" type="text" class="form-control goods-small-input-size"></td>
                </tr>

                <tr class="table-padding">
                    <td>库存数量：</td>
                    <td><input id="num" type="text" class="form-control goods-small-input-size"></td>
                </tr>

                <tr class="table-padding">
                    <td>条形码：</td>
                    <td><input id="barcode" type="text" class="form-control goods-small-input-size"></td>
                </tr>

                <tr class="table-padding">l
                    <td>商品图片：</td>
                    <td>
                    <#--参考： https://github.com/souyunku/Picture-Bed
                    建议先开一个测试html来测试组件，免得出现问题 -->
                    <#-- 图片上传 start-->

                        <div class="container kv-main">
                            <div class="page-header">
                                每个图片最大5 MB,每个请求最多10个文件
                            </div>

                            <form enctype="multipart/form-data">
                                <div class="form-group">
                                    <input id="file" type="file" multiple class="file" data-overwrite-initial="false"
                                           data-min-file-count="1"
                                           data-max-file-count="10" name="file" accept="image/*">
                                </div>
                            </form>

                            <div id="showurl" style="display: none;">
                                <h3 id="error"></h3>
                                <ul id="navTab" class="nav nav-tabs">
                                    <li class="active"><a href="#htmls" data-toggle="tab">HTML</a></li>
                                    <li><a href="#markdowns" data-toggle="tab">Markdown</a></li>
                                    <li><a href="#markdownlinks" data-toggle="tab">Markdown with Link</a></li>
                                    <li><a href="#urls" data-toggle="tab">URL</a></li>
                                </ul>
                                <div id="navTabContent" class="tab-content">
                                    <div class="tab-pane fade in active" id="htmls">
                                        <pre style="margin-top: 5px;"><code id="html"></code></pre>
                                    </div>
                                    <div class="tab-pane fade" id="markdowns">
                                        <pre style="margin-top: 5px;"><code id="markdown"></code></pre>
                                    </div>
                                    <div class="tab-pane fade" id="markdownlinks">
                                        <pre style="margin-top: 5px;"><code id="markdownlink"></code></pre>
                                    </div>
                                    <div class="tab-pane fade" id="urls">
                                        <pre style="margin-top: 5px;"><code id="url"></code></pre>
                                    </div>

                                </div>
                            </div>
                        </div>
                    <#-- 图片上传 end-->
                    </td>
                </tr>

                <tr class="table-padding">
                    <td>商品描述：</td>
                    <td>
                        <div id="editor"></div>
                    </td>
                </tr>
            </table>

            <div style="width: 100px; padding: 50px 0px 100px 0px ">
                <button type="button" class="btn btn-block btn-outline-primary" style="width: 100px; margin-left: 300px"
                        id="commitBtn">提交
                </button>
            </div>
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
    editor.customConfig.uploadFileName = 'file'      //给上传的本地图片文件命名的统一名称
    editor.customConfig.uploadImgServer = '${request.contextPath}/file/uploadImage'//官方文档上写的是服务器地址，也就是上传图片的方法名
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


<#-- 文件上传 -->
<#--参考： https://github.com/souyunku/Picture-Bed
                        建议先开一个测试html来测试组件，免得出现问题 -->
<script type="text/javascript">


    $("#file").fileinput({
        uploadUrl: '${request.contextPath}/file/uploadImage',
        allowedFileExtensions: ['jpeg', 'jpg', 'png', 'gif', 'bmp'],
        overwriteInitial: false,
        maxFileSize: 12120,
        maxFilesNum: 10,
        maxFileCount: 10,
        language: 'zh',

    });


    var imgUrls = new Array();


    $('#file').on('fileuploaded', function (event, data, previewId, index) {

        var form = data.form, files = data.files, extra = data.extra, response = data.response,
                filenames = data.filenames, reader = data.reader;

        // {"code":200,"msg":"请求成功","data":"http://192.168.3.38/images/2018/06/10/1528612686936849.jpeg"}

        if (response.code == 200 && response.data != null && response.data != "") {
            console.error("上传成功：" + response.data);
            // 存储图片的urls
            imgUrls[imgUrls.length] = response.data;
            //
            // $("#showurl").show();
            // $('#html').append("&lt;img src=\"" + response.data + "\" alt=\"" + files[index].name + "\" title=\"" + files[index].name + "\" /&gt;" + "\n");
            // $('#markdown').append("![" + files[index].name + "](" + response.data + ")" + "\n");
            // $('#markdownlink').append("[![" + files[index].name + "](" + response.data + ")]" + "(" + response.data + ")" + "\n");
            // $('#url').append(response.data + "\n");
        }

    });
</script>

<script type="text/javascript">

    <#-- 提交表单数据 -->
    $("#commitBtn").click(function () {
                var formData = new FormData();
                formData.append("title", $("#title").val());
                formData.append("sellPoint", $("#sellPoint").val());
                formData.append("price", $("#price").val());
                formData.append("num", $("#num").val());
                formData.append("barcode", $("#barcode").val());


               // // 临时数据
               // imgUrls[0] = "https://img.alicdn.com/imgextra/i3/263817957/TB2Sza.fhSYBuNjSspjXXX73VXa_!!263817957.jpg_.webp";
               // imgUrls[1] = "https://img.alicdn.com/imgextra/i1/263817957/TB2VcdiXpooBKNjSZFPXXXa2XXa_!!263817957.jpg_.webp";
               var json = JSON.stringify(imgUrls);
               formData.append("image", json);

//                var formData = new FormData($('#form')[0]);// 自动搜索表单信息(表单内没有name属性的input不会被搜索到)，IE<=9不支持FormData
//                formData.append('b', 3);// 还可以添加额外的表单数据


               formData.append("describe", editor.txt.html());
             // console.error("数据：" + json);
                $.ajax({
                    type: 'post',
                    url: '${request.contextPath}/item/save',
                    data: formData,
                    contentType: false,// 当有文件要上传时，此项是必须的，否则后台无法识别文件流的起始位置(详见：#1)
                    processData: false,// 是否序列化data属性，默认true(注意：false时type必须是post，详见：#2)
//                    xhr: xhrOnProgress(function (e) {// (详见：#3)
//                        var percent = e.loaded / e.total;//计算百分比
//                        $('body').append('->' + percent);
//                    }),
                    success: function (data) {
                        $('body').append('完成' + data);
                    }
                })
            }
    );
</script>
</body>
</html>
