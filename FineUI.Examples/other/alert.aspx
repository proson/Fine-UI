<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alert.aspx.cs" Inherits="FineUI.Examples.other.alert" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <f:PageManager ID="PageManager1" runat="server" />
    <f:Button Text="点击弹出对话框（Icon）" runat="server" ID="btnHello" OnClick="btnHello_Click">
    </f:Button>
    <br />
    <f:Button Text="在顶层窗口弹出对话框（IconUrl）" runat="server" ID="btnHello2" OnClick="btnHello2_Click">
    </f:Button>
    </form>
</body>
</html>
