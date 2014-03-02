<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dropdownlist_forceselection.aspx.cs"
    Inherits="FineUI.Examples.dropdownlist.dropdownlist_forceselection" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:SimpleForm ID="SimpleForm1" BodyPadding="5px" runat="server" Width="550px" EnableFrame="true" EnableCollapse="true"
            ShowBorder="True" Title="简单表单" ShowHeader="True">
            <Items>
                <f:DropDownList runat="server" ID="DropDownList1" EnableEdit="true" ForceSelection="false">
                    <f:ListItem Text="选项 1" Value="Value1" Selected="true" />
                    <f:ListItem Text="选项 2（不可选择）" Value="Value2" EnableSelect="false" />
                    <f:ListItem Text="选项 3（不可选择）" Value="Value3" EnableSelect="false" />
                    <f:ListItem Text="选项 4" Value="Value4" />
                    <f:ListItem Text="选项 5" Value="Value5" />
                    <f:ListItem Text="选项 6" Value="Value6" />
                    <f:ListItem Text="选项 7" Value="Value7" />
                    <f:ListItem Text="选项 8" Value="Value8" />
                    <f:ListItem Text="选项 9" Value="Value9" />
                    <f:ListItem Text="普通型1 < L > 1.5" Value="普通型1 < L > 1.5" />
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
        注：下拉列表的属性设置为EnableEdit="true" ForceSelection="false"。
    </form>
</body>
</html>
