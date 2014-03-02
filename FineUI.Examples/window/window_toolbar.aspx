<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="window_toolbar.aspx.cs"
    Inherits="FineUI.Examples.window.window_toolbar" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Window ID="Window2" Width="650px" Height="300px" Icon="TagBlue" Title="窗体" Hidden="false"
            EnableCollapse="true" runat="server" EnableResize="true" BodyPadding="5px"
            Plain="false" IsModal="false">
            <Items>
                <f:Label runat="server" Text="这是窗体的内容" ID="labWindowContent">
                </f:Label>
            </Items>
            <Toolbars>
                <f:Toolbar ID="Toolbar3" Position="Top" runat="server">
                    <Items>
                        <f:ToolbarText Text="工具条文本一" ID="ToolbarText3" runat="server">
                        </f:ToolbarText>
                        <f:ToolbarSeparator ID="ToolbarSeparator2" runat="server">
                        </f:ToolbarSeparator>
                        <f:ToolbarText Text="工具条文本二" ID="ToolbarText4" runat="server">
                        </f:ToolbarText>
                        <f:ToolbarSeparator ID="ToolbarSeparator1" runat="server">
                        </f:ToolbarSeparator>
                        <f:Button ID="Button1" runat="server" EnablePostBack="false" Text="工具栏按钮">
                        </f:Button>
                    </Items>
                </f:Toolbar>
                <f:Toolbar runat="server" Position="Footer" ToolbarAlign="Right">
                    <Items>
                        <f:Button ID="btnChangeContent" runat="server" OnClick="btnChangeContent_Click" Text="改变窗体内容">
                        </f:Button>
                        <f:Button ID="btnClose" runat="server" OnClick="btnClose_Click" Text="关闭窗体">
                        </f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>
        </f:Window>
    </form>
</body>
</html>
