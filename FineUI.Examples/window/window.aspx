<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="window.aspx.cs" Inherits="FineUI.Examples.window.window" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Button ID="btnShowInServer" CssClass="inline" Text="显示窗体（服务端代码）" runat="server"
            OnClick="btnShowInServer_Click">
        </f:Button>
        <f:Button ID="btnHideInServer" Text="隐藏窗体（服务端代码）" runat="server" OnClick="btnHideInServer_Click">
        </f:Button>
        <br />
        <br />
        <f:Button ID="btnShowInClient" CssClass="inline" Text="显示窗体（客户端代码）" EnablePostBack="false"
            runat="server">
        </f:Button>
        <f:Button ID="btnHideInClient" CssClass="inline" Text="隐藏窗体（客户端代码）" EnablePostBack="false"
            runat="server">
        </f:Button>
        <f:Button ID="btnHideInClient2" Text="隐藏窗体，带回发参数（客户端代码）" EnablePostBack="false"
            runat="server">
        </f:Button>
        <br />
        <br />
        <f:Window ID="Window2" Width="650px" Height="300px" Icon="TagBlue" Title="窗体" Hidden="true"
            EnableMaximize="true" EnableCollapse="true" runat="server" EnableResize="true"
            IsModal="false" CloseAction="HidePostBack" OnClose="Window2_Close" Layout="Fit">
            <Items>
                <f:ContentPanel ShowBorder="false" ShowHeader="false" ID="ContentPanel2"
                    BodyPadding="5px" runat="server">
                    <br />
                    这是窗体的内容。
                    <br />
                    <br />
                    <br />
                    <br />
                </f:ContentPanel>
            </Items>
        </f:Window>
    </form>
</body>
</html>
