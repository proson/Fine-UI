<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hello_aspnet.aspx.cs" Inherits="FineUI.Examples.basic.hello_aspnet" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <asp:Button Text="点击弹出对话框" runat="server" ID="btnHello" OnClick="btnHello_Click" />
    </form>
</body>
</html>
