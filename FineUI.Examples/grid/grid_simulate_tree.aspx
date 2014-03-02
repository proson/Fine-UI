<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_simulate_tree.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_simulate_tree" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Grid ID="Grid1" Title="表格" EnableFrame="true" EnableCollapse="true" ShowBorder="true" ShowHeader="true"
            runat="server" EnableCheckBoxSelect="True" DataKeyNames="Id,Name" Width="800px">
            <Columns>
                <f:RowNumberField />
                <f:BoundField DataField="Name" DataSimulateTreeLevelField="TreeLevel" DataFormatString="{0}"
                    HeaderText="地区" ExpandUnusedSpace="True" />
                <f:ImageField Width="80px" DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
                    HeaderText="分组"></f:ImageField>
            </Columns>
        </f:Grid>
    </form>
</body>
</html>
