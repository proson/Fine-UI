<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iframe_iframe_window1.aspx.cs"
    Inherits="FineUI.Examples.iframe.iframe_iframe_window1" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        body.f-body {
            padding: 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager AutoSizePanelID="formPanel" ID="PageManager1" runat="server"></f:PageManager>
        <f:Panel ID="formPanel" ShowBorder="false" ShowHeader="false"
            runat="server">
            <Toolbars>
                <f:Toolbar runat="server">
                    <Items>
                        <f:Button ID="btnPostBackClose" runat="server" OnClick="btnPostBackClose_Click"
                            Text="关闭-回发父页面">
                        </f:Button>
                        <f:Button ID="Button1" EnablePostBack="false" Text="本页面弹出窗体" runat="server">
                        </f:Button>
                        <f:Button ID="Button2" EnablePostBack="false" Text="父页面弹出窗体" runat="server">
                        </f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>
            <Items>
                <f:Label ID="labResult" CssStyle="font-weight:bold;" runat="server">
                </f:Label>
            </Items>
        </f:Panel>
        <f:Window ID="Window1" Hidden="true" EnableIFrame="true" runat="server"
            EnableMaximize="true" EnableResize="true" Height="300px" Width="600px"
            Title="窗体三">
        </f:Window>
        <f:Window ID="Window2" Hidden="true" EnableIFrame="true" runat="server"
            EnableMaximize="true" EnableResize="true" Target="Parent" Height="300px" Width="600px"
            CloseAction="HidePostBack" Title="窗体四">
        </f:Window>

    </form>
</body>
</html>
