<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="button_menu.aspx.cs" Inherits="FineUI.Examples.button.button_menu" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <f:PageManager ID="PageManager1" runat="server" />
    <f:Button ID="btnMenu" Text="中国科学技术大学" EnablePostBack="false" runat="server">
        <Menu runat="server">
            <f:MenuHyperLink runat="server" Icon="TagGreen" Target="_blank" NavigateUrl="http://scms.ustc.edu.cn/"
                Text="化学与材料科学学院">
            </f:MenuHyperLink>
            <f:MenuHyperLink runat="server" Icon="TagBlue" Target="_blank" NavigateUrl="http://business.ustc.edu.cn/zh_CN/"
                Text="管理学院">
                <Menu runat="server">
                    <f:MenuHyperLink runat="server" Icon="TagPink" Target="_blank" NavigateUrl="http://is.ustc.edu.cn/"
                        Text="工商管理系">
                    </f:MenuHyperLink>
                    <f:MenuHyperLink runat="server" Icon="TagPurple" Target="_blank" NavigateUrl="http://stat.ustc.edu.cn/"
                        Text="统计与金融系">
                    </f:MenuHyperLink>
                </Menu>
            </f:MenuHyperLink>
        </Menu>
    </f:Button>
    <br />
    <br />
    <f:Button ID="Button1" Text="中国科学技术大学（动态创建下拉菜单）" EnablePostBack="false" runat="server">
    </f:Button>
    <br />
    <br />
    </form>
</body>
</html>
