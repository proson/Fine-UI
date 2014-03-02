<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_simulate_tree_database_paging_dropdownlist.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_simulate_tree_database_paging_dropdownlist" %>

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
            runat="server" EnableCheckBoxSelect="True" AllowPaging="true" PageSize="1" IsDatabasePaging="true"
            DataKeyNames="Id,Name" Width="800px" Height="450px" OnPageIndexChange="Grid1_PageIndexChange">
            <Columns>
                <f:RowNumberField />
                <f:BoundField DataField="Name" DataSimulateTreeLevelField="TreeLevel" DataFormatString="{0}"
                    HeaderText="地区" ExpandUnusedSpace="True" />
                <f:ImageField Width="80px" DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
                    HeaderText="分组"></f:ImageField>
            </Columns>
            <PageItems>
                <f:DropDownList runat="server" ID="ddlSheng" Width="120px" AutoPostBack="true" OnSelectedIndexChanged="ddlSheng_SelectedIndexChanged">
                </f:DropDownList>
            </PageItems>
        </f:Grid>
    </form>
</body>
</html>
