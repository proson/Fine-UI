<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ueditor.aspx.cs" ValidateRequest="false"
    Inherits="FineUI.Examples.aspnet.ueditor" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../ueditor/themes/default/ueditor.css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:ContentPanel ID="ContentPanel1" runat="server" BodyPadding="5px" Width="900px" EnableFrame="true" EnableCollapse="true"
            ShowBorder="true" ShowHeader="true" Title="内容面板">
            <textarea name="UEditor1" id="UEditor1">
            </textarea>
        </f:ContentPanel>
        <br />
        <f:Button ID="Button2" runat="server" CssClass="inline" Text="设置 CKEditor 的值" OnClick="Button2_Click">
        </f:Button>
        <f:Button ID="Button1" runat="server" Text="获取 CKEditor 的值" OnClick="Button1_Click">
        </f:Button>
    </form>
    <script type="text/javascript">
        window.UEDITOR_HOME_URL = '<%= ResolveUrl("~/ueditor/") %>';
    </script>
    <script src="../js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="../ueditor/ueditor.config.js"></script>
    <script type="text/javascript" src="../ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript">
        var editor;
        var containerClientID = '<%= ContentPanel1.ClientID %>';
        F.ready(function () {
            editor = new UE.ui.Editor({
                initialFrameWidth: '100%',
                initialFrameHeight: 300,
                initialContent: '<p>关于FineUI<br>基于 ExtJS 的开源 ASP.NET 控件库。<br><br>FineUI的使命<br>创建 No JavaScript，No CSS，No UpdatePanel，No ViewState，No WebServices 的网站应用程序。<br><br>支持的浏览器<br>IE 8.0+、Chrome、Firefox、Opera、Safari<br><br>授权协议<br>Apache License 2.0 (Apache)<br><br>相关链接<br>论坛：http://fineui.com/bbs/<br>示例：http://fineui.com/demo/<br>文档：http://fineui.com/doc/<br>下载：http://fineui.codeplex.com/</p>',
                focus: true
            });
            editor.render("UEditor1");

            updateLayout();
        });

        // 更新外部容器的布局
        function updateLayout() {
            editorPromise(editor).then(function () {
                window.setTimeout(function () {
                    F(containerClientID).updateLayout();
                }, 200);
            });
        }

        // 编辑器准备完毕的异步处理函数（只有在编辑器准备完毕后，才能对编辑器进行操作）
        function editorPromise(editor) {
            var dfd = $.Deferred();

            if (editor.isReady) {
                dfd.resolve();
            } else {
                editor.ready(function () {
                    dfd.resolve();
                });
            }

            return dfd.promise();
        }


        // 提交数据之前同步到表单隐藏字段
        F.beforeAjax(function () {
            editor.sync();
        });

        // 更新编辑器内容
        function updateUEditor(content) {
            editorPromise(editor).then(function () {
                editor.setContent(content);
            });
        }
    </script>
</body>
</html>
