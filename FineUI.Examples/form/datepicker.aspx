<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="datepicker.aspx.cs" Inherits="FineUI.Examples.form.datepicker" %>

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
                <f:DatePicker runat="server" Required="true" Label="开始日期" EmptyText="请选择开始日期"
                    ID="DatePicker1" ShowRedStar="True">
                </f:DatePicker>
                <f:DatePicker ID="DatePicker2" Required="true" Readonly="false" CompareControl="DatePicker1" DateFormatString="yyyy-MM-dd"
                    CompareOperator="GreaterThan" CompareMessage="结束日期应该大于开始日期" Label="结束日期"
                    runat="server" ShowRedStar="True">
                </f:DatePicker>
                <f:Button ID="btnSubmit" runat="server" ValidateForms="SimpleForm1" Text="提交表单"
                    OnClick="btnSubmit_Click">
                </f:Button>
                <f:Label ID="labResult" ShowLabel="false" runat="server">
                </f:Label>
            </Items>
        </f:SimpleForm>
    </form>
</body>
</html>
