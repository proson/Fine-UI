<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="button.aspx.cs" Inherits="FineUI.Examples.button.button" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .redbutton button
        {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <f:PageManager ID="PageManager1" runat="server" />
    <f:Button ID="btnChangeEnable" Text="启用后面的按钮" runat="server" OnClick="btnChangeEnable_Click"
        CssClass="inline" />
    <f:Button ID="btnEnable" Text="禁用的按钮" OnClick="btnEnable_Click" runat="server"
        Enabled="False" />
    <br />
    <br />
    <f:Button ID="btnChangePressed" Text="改变后面按钮的按下状态" runat="server" OnClick="btnChangePressed_Click"
        CssClass="inline" />
    <f:Button ID="btnPressed" Text="按下的按钮" runat="server" EnablePress="true" Pressed="true" />
    <br />
    <br />
    <f:Button ID="btnTooltip" Text="这个按钮有提示信息（点击改变提示信息）" ToolTip="这是按钮的提示信息" OnClick="btnTooltip_Click"
        runat="server">
    </f:Button>
    <br />
    <br />
    <f:Button ID="Button1" Text="普通按钮" runat="server" EnablePostBack="false" CssClass="inline" />
    <f:Button ID="Button2" Text="中等大小按钮" runat="server" Size="Medium" EnablePostBack="false"
        CssClass="inline" />
    <f:Button ID="Button3" Text="大按钮" runat="server" Size="Large" EnablePostBack="false" />
    </form>
</body>
</html>
