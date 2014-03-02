<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu_dynamic2.aspx.cs"
    Inherits="FineUI.Examples.toolbar.menu_dynamic2" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Panel ShowBorder="true" Title="面板" BodyPadding="5px" Height="300px" EnableFrame="true" EnableCollapse="true"
            Width="650px" runat="server">
            <Toolbars>
                <f:Toolbar ID="Toolbar1" runat="server">
                    <Items>
                        <f:Button ID="Button1" EnablePostBack="false" OnClientClick="window.open('../default.aspx', '_blank');"
                            Text="点击打开新窗体（内联按钮）" runat="server">
                        </f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>
        </f:Panel>
    </form>
</body>
</html>
