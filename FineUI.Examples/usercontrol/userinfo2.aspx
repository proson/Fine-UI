<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userinfo2.aspx.cs" Inherits="FineUI.Examples.usercontrol.userinfo2" %>

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
        <f:Panel runat="server" ID="Panel1" Width="600px" EnableFrame="true" EnableCollapse="true"
            Height="300px" Layout="VBox" BoxConfigAlign="Stretch" BoxConfigPosition="Start"
            BoxConfigPadding="5" BoxConfigChildMargin="0 0 5 0" Title="页面/面板一（Layout=VBox, Panel->(UserControlConnector->UserInfoControl,Panel)）">
            <Items>
                <f:UserControlConnector ID="UserControlConnector1" runat="server">
                    <uc1:UserInfoControl ID="UserInfoControl1" UserName="陈萍萍" UserAge="20" UserCountry="合肥"
                        runat="server" />
                </f:UserControlConnector>
                <f:Panel runat="server" ID="Panel3" BodyPadding="5px" BoxFlex="1" BoxMargin="0"
                    Title="页面/面板二">
                    <Items>
                        <f:Label runat="server" Text="胡斐今年22岁，住在驻马店。">
                        </f:Label>
                    </Items>
                </f:Panel>
            </Items>
        </f:Panel>
        <br />
        <f:Panel runat="server" ID="Panel2" Width="600px" EnableFrame="true" EnableCollapse="true"
            Height="300px" Layout="VBox" BoxConfigAlign="Stretch" BoxConfigPosition="Start"
            BoxConfigPadding="5" BoxConfigChildMargin="0 0 5 0" Title="页面/面板一">
            <Items>
                <f:UserControlConnector ID="UserControlConnector2" runat="server">
                    <uc1:UserInfoControl ID="UserInfoControl2" UserName="陈萍萍" UserAge="20" UserCountry="合肥"
                        runat="server" />
                </f:UserControlConnector>
                <f:UserControlConnector ID="UserControlConnector3" runat="server">
                    <uc1:UserInfoControl ID="UserInfoControl3" Properties="{BoxMargin:'0',BoxFlex:1}" UserName="胡斐" UserAge="22" UserCountry="驻马店"
                        runat="server" />
                </f:UserControlConnector>
            </Items>
        </f:Panel>
        <br />
        <f:Panel runat="server" ID="Panel4" Width="600px" EnableFrame="true" EnableCollapse="true"
            Height="300px" Layout="VBox" BoxConfigAlign="Stretch" BoxConfigPosition="Start"
            BoxConfigPadding="5" BoxConfigChildMargin="0 0 5 0" Title="页面/面板二">
            <Items>
                <f:UserControlConnector ID="UserControlConnector4" runat="server">
                    <uc1:UserInfoControl ID="UserInfoControl4" UserName="陈萍萍" UserAge="20" UserCountry="合肥"
                        runat="server" />
                    <uc1:UserInfoControl ID="UserInfoControl5" UserName="胡斐" UserAge="22" UserCountry="驻马店"
                        runat="server" />
                </f:UserControlConnector>
            </Items>
        </f:Panel>
    </form>
</body>
</html>
