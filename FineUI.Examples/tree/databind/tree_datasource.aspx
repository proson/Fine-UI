<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_datasource.aspx.cs"
    Inherits="FineUI.Examples.tree.databind.tree_datasource" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Tree ID="Tree1" Width="650px" EnableArrows="true" EnableSingleExpand="true" EnableFrame="true" EnableCollapse="true"
            ShowHeader="true" Title="树控件（绑定到 XmlDataSource）" runat="server">
        </f:Tree>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/tree/databind/website.xml"></asp:XmlDataSource>
        <br />
        注意：这个树启用了 EnableSingleExpand，也就是说同一级目录同时只能展开一个。
    </form>
</body>
</html>
