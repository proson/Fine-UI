<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="button_in_form.aspx.cs"
    Inherits="FineUI.Examples.other.button_in_form" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        .btn-in-form
        {
            margin-bottom: 4px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <f:PageManager ID="PageManager1" runat="server" />
    <f:Form ID="SimpleForm1" BodyPadding="5px" Width="550px" LabelAlign="Left" LabelWidth="80px"
         Title="表单" runat="server">
        <Rows>
            <f:FormRow ID="FormRow5">
                <Items>
                    <f:TextBox ID="TextBox1" runat="server" Label="文本一">
                    </f:TextBox>
                    <f:Button ID="Button4" CssClass="btn-in-form" runat="server" Text="按钮一">
                    </f:Button>
                </Items>
            </f:FormRow>
            <f:FormRow ID="FormRow6" runat="server">
                <Items>
                    <f:TextBox ID="TextBox2" runat="server" Label="文本二">
                    </f:TextBox>
                    <f:Button ID="Button3" CssClass="btn-in-form" runat="server" Text="按钮二">
                    </f:Button>
                </Items>
            </f:FormRow>
            <f:FormRow ID="FormRow7" runat="server">
                <Items>
                    <f:TextBox ID="TextBox3" runat="server" Label="文本三">
                    </f:TextBox>
                    <f:Button ID="Button1" CssClass="btn-in-form" runat="server" Text="按钮三">
                    </f:Button>
                </Items>
            </f:FormRow>
            <f:FormRow ID="FormRow8" runat="server">
                <Items>
                    <f:TextBox ID="TextBox4" runat="server" Label="文本四">
                    </f:TextBox>
                    <f:Button ID="Button2" CssClass="btn-in-form" runat="server" Text="按钮四">
                    </f:Button>
                </Items>
            </f:FormRow>
        </Rows>
    </f:Form>
    </form>
</body>
</html>
