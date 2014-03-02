<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="passvalue_iframe.aspx.cs"
    Inherits="FineUI.Examples.iframe.passvalue_iframe" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:SimpleForm ID="SimpleForm1" Title="表单" BodyPadding="5px" EnableFrame="true"
            runat="server" Width="650px" EnableCollapse="True">
            <Items>
                <f:TextBox Label="你所在的省份" ID="TextBox1" runat="server">
                </f:TextBox>
                <f:Button ID="Button1" EnablePostBack="false" runat="server" Text="从列表中选择">
                </f:Button>
            </Items>
        </f:SimpleForm>
        <f:Window ID="Window1" Title="编辑" Hidden="true" EnableIFrame="true" runat="server"
            EnableMaximize="true" EnableResize="true" Target="Parent" OnClose="Window1_Close"
            IsModal="True" Width="850px" Height="450px">
        </f:Window>
        <f:Label ID="labResult" CssStyle="font-weight:bold;" runat="server">
        </f:Label>
        <br />
    </form>
</body>
</html>
