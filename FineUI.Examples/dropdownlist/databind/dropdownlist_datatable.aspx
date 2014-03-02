<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dropdownlist_datatable.aspx.cs"
    Inherits="FineUI.Examples.dropdownlist.dropdownlist_datatable" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:SimpleForm ID="SimpleForm1" BodyPadding="5px" runat="server" Width="450px" EnableFrame="true" EnableCollapse="true"
            ShowBorder="True" Title="简单表单" ShowHeader="True">
            <Items>
                <f:DropDownList runat="server" ID="DropDownList1" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </f:DropDownList>
                <f:Button ID="btnSelectItem6" Text="选中“选项 6”" runat="server" OnClick="btnSelectItem6_Click">
                </f:Button>
                <f:Label runat="server" ID="labResult">
                </f:Label>
            </Items>
        </f:SimpleForm>
        <br />
        <br />
        注：这个下拉列表在选择项改变时自动回发。
    </form>
</body>
</html>
