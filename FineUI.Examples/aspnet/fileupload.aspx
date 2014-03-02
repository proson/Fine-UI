<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="fileupload.aspx.cs"
    Inherits="FineUI.Examples.aspnet.fileupload2" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <f:PageManager ID="PageManager1" runat="server" EnableAjax="false" />
    <f:ContentPanel ID="ContentPanel1" runat="server" Width="800px" BodyPadding="5px"
         ShowHeader="true" Title="内容面板">
        Asp.Net上传控件：
        <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>
        <br />
        <br />
        <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" BasePath="~/fckeditor/" Height="300px">
        </FCKeditorV2:FCKeditor>
        <br />
        <asp:Button ID="btnCloseWindow2" runat="server" Text="上传文件并获取 FCKEditor 的值" 
        OnClick="btnCloseWindow2_Click"></asp:Button>
        <br />
        <br />
        注意：在页面上使用 asp:FileUpload 控件时，必须设置 PageManager 的 EnableAjax 为 false。
        <br />
        <br />
        <div style="color:Red; font-weight: bold;">
            推荐使用 FineUI 提供的 FileUpload 控件，这样就不需要设置 EnableAjax 为 false 了。
        </div>
    </f:ContentPanel>
    </form>
</body>
</html>
