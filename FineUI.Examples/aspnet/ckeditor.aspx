<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ckeditor.aspx.cs" ValidateRequest="false"
    Inherits="FineUI.Examples.aspnet.ckeditor" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server"> 
        <f:PageManager ID="PageManager1" runat="server" />
        <f:ContentPanel ID="ContentPanel1" runat="server" BodyPadding="5px" Width="850px" EnableFrame="true" EnableCollapse="true"
            ShowBorder="true" ShowHeader="true" Title="内容面板">
            <CKEditor:CKEditorControl ID="CKEditor1" runat="server" Height="300px" BasePath="~/ckeditor">
		        &lt;p&gt;This is some &lt;strong&gt;sample text&lt;/strong&gt;. You are using &lt;a href="http://ckeditor.com/"&gt;CKEditor&lt;/a&gt;.&lt;/p&gt;
            </CKEditor:CKEditorControl>
        </f:ContentPanel>
        <br />
        <f:Button ID="Button2" runat="server" CssClass="inline" Text="设置 CKEditor 的值" OnClick="Button2_Click">
        </f:Button>
        <f:Button ID="Button1" runat="server" Text="获取 CKEditor 的值" OnClick="Button1_Click">
        </f:Button>
    </form>
    <script src="../js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        var editorClientID = '<%= CKEditor1.ClientID %>';
        var containerClientID = '<%= ContentPanel1.ClientID %>';

        F.ready(function () {

            window.setTimeout(function () {
                F(containerClientID).updateLayout();
            }, 500);

        });

        // 更新编辑器内容
        function updateCKEditor(content) {
            var editor = CKEDITOR.instances[editorClientID];
            editor.setData(content);
        }
    </script>
</body>
</html>
