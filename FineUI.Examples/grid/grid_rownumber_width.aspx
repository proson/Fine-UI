<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_rownumber_width.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_rownumber_width" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Grid ID="Grid1" Title="表格" EnableFrame="true" EnableCollapse="true" Width="800px" PageSize="10" ShowBorder="true" ShowHeader="true"
            AllowPaging="true" runat="server" EnableCheckBoxSelect="True"
            DataKeyNames="Id" IsDatabasePaging="true" OnPageIndexChange="Grid1_PageIndexChange">
            <Columns>
                <f:RowNumberField EnablePagingNumber="true" Width="30px" />
                <f:BoundField Width="150px" DataField="Id" HeaderText="ID" />
                <f:BoundField ExpandUnusedSpace="true" DataField="EntranceTime" HeaderText="时间" />
            </Columns>
        </f:Grid>
        <br />
        <f:Button ID="Button1" runat="server" Text="选中了哪些行" OnClick="Button1_Click">
        </f:Button>
        <br />
        <f:Label ID="labResult" EncodeText="false" runat="server">
        </f:Label>
    </form>
</body>
</html>
