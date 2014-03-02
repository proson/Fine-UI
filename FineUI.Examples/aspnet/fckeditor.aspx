<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fckeditor.aspx.cs" ValidateRequest="false"
    Inherits="FineUI.Examples.aspnet.fckeditor2" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:ContentPanel ID="ContentPanel1" runat="server" BodyPadding="5px" EnableFrame="true" EnableCollapse="true"
            ShowBorder="true" ShowHeader="true" Width="850px" Title="内容面板">
            <FCKeditorV2:FCKeditor ID="FCKeditor1" BasePath="~/fckeditor/" Height="300px" Value="" runat="server">
            </FCKeditorV2:FCKeditor>
        </f:ContentPanel>
        <br />
        <f:Button ID="Button2" runat="server" CssClass="inline" Text="设置 FCKEditor 的值"
            OnClick="Button2_Click">
        </f:Button>
        <f:Button ID="Button1" runat="server" Text="获取 FCKEditor 的值" OnClick="Button1_Click">
        </f:Button>
    </form>
    <script type="text/javascript">
        var editorUniqueID = '<%= FCKeditor1.UniqueID  %>';


        // 提交数据之前同步到表单隐藏字段
        F.beforeAjax(function () {
            var editor = FCKeditorAPI.GetInstance(editorUniqueID);
            editor.UpdateLinkedField();
        });


        // 更新编辑器内容
        function updateFCKEditor(content) {
            var editor = FCKeditorAPI.GetInstance(editorUniqueID);
            editor.SetData(content);
        }
    </script>
</body>
</html>
