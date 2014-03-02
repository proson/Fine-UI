<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form_dynamic.aspx.cs" Inherits="FineUI.Examples.form.form_dynamic" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Form Width="550px" BodyPadding="5px" ID="Form2" EnableFrame="true" EnableCollapse="true"
            Title="表单" LabelWidth="120px" runat="server">
            <Rows>
                <f:FormRow>
                    <Items>
                        <f:Label ID="Label1" runat="server" ShowLabel="false" Text="这是一个标签">
                        </f:Label>
                    </Items>
                </f:FormRow>
            </Rows>
        </f:Form>
        <br />
        注：用户名和性别两个控件是动态创建的。
    <br />
        <br />
        <f:Button ID="Button1" runat="server" ValidateForms="Form2" ValidateTarget="Top"
            Text="验证表单并提交" OnClick="Button1_Click">
        </f:Button>
    </form>
</body>
</html>
