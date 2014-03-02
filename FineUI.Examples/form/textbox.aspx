<%@ Page Language="C#" ValidateRequest="false" AutoEventWireup="true" CodeBehind="textbox.aspx.cs"
    Inherits="FineUI.Examples.form.textbox" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:SimpleForm ID="SimpleForm1" BodyPadding="5px" runat="server" Width="550px" EnableFrame="true" EnableCollapse="true"
            Title="登录表单" ShowHeader="True">
            <Items>
                <f:TextBox runat="server" Label="用户名" ID="tbxUseraName" Required="true">
                </f:TextBox>
                <f:TextBox runat="server" ID="tbxPassword" Label="密码" TextMode="Password" Required="true">
                </f:TextBox>
                <f:Button ID="btnSubmit" CssClass="inline" runat="server" OnClick="btnSubmit_Click" ValidateForms="SimpleForm1"
                    Text="登录">
                </f:Button>
                <f:Button ID="btnReset" runat="server" EnablePostBack="false" Text="重置">
                </f:Button>
                <f:Label ID="labResult" ShowLabel="false" runat="server">
                </f:Label>
            </Items>
        </f:SimpleForm>
        <br />
    </form>
</body>
</html>
