<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="timepicker.aspx.cs" Inherits="FineUI.Examples.form.timepicker" %>

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
            <f:DatePicker runat="server" Required="true" EnableEdit="false" Label="日期" EmptyText="请选择日期"
                ID="DatePicker1" ShowRedStar="True">
            </f:DatePicker>
            <f:TimePicker ID="TimePicker1" ShowRedStar="True" EnableEdit="false" Label="时间" Increment="30"
                Required="true" EmptyText="请选择时间" runat="server">
            </f:TimePicker>
            <f:Button ID="btnSubmit" runat="server" ValidateForms="SimpleForm1" Text="提交表单" OnClick="btnSubmit_Click">
            </f:Button>
            <f:Label ID="labResult" ShowLabel="false" runat="server">
            </f:Label>
        </Items>
    </f:SimpleForm>
    <br />
    <br />
    注：本示例通过EnableEdit属性控制日期和时间选择器不可编辑。
    </form>
</body>
</html>
