<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tooltip.aspx.cs" Inherits="FineUI.Examples.form.tooltip" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <f:PageManager ID="PageManager1" runat="server" />
    <f:Label ID="Label1" Text="中国科学技术大学" ToolTipTitle="中国科学技术大学" ToolTip="中国科学技术大学是中国科学院所属的一所以前沿科学和高新技术为主、兼有特色管理和人文学科的综合性全国重点大学。"
        runat="server">
    </f:Label>
    <br />
    <f:HyperLink ID="HyperLink1" Text="中国科学技术大学" ToolTip="1958年9月创建于北京，首任校长由郭沫若兼任。它的创办被称为“我国教育史和科学史上的一项重大事件”。"
        ToolTipTitle="中国科学技术大学" Target="_blank" NavigateUrl="http://www.ustc.edu.cn/"
        runat="server">
    </f:HyperLink>
    <br />
    <f:Image ID="Image1" runat="server" Icon="World" ToolTip="这是一张象征地球的图片">
    </f:Image>
    <br />
    <f:Image ID="Image2" runat="server" ImageWidth="32" ImageHeight="32" ImageCssStyle="border:solid 1px #ccc;padding:5px;"
        ImageUrl="../images/logo/favicon.gif" ToolTipAutoHide="false" ToolTipTitle="不会自动消失的提示框"
        ToolTip="这个提示不会自动消失，点击其他地方才会消失">
    </f:Image>
    </form>
</body>
</html>
