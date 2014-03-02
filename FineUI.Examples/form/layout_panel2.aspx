<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="layout_panel2.aspx.cs"
    Inherits="FineUI.Examples.form.layout_panel2" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        .mright
        {
            margin-right: 5px;
        }
        .datecontainer .x-form-field-trigger-wrap
        {
            margin-right: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <f:PageManager ID="PageManager1" runat="server" FormMessageTarget="Qtip" />
    <f:SimpleForm ID="SimpleForm1" Width="600px" BodyPadding="5px" Title="表单" runat="server">
        <Items>
            <f:Panel ID="Panel2" ShowHeader="false" CssClass="x-form-item" ShowBorder="false"
                Layout="Column" runat="server">
                <Items>
                    <f:Label ID="Label2" Width="100px" runat="server" CssClass="inline" ShowLabel="false"
                        Text="用户名：">
                    </f:Label>
                    <f:TextBox ID="TextBox2" Required="true" CssClass="mright" runat="server">
                    </f:TextBox>
                    <f:Button ID="Button3" Text="按钮一" CssClass="mright" runat="server">
                    </f:Button>
                    <f:Button ID="Button4" Text="按钮二" runat="server">
                    </f:Button>
                </Items>
            </f:Panel>
            <f:Panel ID="Panel1" ShowHeader="false" ShowBorder="false" Layout="Column" CssClass="x-form-item datecontainer"
                runat="server">
                <Items>
                    <f:Label ID="Label1" runat="server" Width="100px" CssClass="inline" ShowLabel="false"
                        Text="作息起止时间：">
                    </f:Label>
                    <f:DatePicker ID="DatePicker1" Required="true" Width="150px" runat="server">
                    </f:DatePicker>
                    <f:DatePicker ID="DatePicker2" Required="true" CompareControl="DatePicker1" CompareOperator="GreaterThan"
                        CompareMessage="结束日期应该大于开始日期！" Width="150px" runat="server">
                    </f:DatePicker>
                </Items>
            </f:Panel>
            <f:Panel ID="Panel3" ShowHeader="false" ShowBorder="false" Layout="Column" CssClass="x-form-item datecontainer"
                runat="server">
                <Items>
                    <f:Label ID="Label3" runat="server" Width="100px" CssClass="inline" ShowLabel="false"
                        Text="上班起止时间：">
                    </f:Label>
                    <f:DatePicker ID="DatePicker3" Required="true" ColumnWidth="50%" runat="server">
                    </f:DatePicker>
                    <f:DatePicker ID="DatePicker4" Required="true" CompareControl="DatePicker3" CompareOperator="GreaterThan"
                        CompareMessage="结束日期应该大于开始日期！" ColumnWidth="50%" runat="server">
                    </f:DatePicker>
                </Items>
            </f:Panel>
            <f:Panel ID="Panel4" ShowHeader="false" ShowBorder="false" Layout="Column" CssClass="x-form-item datecontainer"
                runat="server">
                <Items>
                    <f:Label ID="Label4" runat="server" Width="100px" CssClass="inline" ShowLabel="false"
                        Text="工作时间：">
                    </f:Label>
                    <f:TextBox Width="40px" Required="true" runat="server">
                    </f:TextBox>
                    <f:Label runat="server" Text="&nbsp;小时&nbsp;">
                    </f:Label>
                    <f:TextBox Width="40px" Required="true" ID="TextBox1" runat="server">
                    </f:TextBox>
                    <f:Label ID="Label5" runat="server" Text="&nbsp;分钟">
                    </f:Label>
                </Items>
            </f:Panel>
            <f:Button ID="Button1" Text="提交表单" ValidateForms="SimpleForm1" runat="server">
            </f:Button>
        </Items>
    </f:SimpleForm>
    <br />
    注意：本页面中表单验证失败的错误提示类型是Qtip，而不是默认的Side。
    </form>
</body>
</html>
