
<!DOCTYPE html>
<!-- release v4.4.4, copyright 2014 - 2017 Kartik Visweswaran -->
<!--suppress JSUnresolvedLibraryURL -->
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>Picture-Bed-开源图床</title>
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



</head>


<body>

<div class="container kv-main">
    <div class="page-header">
        每个图片最大5 MB,每个请求最多10个文件
    </div>

    <form enctype="multipart/form-data">
        <div class="form-group">
            <input id="file" type="file" multiple class="file" data-overwrite-initial="false" data-min-file-count="1"
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

<script>
    
    function f() {
        console.error("数据：" + imgUrls);
    }
</script>

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

        var form = data.form, files = data.files, extra = data.extra, response = data.response, filenames = data.filenames,reader = data.reader;

        // {"code":200,"msg":"请求成功","data":"http://192.168.3.38/images/2018/06/10/1528612686936849.jpeg"}

        if (response.code == 200 && response.data !=null && response.data !=""){
            console.error("上传成功：" + response.data);
            imgUrls[imgUrls.length] = response.data;
            f();

            $("#showurl").show();
            $('#html').append("&lt;img src=\"" + response.data + "\" alt=\"" + files[index].name + "\" title=\"" + files[index].name + "\" /&gt;" + "\n");
            $('#markdown').append("![" + files[index].name + "](" + response.data + ")" + "\n");
            $('#markdownlink').append("[![" + files[index].name + "](" + response.data + ")]" + "(" + response.data + ")" + "\n");
            $('#url').append(response.data + "\n");
        }

        //
        // console.error(response.retCode + "数据00：" + response.data);
        // if (response.retCode == '000000') {
        //     if ($("showurl").css("display")) {
        //         $('#html').append("&lt;img src=\"" + response.result.url + "\" alt=\"" + files[index].name + "\" title=\"" + files[index].name + "\" /&gt;" + "\n");
        //         $('#markdown').append("![" + files[index].name + "](" + response.result.url + ")" + "\n");
        //         $('#markdownlink').append("[![" + files[index].name + "](" + response.result.url + ")]" + "(" + response.result.url + ")" + "\n");
        //         $('#url').append(response.data.url + "\n");
        //
        //     } else if (response.data) {
        //         $("#showurl").show();
        //         $('#html').append("&lt;img src=\"" + response.result.url + "\" alt=\"" + files[index].name + "\" title=\"" + files[index].name + "\" /&gt;" + "\n");
        //         $('#markdown').append("![" + files[index].name + "](" + response.result.url + ")" + "\n");
        //         $('#markdownlink').append("[![" + files[index].name + "](" + response.result.url + ")]" + "(" + response.result.url + ")" + "\n");
        //         $('#url').append(response.result.url + "\n");
        //
        //     }
        // }
    });
</script>
</body>
</html>
