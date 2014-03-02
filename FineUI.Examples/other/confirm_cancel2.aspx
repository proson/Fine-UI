<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="confirm_cancel2.aspx.cs"
    Inherits="FineUI.Examples.other.confirm_cancel2" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" OnCustomEvent="PageManager1_CustomEvent" runat="server" />
        <f:Button Text="操作（点击确定、取消都会回发页面）" runat="server" ID="btnOperation" EnablePostBack="false">
        </f:Button>
    </form>
</body>
</html>
