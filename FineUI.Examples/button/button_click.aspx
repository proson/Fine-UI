<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="button_click.aspx.cs" Inherits="FineUI.Examples.button.button_click" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <f:PageManager ID="PageManager1" runat="server" />
    <f:Button ID="btnServerClick" Text="服务器端事件" OnClick="btnServerClick_Click" runat="server">
    </f:Button>
    <br />
    <br />
    <f:Button ID="btnClientClick" Text="客户端事件" OnClientClick="alert('这是客户端事件');" EnablePostBack="false"
        CssClass="inline" runat="server">
    </f:Button>
    <f:Button ID="btnClientClick2" Text="服务器端生成的客户端事件" EnablePostBack="false" runat="server">
    </f:Button>
    <br />
    <br />
    </form>
</body>
</html>
