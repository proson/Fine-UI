<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userinfo.aspx.cs" Inherits="FineUI.Examples.usercontrol.userinfo" %>

<%@ Register Src="UserInfoControl.ascx" TagName="UserInfoControl" TagPrefix="uc1" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server"></f:PageManager>
        <f:ContentPanel runat="server" ID="Panel1" Width="600px" EnableFrame="true" EnableCollapse="true" BodyPadding="5px"
            Height="200px" Title="页面/面板一（ContentPanel->UserInfoControl）">
            <uc1:UserInfoControl ID="UserInfoControl1" UserName="陈萍萍" UserAge="20" UserCountry="合肥"
                runat="server" />
        </f:ContentPanel>
        <br />
        <f:Panel runat="server" ID="Panel2" Width="600px" Height="200px" EnableFrame="true" EnableCollapse="true" BodyPadding="5px"
            Title="页面/面板二（Panel->UserControlConnector->UserInfoControl）">
            <Items>
                <f:UserControlConnector runat="server">
                    <uc1:UserInfoControl ID="UserInfoControl2" UserName="陈萍萍" UserAge="20" UserCountry="合肥"
                        runat="server" />
                </f:UserControlConnector>
            </Items>
        </f:Panel>
        <br />
        <f:Panel runat="server" ID="Panel3" Width="600px" Height="200px" EnableFrame="true" EnableCollapse="true" BodyPadding="5px"
            Layout="Fit" Title="页面/面板三（Layout=Fit, Panel->UserControlConnector->UserInfoControl）">
            <Items>
                <f:UserControlConnector runat="server">
                    <uc1:UserInfoControl ID="UserInfoControl3" UserName="陈萍萍" UserAge="20" UserCountry="合肥"
                        runat="server" />
                </f:UserControlConnector>
            </Items>
        </f:Panel>
    </form>
</body>
</html>
