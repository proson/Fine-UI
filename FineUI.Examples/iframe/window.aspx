<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="window.aspx.cs"
    Inherits="FineUI.Examples.iframe.window" %>

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
        <f:Button ID="Button1" EnablePostBack="false" Text="弹出窗体" runat="server">
        </f:Button>
        <f:Window ID="Window1" Hidden="true" EnableIFrame="true" runat="server" EnableConfirmOnClose="true"
            EnableMaximize="true" EnableResize="true" Height="450px" Width="800px" Title="窗体一">
        </f:Window>
        <br />
        <f:Label ID="labResult" CssStyle="font-weight:bold;" runat="server">
        </f:Label>
    </form>
</body>
</html>
