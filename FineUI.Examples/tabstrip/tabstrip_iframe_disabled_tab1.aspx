<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tabstrip_iframe_disabled_tab1.aspx.cs"
    Inherits="FineUI.Examples.tabstrip.tabstrip_iframe_disabled_tab1" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <f:PageManager ID="PageManager1" runat="server" />
    <f:Button runat="server" ID="btnEnabledTab2" OnClick="btnEnableTabs_Click" Text="启用后两个标签">
    </f:Button>
    <br />
    <f:Button runat="server" ID="Button1" OnClick="btnDisableTabs_Click" Text="禁用后两个标签">
    </f:Button>
    </form>
</body>
</html>
