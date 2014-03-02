<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form_center_button.aspx.cs"
    Inherits="FineUI.Examples.form.form_center_button" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        .mypanel {
            text-align: center;
            padding-top: 10px;
            margin-top: 10px;
            border-top: solid 1px #ccc;
        }

            .mypanel .mybutton {
                display: inline-block;
                *display: inline;
                margin-right: 10px;
            }
    </style>
</head>
<body>
    <form id="_form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Form Width="600px" BodyPadding="5px" ID="Form1" LabelWidth="100px" EnableFrame="true" EnableCollapse="true"
            runat="server" Title="表单">
            <Rows>
                <f:FormRow ColumnWidths="40% 60%">
                    <Items>
                        <f:Label ID="Label1" runat="server" Label="标签" Text="标签的值">
                        </f:Label>
                        <f:CheckBox ID="CheckBox1" runat="server" Text="复选框" Label="复选框" CssClass="redcolor">
                        </f:CheckBox>
                    </Items>
                </f:FormRow>
                <f:FormRow ColumnWidths="40% 60%">
                    <Items>
                        <f:DropDownList ID="DropDownList1" runat="server" Label="下拉列表" Required="true" ShowRedStar="True">
                            <f:ListItem Selected="true" Text="可选项 1" Value="0"></f:ListItem>
                            <f:ListItem Text="可选项 2" Value="1"></f:ListItem>
                        </f:DropDownList>
                        <f:TextBox ID="TextBox1" ShowRedStar="true" runat="server" Label="文本框" Required="true"
                            Text="">
                        </f:TextBox>
                    </Items>
                </f:FormRow>
                <f:FormRow>
                    <Items>
                        <f:Panel ID="Panel1" runat="server" ShowBorder="false"
                            CssClass="mypanel" ShowHeader="false">
                            <Items>
                                <f:Button runat="server" Text="验证此表单并提交" CssClass="mybutton" ValidateForms="Form1"
                                    ID="btnSubmitForm1" OnClick="btnSubmitForm1_Click">
                                </f:Button>
                                <f:Button ID="btnResetForm1" EnablePostBack="false" CssClass="mybutton" Text="重置表单"
                                    runat="server">
                                </f:Button>
                            </Items>
                        </f:Panel>
                    </Items>
                </f:FormRow>
            </Rows>
        </f:Form>
    </form>
</body>
</html>
