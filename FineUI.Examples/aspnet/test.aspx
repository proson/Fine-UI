<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="FineUI.Examples.aspnet.test" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <f:PageManager ID="PageManager1" AjaxAspnetControls="Label1,Literal1,Literal2_Container"
        runat="server" />
    <asp:Label ID="Label1" Text="Label1" runat="server"></asp:Label>
    <br />
    <asp:Literal ID="Literal1" Text="Literal1" runat="server"></asp:Literal>
    <br />
    <div id="Literal2_Container">
        <asp:Literal ID="Literal2" Text="Literal2" runat="server"></asp:Literal>
    </div>
    <br />
    <f:Button ID="Button1" runat="server" Text="点击此按钮弹出一个带滚动条的window" OnClick="Button1_Click">
    </f:Button>
    <br />
    <f:Window ID="EditTaskWin" Title="测试window里滚动条" Hidden="true" EnableIFrame="true"
        runat="server" IsModal="true" Width="650px" Height="300px" EnableClose="true"
        EnableMaximize="true" Target="Parent" WindowPosition="Center">
    </f:Window>
    <div style="width: 486px; height: 566px; border: solid 1px red;">
        <iframe frameborder="0" src="./TestWindow.htm" name="x1_3337cc1b7b50416b883681252a6dd644"
            style="overflow:auto;height:100%;width:100%; border: solid 1px green;">
        </iframe>
    </div>
    </form>
</body>
</html>
