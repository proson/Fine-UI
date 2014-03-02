<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form_validate.aspx.cs"
    Inherits="FineUI.Examples.form.form_validate" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:SimpleForm ID="SimpleForm1" runat="server" Width="650px" BodyPadding="5px" EnableFrame="true" EnableCollapse="true"
            Title="用户注册表单">
            <Items>
                <f:TextBox ID="tbxUserName" runat="server" Label="用户名" MinLength="3" Required="True"
                    ShowRedStar="True" Text="admin">
                </f:TextBox>
                <f:TextBox ID="tbxPassword" runat="server" Label="密码" Required="True" ShowRedStar="True"
                    TextMode="Password">
                </f:TextBox>
                <f:Button ID="btnRegister" runat="server" Text="注册" OnClick="btnRegister_Click"
                    ValidateForms="SimpleForm1" ValidateTarget="Top">
                </f:Button>
            </Items>
        </f:SimpleForm>
    </form>
</body>
</html>
