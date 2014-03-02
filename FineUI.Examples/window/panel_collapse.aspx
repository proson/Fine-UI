<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="panel_collapse.aspx.cs" Inherits="FineUI.Examples.window.panel_collapse" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Panel ID="Panel1" runat="server" Title="面板一" Width="650px" EnableFrame="true"
            BodyPadding="10px" EnableCollapse="True" IconUrl="~/images/16/8.png" 
            EnableCollapseEvent="true" OnCollapse="Panel1_CollapseExpand"
            EnableExpandEvent="true" OnExpand="Panel1_CollapseExpand" >
            <Items>
                <f:ContentPanel ID="ContentPanel1" Title="面板二" ShowBorder="true" Height="200px"
                    BodyPadding="10px" EnableCollapse="true" ShowHeader="true" 
                    EnableCollapseEvent="true" OnCollapse="ContentPanel1_CollapseExpand"
                    EnableExpandEvent="true" OnExpand="ContentPanel1_CollapseExpand"
                    runat="server">
                    展开折叠这两个面板。
                </f:ContentPanel>
            </Items>
        </f:Panel>
    </form>
</body>
</html>
