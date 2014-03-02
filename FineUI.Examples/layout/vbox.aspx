<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vbox.aspx.cs" Inherits="FineUI.Examples.layout.vbox" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Panel ID="Panel2" runat="server" Height="450px" Width="850px" ShowBorder="True" EnableFrame="true" EnableCollapse="true"
            Layout="VBox" BoxConfigAlign="Stretch" BoxConfigPosition="Start" BoxConfigPadding="5"
            BoxConfigChildMargin="0 0 5 0" ShowHeader="True" Title="面板（Layout=VBox BoxConfigAlign=Stretch BoxConfigPosition=Start BoxConfigPadding=5 BoxConfigChildMargin=0 0 5 0）">
            <Items>
                <f:Panel ID="Panel1" Title="面板1" BoxFlex="1" runat="server"
                    BodyPadding="5px" ShowBorder="true" ShowHeader="false">
                    <Items>
                        <f:Label ID="Label1" runat="server" Text="BoxFlex=1">
                        </f:Label>
                    </Items>
                </f:Panel>
                <f:Panel ID="Panel3" Title="面板2" Height="100px" runat="server"
                    BodyPadding="5px" ShowBorder="true" ShowHeader="false">
                    <Items>
                        <f:Label ID="Label2" runat="server" Text="Height=100px">
                        </f:Label>
                    </Items>
                </f:Panel>
                <f:Panel ID="Panel4" Title="面板3" BoxFlex="2" BoxMargin="0"
                    runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="false">
                    <Items>
                        <f:Label ID="Label3" runat="server" Text="BoxFlex=2 BoxMargin=0">
                        </f:Label>
                    </Items>
                </f:Panel>
            </Items>
        </f:Panel>
        <br />
        <br />
        <f:Panel ID="Panel5" runat="server" Height="450px" Width="850px" ShowBorder="True" EnableFrame="true" EnableCollapse="true"
            Layout="VBox" BoxConfigAlign="Stretch" BoxConfigPosition="End" BoxConfigPadding="5"
            BoxConfigChildMargin="0 0 5 0" ShowHeader="True" Title="面板（Layout=VBox BoxConfigAlign=Stretch BoxConfigPosition=End BoxConfigPadding=5 BoxConfigChildMargin=0 0 5 0）">
            <Items>
                <f:Panel ID="Panel6" Title="面板1" Height="100px" runat="server"
                    BodyPadding="5px" ShowBorder="true" ShowHeader="false">
                    <Items>
                        <f:Label ID="Label4" runat="server" Text="Height=100px">
                        </f:Label>
                    </Items>
                </f:Panel>
                <f:Panel ID="Panel7" Title="面板2" Height="100px" runat="server"
                    BodyPadding="5px" ShowBorder="true" ShowHeader="false">
                    <Items>
                        <f:Label ID="Label5" runat="server" Text="Height=100px">
                        </f:Label>
                    </Items>
                </f:Panel>
                <f:Panel ID="Panel8" Title="面板3" Height="100px" BoxMargin="0"
                    runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="false">
                    <Items>
                        <f:Label ID="Label6" runat="server" Text="Height=100px BoxMargin=0">
                        </f:Label>
                    </Items>
                </f:Panel>
            </Items>
        </f:Panel>
        <br />
        <br />
        <f:Panel ID="Panel9" runat="server" Height="450px" Width="850px" ShowBorder="True" EnableFrame="true" EnableCollapse="true"
            Layout="VBox" BoxConfigAlign="Stretch" BoxConfigPosition="Center" BoxConfigPadding="5"
            BoxConfigChildMargin="0 0 5 0" ShowHeader="True" Title="面板（Layout=VBox BoxConfigAlign=Stretch BoxConfigPosition=Center BoxConfigPadding=5 BoxConfigChildMargin=0 0 5 0）">
            <Items>
                <f:Panel ID="Panel10" Title="面板1" Height="100px" runat="server"
                    BodyPadding="5px" ShowBorder="true" ShowHeader="false">
                    <Items>
                        <f:Label ID="Label7" runat="server" Text="Height=100px">
                        </f:Label>
                    </Items>
                </f:Panel>
                <f:Panel ID="Panel11" Title="面板2" Height="100px" runat="server"
                    BodyPadding="5px" ShowBorder="true" ShowHeader="false">
                    <Items>
                        <f:Label ID="Label8" runat="server" Text="Height=100px">
                        </f:Label>
                    </Items>
                </f:Panel>
                <f:Panel ID="Panel12" Title="面板3" Height="100px" BoxMargin="0"
                    runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="false">
                    <Items>
                        <f:Label ID="Label9" runat="server" Text="Height=100px BoxMargin=0">
                        </f:Label>
                    </Items>
                </f:Panel>
            </Items>
        </f:Panel>
        <br />
        <br />
        <f:Panel ID="Panel13" runat="server" Height="450px" Width="850px" ShowBorder="True" EnableFrame="true" EnableCollapse="true"
            Layout="VBox" BoxConfigAlign="Start" BoxConfigPosition="Center" BoxConfigPadding="5"
            BoxConfigChildMargin="0 0 5 0" ShowHeader="True" Title="面板（Layout=VBox BoxConfigAlign=Start BoxConfigPosition=Center BoxConfigPadding=5 BoxConfigChildMargin=0 0 5 0）">
            <Items>
                <f:Panel ID="Panel14" Title="面板1" Width="200px" Height="100px"
                    runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="false">
                    <Items>
                        <f:Label ID="Label10" runat="server" Text="Width=200px Height=100px">
                        </f:Label>
                    </Items>
                </f:Panel>
                <f:Panel ID="Panel15" Title="面板2" Width="400px" Height="100px"
                    runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="false">
                    <Items>
                        <f:Label ID="Label11" runat="server" Text="Width=400px Height=100px">
                        </f:Label>
                    </Items>
                </f:Panel>
                <f:Panel ID="Panel16" Title="面板3" Width="600px" BoxMargin="0"
                    Height="100px" runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="false">
                    <Items>
                        <f:Label ID="Label12" runat="server" Text="Width=600px Height=100px BoxMargin=0">
                        </f:Label>
                    </Items>
                </f:Panel>
            </Items>
        </f:Panel>
        <br />
        <br />
        <f:Panel ID="Panel17" runat="server" Height="450px" Width="850px" ShowBorder="True" EnableFrame="true" EnableCollapse="true"
            Layout="VBox" BoxConfigAlign="StretchMax" BoxConfigPosition="Center" BoxConfigPadding="5"
            BoxConfigChildMargin="0 0 5 0" ShowHeader="True" Title="面板（Layout=VBox BoxConfigAlign=StretchMax BoxConfigPosition=Center BoxConfigPadding=5 BoxConfigChildMargin=0 0 5 0）">
            <Items>
                <f:Panel ID="Panel18" Title="面板1" Width="200px" Height="100px"
                    runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="false">
                    <Items>
                        <f:Label ID="Label13" runat="server" Text="Width=200px Height=100px">
                        </f:Label>
                    </Items>
                </f:Panel>
                <f:Panel ID="Panel19" Title="面板2" Width="400px" Height="100px"
                    runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="false">
                    <Items>
                        <f:Label ID="Label14" runat="server" Text="Width=400px Height=100px">
                        </f:Label>
                    </Items>
                </f:Panel>
                <f:Panel ID="Panel20" Title="面板3" Width="600px" BoxMargin="0"
                    Height="100px" runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="false">
                    <Items>
                        <f:Label ID="Label15" runat="server" Text="Width=600px Height=100px BoxMargin=0">
                        </f:Label>
                    </Items>
                </f:Panel>
            </Items>
        </f:Panel>
    </form>
</body>
</html>
