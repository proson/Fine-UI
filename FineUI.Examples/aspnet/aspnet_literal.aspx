<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aspnet_literal.aspx.cs"
    Inherits="FineUI.Examples.aspnet.aspnet_literal" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <f:PageManager ID="PageManager1" AjaxAspnetControls="Label1,Literal1,Literal2_Container" runat="server" />
    <asp:Label ID="Label1" Text="Label1" runat="server"></asp:Label>
    <br />
    <asp:Literal ID="Literal1" Text="Literal1" runat="server"></asp:Literal>
    <br />
    <div id="Literal2_Container">
        <asp:Literal ID="Literal2" Text="Literal2" runat="server"></asp:Literal>
    </div>
    <br />
    <f:Button ID="Button1" runat="server" Text="更新上面几个文本值" OnClick="Button1_Click">
    </f:Button>
    <br />
    注意：只有Label1和Literal2的值更新了。
    </form>
</body>
</html>
