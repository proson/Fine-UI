<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="datepicker_autopostback.aspx.cs"
    Inherits="FineUI.Examples.form.datepicker_autopostback" %>

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
            Title="简单表单（AutoPostBack）" runat="server">
            <Items>
                <f:DatePicker runat="server" Required="true" AutoPostBack="true" OnTextChanged="DatePicker1_TextChanged"
                    Label="开始日期" EmptyText="请选择开始日期" ID="DatePicker1" ShowRedStar="True">
                </f:DatePicker>
                <f:DatePicker ID="DatePicker2" Required="true" Readonly="false" CompareControl="DatePicker1"
                    DateFormatString="yyyy-MM-dd" CompareOperator="GreaterThan" CompareMessage="结束日期应该大于开始日期"
                    Label="结束日期" runat="server" ShowRedStar="True">
                </f:DatePicker>
                <f:Button ID="Button1" runat="server" ValidateForms="SimpleForm1" Text="提交表单"
                    OnClick="Button1_Click">
                </f:Button>
                <f:Label ID="labResult" ShowLabel="false" runat="server">
                </f:Label>
            </Items>
        </f:SimpleForm>
        <br />
        <f:SimpleForm ID="SimpleForm2" BodyPadding="5px" Width="550px" EnableFrame="true" EnableCollapse="true"
            Title="简单表单（EnableDateSelectEvent）" runat="server">
            <Items>
                <f:DatePicker runat="server" Required="true" EnableDateSelectEvent="true" OnDateSelect="DatePicker3_DateSelect"
                    Label="开始日期" EmptyText="请选择开始日期" ID="DatePicker3" ShowRedStar="True">
                </f:DatePicker>
                <f:DatePicker ID="DatePicker4" Required="true" Readonly="false" CompareControl="DatePicker3"
                    DateFormatString="yyyy-MM-dd" CompareOperator="GreaterThan" CompareMessage="结束日期应该大于开始日期"
                    Label="结束日期" runat="server" ShowRedStar="True">
                </f:DatePicker>
                <f:Button ID="Button2" runat="server" ValidateForms="SimpleForm1" Text="提交表单" OnClick="Button2_Click">
                </f:Button>
                <f:Label ID="labResult2" ShowLabel="false" runat="server">
                </f:Label>
            </Items>
        </f:SimpleForm>
        <br />
        <f:SimpleForm ID="SimpleForm3" BodyPadding="5px" Width="550px" EnableFrame="true" EnableCollapse="true"
            Title="简单表单（EnableDateSelectEvent）" runat="server">
            <Items>
                <f:DatePicker runat="server" Required="true" EnableBlurEvent="true" OnBlur="DatePicker5_Blur"
                    Label="开始日期" EmptyText="请选择开始日期" ID="DatePicker5" ShowRedStar="True">
                </f:DatePicker>
                <f:DatePicker ID="DatePicker6" Required="true" Readonly="false" CompareControl="DatePicker3"
                    DateFormatString="yyyy-MM-dd" CompareOperator="GreaterThan" CompareMessage="结束日期应该大于开始日期"
                    Label="结束日期" runat="server" ShowRedStar="True">
                </f:DatePicker>
                <f:Button ID="Button3" runat="server" ValidateForms="SimpleForm3" Text="提交表单" OnClick="Button3_Click">
                </f:Button>
                <f:Label ID="labResult3" ShowLabel="false" runat="server">
                </f:Label>
            </Items>
        </f:SimpleForm>
        <br />
        注意：DatePicker的TextChanged事件（启用AutoPostBack），与DateSelect事件（启用EnableDateSelectEvent）的效果是一样的。
    </form>
</body>
</html>
