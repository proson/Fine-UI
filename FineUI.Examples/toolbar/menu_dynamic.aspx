<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu_dynamic.aspx.cs" Inherits="FineUI.Examples.toolbar.menu_dynamic" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Panel ShowBorder="true" BodyPadding="5px" Height="300px" Width="650px" Title="面板" EnableFrame="true" EnableCollapse="true"
            runat="server">
            <Toolbars>
                <f:Toolbar ID="Toolbar1" Position="Top" runat="server">
                </f:Toolbar>
            </Toolbars>
        </f:Panel>
    </form>
</body>
</html>
