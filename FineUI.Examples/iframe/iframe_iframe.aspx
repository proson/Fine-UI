<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iframe_iframe.aspx.cs"
    Inherits="FineUI.Examples.iframe.iframe_iframe" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <br />
        <f:Button ID="Button1" EnablePostBack="false" Text="在本页面弹出窗体" runat="server">
        </f:Button>
        <f:Window ID="Window1" Hidden="true" EnableIFrame="true" runat="server"
            EnableMaximize="true" EnableResize="true" Height="450px" Width="900px" Title="窗体一">
        </f:Window>
        <br />
        <br />
        <f:Button ID="Button2" EnablePostBack="false" Text="在父页面弹出窗体" runat="server">
        </f:Button>
        <f:Window ID="Window2" Hidden="true" EnableIFrame="true" EnableMaximize="true"
            EnableResize="true" Target="Parent" runat="server" Height="450px" Width="900px"
            Title="窗体二">
        </f:Window>
        <br />
        <f:Label ID="labResult" CssStyle="font-weight:bold;" runat="server">
        </f:Label>
        <br />
    </form>
</body>
</html>
