<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="button_linkbutton.aspx.cs"
    Inherits="FineUI.Examples.button.button_linkbutton" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <f:PageManager ID="PageManager1" runat="server" />
    <f:LinkButton ID="LinkButton2" Text="客户端事件（服务器生成）" EnablePostBack="false" runat="server">
    </f:LinkButton>
    <br />
    <f:LinkButton ID="LinkButton3" Text="服务器端事件" OnClick="LinkButton3_Click" runat="server">
    </f:LinkButton>
    <br />
    <br />
    <f:LinkButton ID="LinkButton1" Enabled="true" Text="客户端事件（在页面中定义）" EnablePostBack="false"
        OnClientClick="clickLinkButton();" runat="server">
    </f:LinkButton>
    <br />
    <f:Button ID="btnChangeEnable" Text="启用/禁用最后一个链接按钮" runat="server" OnClick="btnChangeEnable_Click" />
    </form>
    <script>
        function clickLinkButton() {
            top.F.alert("定义在页面中的客户端事件！");
        }
    </script>
</body>
</html>
