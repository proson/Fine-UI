<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dropdownlist_compositelist.aspx.cs"
    Inherits="FineUI.Examples.dropdownlist.dropdownlist_compositelist" %>

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
                <f:DropDownList runat="server" ID="DropDownList1">
                </f:DropDownList>
                <f:Button ID="btnSelectItem6" Text="选中“选项 6”" runat="server" OnClick="btnSelectItem6_Click"
                    CssClass="inline">
                </f:Button>
                <f:Button ID="btnGetSelection" Text="获取此下拉列表的选中项" runat="server" OnClick="btnGetSelection_Click">
                </f:Button>
                <f:Label runat="server" ID="labResult">
                </f:Label>
            </Items>
        </f:SimpleForm>
        <br />
        <br />
    </form>
</body>
</html>
