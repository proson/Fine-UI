<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkbox.aspx.cs" Inherits="FineUI.Examples.form.checkbox" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:SimpleForm ID="SimpleForm1" BodyPadding="5px" Width="550px" EnableFrame="true" EnableCollapse="true"
            Title="简单表单" runat="server">
            <Items>
                <f:CheckBox ID="CheckBox2" ShowLabel="false" runat="server" Text="复选框" Checked="True">
                </f:CheckBox>
                <f:Button ID="btnSelectCheckBox" Text="选择/反选上面的复选框" OnClick="btnSelectCheckBox_Click"
                    runat="server">
                </f:Button>
                <f:Label ID="Label1" runat="server" ShowEmptyLabel="true">
                </f:Label>
                <f:CheckBox ID="CheckBox1" ShowLabel="false" runat="server" Text="自动回发的复选框（AutoPostBack=True）" OnCheckedChanged="CheckBox1_CheckedChanged"
                    Checked="True" AutoPostBack="True">
                </f:CheckBox>
                <f:Label ID="labResult" runat="server" ShowLabel="false">
                </f:Label>

            </Items>

        </f:SimpleForm>
    </form>
</body>
</html>
