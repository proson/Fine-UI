<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="source.aspx.cs" Inherits="FineUI.Examples.source" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <style type="text/css">
        iframe
        {
            padding: 0px;
            margin: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <f:PageManager ID="PageManager1" AutoSizePanelID="TabStrip1" runat="server"></f:PageManager>
    <f:TabStrip ID="TabStrip1" ShowBorder="false" TabPosition="Top" runat="server">
    </f:TabStrip>
    </form>
</body>
</html>
