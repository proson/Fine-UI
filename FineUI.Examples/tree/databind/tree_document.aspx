<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_document.aspx.cs"
    Inherits="FineUI.Examples.tree.databind.tree_document" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Tree ID="Tree1" Width="650px" EnableArrows="false" EnableLines="false" ShowHeader="true" EnableFrame="true" EnableCollapse="true"
            Title="树控件（绑定到 XmlDocument）" runat="server">
        </f:Tree>
    </form>
</body>
</html>
