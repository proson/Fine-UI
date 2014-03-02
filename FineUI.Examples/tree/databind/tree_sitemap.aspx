<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_sitemap.aspx.cs" Inherits="FineUI.Examples.tree.databind.tree_sitemap" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Tree ID="Tree1" Width="650px" ShowHeader="true" Title="树控件（绑定到 SiteMap）" EnableFrame="true" EnableCollapse="true"
            runat="server">
            <Mappings>
                <f:XmlAttributeMapping From="url" To="NavigateUrl" />
                <f:XmlAttributeMapping From="title" To="Text" />
                <f:XmlAttributeMapping From="description" To="ToolTip" />
                <f:XmlAttributeMapping From="target" To="Target" />
            </Mappings>
        </f:Tree>
        <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/tree/databind/Web.sitemap"></asp:XmlDataSource>
    </form>
</body>
</html>
