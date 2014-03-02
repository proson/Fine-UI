<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="leftmenu.aspx.cs" Inherits="FineUI.Examples.iframe.topmenu3.leftmenu" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" AutoSizePanelID="leftAccordion" runat="server"></f:PageManager>
        <f:Accordion runat="server" EnableFill="false" ShowBorder="false" ShowHeader="false"
            ID="leftAccordion">
        </f:Accordion>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="./data/menuMail.xml"></asp:XmlDataSource>
    </form>
    <script src="../../js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script>
        var leftAccordionID = '<%= leftAccordion.ClientID %>';

        F.ready(function () {

            // 首先获取手风琴控件第一个面板中的树控件
            var tree = F(leftAccordionID).items.get(0).items.get(0);
            var treeFirstChild = tree.getRootNode().firstChild;

            // 选中第一个链接节点，并在右侧IFrame中打开此链接
            tree.getSelectionModel().select(treeFirstChild);
            parent.window.frames['mainframe'].location.href = treeFirstChild.data.href;

        });
    </script>
</body>
</html>
