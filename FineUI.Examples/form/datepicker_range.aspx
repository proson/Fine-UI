<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="datepicker_range.aspx.cs"
    Inherits="FineUI.Examples.form.datepicker_range" %>

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
                <f:DatePicker runat="server" Required="true" Label="日期" EmptyText="限制范围的日期" ID="DatePicker1"
                    ShowRedStar="True">
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
