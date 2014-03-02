<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="window2.aspx.cs"
    Inherits="FineUI.Examples.iframe.window2" %>

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
            <Toolbars>
                <f:Toolbar ID="Toolbar1" runat="server" Position="Footer" ToolbarAlign="Right">
                    <Items>
                        <f:Button ID="btnClosePostBack" Text="保存" Icon="SystemSave" EnablePostBack="false"
                            runat="server">
                        </f:Button>
                        <f:Button ID="btnClose" Text="关闭" Icon="SystemClose" EnablePostBack="false" runat="server">
                        </f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>
        </f:Window>
        <br />
        <f:Label ID="labResult" CssStyle="font-weight:bold;" runat="server">
        </f:Label>
    </form>
</body>
</html>
