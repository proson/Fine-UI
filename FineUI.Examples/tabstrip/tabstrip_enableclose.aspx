<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tabstrip_enableclose.aspx.cs"
    Inherits="FineUI.Examples.tabstrip.tabstrip_enableclose" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:TabStrip ID="TabStrip1" Width="850px" Height="350px" EnableTabCloseMenu="true" EnableFrame="true"
            ShowBorder="true" ActiveTabIndex="1" runat="server">
            <Tabs>
                <f:Tab ID="Tab1" Title="标签一" EnableClose="false" BodyPadding="5px" runat="server">
                    <Items>
                        <f:Label ID="Label5" Text="标签一中的文本" runat="server" />
                    </Items>
                </f:Tab>
                <f:Tab ID="Tab2" Title="标签二" BodyPadding="5px" EnableClose="true" runat="server">
                    <Items>
                        <f:Label ID="Label4" Text="标签二中的文本" runat="server" />
                    </Items>
                </f:Tab>
                <f:Tab ID="Tab3" Title="标签三" Hidden="true" BodyPadding="5px" EnableClose="true" runat="server">
                    <Items>
                        <f:Label ID="Label3" Text="标签三中的文本" runat="server" />
                    </Items>
                </f:Tab>
                <f:Tab ID="Tab4" Title="标签四" BodyPadding="5px" EnableClose="true" runat="server">
                    <Items>
                        <f:Label ID="Label2" Text="标签四中的文本" runat="server" />
                    </Items>
                </f:Tab>
                <f:Tab ID="Tab5" EnableClose="true" Title="标签五" BodyPadding="5px" runat="server">
                    <Items>
                        <f:Label ID="Label1" Text="标签五中的文本" runat="server" />
                    </Items>
                </f:Tab>
            </Tabs>
        </f:TabStrip>
        <br />
        <br />
        <f:Button ID="btnShowInClient" Text="显示标签三（客户端代码）" CssStyle="margin-right:5px;float:left;"
            EnablePostBack="false" runat="server">
        </f:Button>
        <f:Button ID="btnHideInClient" Text="隐藏标签三（客户端代码）" EnablePostBack="false" runat="server">
        </f:Button>
        <br />
        <f:Button ID="btnShowInServer" Text="显示标签三（服务端代码）" CssStyle="margin-right:5px;float:left;"
            runat="server" OnClick="btnShowInServer_Click">
        </f:Button>
        <f:Button ID="btnHideInServer" Text="隐藏标签三（服务端代码）" runat="server" OnClick="btnHideInServer_Click">
        </f:Button>
        <br />
        <br />
        <br />
    </form>
</body>
</html>
