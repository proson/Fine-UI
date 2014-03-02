<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="custom_postback.aspx.cs"
    Inherits="FineUI.Examples.other.custom_postback" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:SimpleForm ID="SimpleForm1" runat="server" Width="600px" BodyPadding="5px" EnableFrame="true" EnableCollapse="true"
            Title="简单表单">
            <Items>
                <f:TextBox ID="TextBox1" runat="server" ShowLabel="false" EmptyText="输入一些文字并按 ENTER 键">
                </f:TextBox>
                <f:TextBox ID="TextBox2" runat="server" ShowLabel="false">
                </f:TextBox>
            </Items>
        </f:SimpleForm>
    </form>
    <script src="../js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">

        F.ready(function () {
            var textbox1ID = '<%= TextBox1.ClientID %>';
            var textbox1 = F(textbox1ID);
            textbox1.on("specialkey", function (box, e) {
                if (e.getKey() == e.ENTER) {
                    __doPostBack('', 'TextBox1_specialkey');
                }
            });
        });

    </script>
</body>
</html>
