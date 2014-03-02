<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dropdownlist_simulate_tree.aspx.cs"
    Inherits="FineUI.Examples.data.dropdownlist_simulate_tree" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:SimpleForm ID="SimpleForm1" BodyPadding="5px" runat="server" LabelWidth="150px" Width="650px" EnableFrame="true" EnableCollapse="true"
            ShowBorder="True" Title="简单表单" ShowHeader="True">
            <Items>
                <f:DropDownList Label="模拟树的下拉列表" AutoPostBack="false" Required="true" EnableSimulateTree="true"
                    ShowRedStar="true" runat="server" ID="ddlBox">
                </f:DropDownList>

                <f:Button ID="Button1" Text="获取选中项" runat="server" OnClick="Button1_Click">
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
