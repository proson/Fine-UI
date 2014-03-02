<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_auto_leaf_identification.aspx.cs"
    Inherits="ExtAspNet.Examples.data.tree_auto_leaf_identification" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Tree ID="Tree1" Width="500px" EnableArrows="false" EnableLines="false" ShowHeader="true"
        Title="Tree1" runat="server">
    </ext:Tree>
    <br />
    <ext:Tree ID="Tree2" Width="500px" AutoLeafIdentification="true" EnableArrows="false"
        EnableLines="false" ShowHeader="true" Title="Tree2(AutoLeafIdentification)" runat="server">
    </ext:Tree>
    </form>
</body>
</html>
