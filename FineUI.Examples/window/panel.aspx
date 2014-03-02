<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="panel.aspx.cs" Inherits="FineUI.Examples.window.panel" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Panel ID="Panel1" runat="server" Title="面板" Width="650px" EnableFrame="true"
            BodyPadding="10px" EnableCollapse="True" IconUrl="~/images/16/8.png">
            <Toolbars>
                <f:Toolbar runat="server">
                    <Items>
                        <f:ToolbarText Text="工具条文本一" ID="ToolbarText1" runat="server">
                        </f:ToolbarText>
                        <f:ToolbarSeparator ID="ToolbarSeparator1" runat="server">
                        </f:ToolbarSeparator>
                        <f:ToolbarText Text="工具条文本二" ID="ToolbarText2" runat="server">
                        </f:ToolbarText>
                        <f:ToolbarSeparator ID="ToolbarSeparator2" runat="server">
                        </f:ToolbarSeparator>
                        <f:Button ID="Button1" Text="工具条按钮" runat="server" EnablePostBack="false">
                        </f:Button>
                        <f:ToolbarFill ID="ToolbarFill1" runat="server">
                        </f:ToolbarFill>
                        <f:ToolbarText Text="工具条文本四" ID="ToolbarText4" runat="server">
                        </f:ToolbarText>
                    </Items>
                </f:Toolbar>
            </Toolbars>
            <Items>
                <f:ContentPanel ID="ContentPanel1" Title="内容面板" ShowBorder="true" Height="200px"
                    BodyPadding="10px" EnableCollapse="true" ShowHeader="true"
                    runat="server">
                    可以在此放置Asp.Net控件或者<a href="http://www.w3schools.com/html/" target="_blank">HTML</a>标签。
                </f:ContentPanel>
            </Items>
        </f:Panel>
        <br />
        <f:Button ID="Button2" CssClass="inline" Text="检查面板的折叠状态" runat="server" OnClick="Button2_Click">
        </f:Button>
        <f:Button ID="Button4" Text="更新面板的标题" runat="server" OnClick="Button4_Click">
        </f:Button>
        <br />
        <f:Button ID="Button3" Text="展开/折叠内容面板" runat="server" OnClick="Button3_Click">
        </f:Button>
        <br />
        <f:Button ID="Button5" CssClass="inline" Text="更新工具条文本一的值" runat="server" OnClick="Button5_Click">
        </f:Button>
        <f:Button ID="Button6" Text="显示/隐藏工具条文本一" runat="server" OnClick="Button6_Click">
        </f:Button>
    </form>
</body>
</html>
