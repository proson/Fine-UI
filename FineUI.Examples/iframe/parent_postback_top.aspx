<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="parent_postback_top.aspx.cs"
    Inherits="FineUI.Examples.iframe.parent_postback_top" %>

<!DOCTYPE html>
<html>
<head id="head1" runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        页面一：parent_postback_top.aspx
        <f:Label ID="labResult" runat="server">
        </f:Label>
        <br />
        <f:Panel ID="Panel1" runat="server" ShowBorder="true" EnableFrame="true" EnableCollapse="true"
            Width="800px" Height="450px" EnableIFrame="true" IFrameUrl="parent_postback_top2.aspx"
            ShowHeader="true" Title="面板一">
        </f:Panel>
    </form>
</body>
</html>
