<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fileupload.aspx.cs" Inherits="FineUI.Examples.form.fileupload" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        .result img {
            border: 1px solid #CCCCCC;
            max-width: 550px;
            padding: 3px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:SimpleForm ID="SimpleForm1" BodyPadding="5px" runat="server" Width="550px" EnableFrame="true" EnableCollapse="true"
            ShowBorder="True" Title="表单" ShowHeader="True">
            <Items>
                <f:TextBox runat="server" Label="用户名" ID="tbxUseraName" Required="true" ShowRedStar="true">
                </f:TextBox>
                <f:FileUpload runat="server" ID="filePhoto" EmptyText="请选择一张照片" Label="个人头像" Required="true"
                    ShowRedStar="true">
                </f:FileUpload>
                <f:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" ValidateForms="SimpleForm1"
                    Text="提交">
                </f:Button>
            </Items>
        </f:SimpleForm>
        <f:Label ID="labResult" EncodeText="false" runat="server">
        </f:Label>
    </form>
</body>
</html>
