<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ueditor_two.aspx.cs" ValidateRequest="false"
    Inherits="FineUI.Examples.aspnet.ueditor_two" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../ueditor/themes/default/ueditor.css" />
    <style>
        table.mytable {
            width: 100%;
            border-collapse: collapse;
        }

            table.mytable td {
                padding: 0;
                vertical-align: top;
            }

                table.mytable td.first {
                    width: 85px;
                }

                table.mytable td.second {
                    padding-right: 5px;
                }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:SimpleForm ID="SimpleForm1" BodyPadding="5px" LabelWidth="80px" Width="900px" EnableFrame="true" EnableCollapse="true"
            Title="添加文章" runat="server">
            <Items>
                <f:TextBox ID="tbxTitle" Label="文章标题" Required="true" runat="server">
                </f:TextBox>
                <f:ContentPanel ID="ContentPanel1" runat="server" ShowBorder="false" ShowHeader="false">
                    <table class="mytable">
                        <tr>
                            <td class="first">文章正文： </td>
                            <td class="second">
                                <textarea name="UEditor1" id="UEditor1">
                                </textarea>
                            </td>
                        </tr>
                        <tr>
                            <td class="first" style="padding-top: 5px;">文章摘要：</td>
                            <td class="second" style="padding-top: 5px;">
                                <textarea name="UEditor2" id="UEditor2">
                                </textarea>
                            </td>
                        </tr>
                    </table>
                </f:ContentPanel>

            </Items>
            <Toolbars>
                <f:Toolbar runat="server" ToolbarAlign="Right" Position="Footer">
                    <Items>
                        <f:Button ID="Button1" runat="server" ValidateForms="SimpleForm1"
                            Text="获取文章内容" OnClick="Button1_Click">
                        </f:Button>
                        <f:Button ID="Button2" runat="server" Text="更新文章摘要" OnClick="Button2_Click">
                        </f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>
        </f:SimpleForm>
        <f:Label runat="server" ID="labResult" EncodeText="false">
        </f:Label>
        <br />
    </form>
    <script type="text/javascript">
        window.UEDITOR_HOME_URL = '<%= ResolveUrl("~/ueditor/") %>';
    </script>
    <script src="../js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="../ueditor/ueditor.config.js"></script>
    <script type="text/javascript" src="../ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript">
        var editor1, editor2;
        var formClientID = '<%= SimpleForm1.ClientID %>';

        F.ready(function () {
            editor1 = new UE.ui.Editor({
                initialFrameWidth: '100%',
                initialFrameHeight: 100,
                initialContent: '<p>关于FineUI<br>基于 ExtJS 的开源 ASP.NET 控件库。<br><br>FineUI的使命<br>创建 No JavaScript，No CSS，No UpdatePanel，No ViewState，No WebServices 的网站应用程序。<br><br>支持的浏览器<br>IE 8.0+、Chrome、Firefox、Opera、Safari<br><br>授权协议<br>Apache License 2.0 (Apache)<br><br>相关链接<br>论坛：http://fineui.com/bbs/<br>示例：http://fineui.com/demo/<br>文档：http://fineui.com/doc/<br>下载：http://fineui.codeplex.com/</p>'
            });
            editor1.render("UEditor1");

            editor2 = new UE.ui.Editor({
                initialFrameWidth: '100%',
                initialFrameHeight: 80,
                initialContent: '',
                toolbars: [['fullscreen', 'source', '|', 'undo', 'redo', '|',
                'bold', 'italic', 'underline', 'strikethrough', 'superscript', 'subscript',
                'removeformat', 'formatmatch', 'autotypeset', 'blockquote', 'pasteplain']]
            });
            editor2.render("UEditor2");

            updateLayout();

        });

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
            editor1.sync();
            editor2.sync();
        });

        // 更新外部容器的布局
        function updateLayout() {
            $.when(editorPromise(editor1), editorPromise(editor2)).then(function () {
                window.setTimeout(function () {
                    F(formClientID).updateLayout();
                }, 200);
            });
        }

        // 更新编辑器内容
        function updateUEditor1(content) {
            editorPromise(editor1).then(function () {
                editor1.setContent(content);
            });
        }

        function updateUEditor2(content) {
            editorPromise(editor2).then(function () {
                editor2.setContent(content);
            });
        }
    </script>
</body>
</html>
