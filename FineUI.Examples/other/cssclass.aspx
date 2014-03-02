<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cssclass.aspx.cs"
    Inherits="FineUI.Examples.other.cssclass" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        .red input {
            color: Red;
            font-weight: bold;
        }

        .red label {
            color: Red;
            font-weight: normal;
        }


        .blue input {
            color: Blue;
            font-weight: bold;
        }

        .blue label {
            color: Blue;
            font-weight: normal;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:SimpleForm ID="SimpleForm1" BodyPadding="5px" Width="550px" EnableFrame="true" EnableCollapse="true"
            Title="简单表单" runat="server">
            <Items>
                <f:TextBox runat="server" Label="用户名" CssClass="red" EmptyText="输入用户名" Text="张三"
                    ID="tbxUseraName">
                </f:TextBox>
                <f:TextBox runat="server" Label="密码" CssClass="red" TextMode="Password"
                    ID="tbxPassword">
                </f:TextBox>
                <f:Button ID="btnSwitchClass" Text="切换样式" runat="server" OnClick="btnSwitchClass_Click">
                </f:Button>
            </Items>
        </f:SimpleForm>
        <br />
    </form>
</body>
</html>
