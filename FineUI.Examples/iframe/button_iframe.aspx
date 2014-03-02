<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="button_iframe.aspx.cs"
    Inherits="FineUI.Examples.iframe.button_iframe" %>

<!DOCTYPE html>
<html>
<head id="head1" runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Button ID="Button1" runat="server" EnablePostBack="false" Text="在本页面弹出IFrame窗体">
        </f:Button>
        <br />
        <br />
        <f:Button ID="Button2" runat="server" EnablePostBack="false" Text="在父页面弹出IFrame窗体">
        </f:Button>
        <br />
        <br />
        <f:Label ID="labResult" CssStyle="font-weight:bold;color:red;" runat="server">
        </f:Label>
        <br />
        <f:Window ID="Window1" IconUrl="~/images/16/10.png" runat="server" Hidden="true"
            WindowPosition="Center" IsModal="true" Title="Popup Window 1" EnableMaximize="true"
            EnableResize="true" Target="Self" EnableIFrame="true"
            Height="500px" Width="650px" OnClose="Window1_Close">
        </f:Window>
        <f:Window ID="Window2" IconUrl="~/images/16/11.png" runat="server" Hidden="true"
            IsModal="true" Target="Parent" EnableMaximize="true" EnableResize="true" OnClose="Window2_Close"
            Title="Popup Window 2" CloseAction="HidePostBack"
            EnableIFrame="true" Height="500px" Width="650px">
        </f:Window>
    </form>
</body>
</html>
