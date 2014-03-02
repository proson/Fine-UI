<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form_compare.aspx.cs" Inherits="FineUI.Examples.form.form_compare" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <f:PageManager ID="PageManager1" runat="server" />
    <f:SimpleForm ID="SimpleForm1" BodyPadding="5px" Width="550px" LabelWidth="180px" EnableFrame="true" EnableCollapse="true"
        runat="server"  ShowBorder="True" ShowHeader="True"
        Title="简单表单">
        <Items>
            <f:DatePicker ID="DatePicker1" Label="开始日期" Required="true" runat="server">
            </f:DatePicker>
            <f:DatePicker ID="DatePicker2" Label="结束日期（大于开始日期）" Required="true" CompareControl="DatePicker1"
                CompareOperator="GreaterThan" CompareMessage="结束日期应该大于开始日期！" runat="server">
            </f:DatePicker>
            <f:Label Text="&nbsp;" runat="server">
            </f:Label>
            <f:TextBox ID="TextBox1" Required="true" Label="文本框 1" runat="server">
            </f:TextBox>
            <f:TextBox ID="TextBox2" Required="true" Label="文本框 2（等于文本框 1）" CompareControl="TextBox1"
                CompareOperator="Equal" CompareMessage="文本框 2 应该等于文本框 1！" runat="server">
            </f:TextBox>
            <f:Label Text="&nbsp;" runat="server">
            </f:Label>
            <f:NumberBox ID="NumberBox1" Required="true" Label="数字框 1" runat="server">
            </f:NumberBox>
            <f:NumberBox ID="NumberBox2" Required="true" Label="数字框 2（大于等于数字框 1）" CompareControl="NumberBox1"
                CompareOperator="GreaterThanEqual" CompareMessage="数字框 2 应该大于等于数字框 1!" runat="server">
            </f:NumberBox>
            <f:Label Text="&nbsp;" runat="server">
            </f:Label>
            <f:Label ID="Label1" runat="server" Label="标签 1" Text="88">
            </f:Label>
            <f:NumberBox ID="NumberBox3" Required="true" Label="文本框 3（大于等于标签 1）" CompareControl="Label1"
                CompareOperator="GreaterThanEqual" CompareType="Int" CompareMessage="文本框 3 应该大于等于标签 1！"
                runat="server">
            </f:NumberBox>
            <f:Label runat="server">
            </f:Label>
            <f:Button ID="btnSubmit" ValidateForms="SimpleForm1" CssClass="inline" Text="提交表单"
                runat="server">
            </f:Button>
            <f:Button ID="btnReset" Text="重置表单" EnablePostBack="false" runat="server">
            </f:Button>
        </Items>
    </f:SimpleForm>
    </form>
</body>
</html>
