<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menucheckbox.aspx.cs" Inherits="FineUI.Examples.toolbar.menucheckbox" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Panel ShowBorder="true" BodyPadding="5px" Height="300px" Width="650px" Title="面板" EnableFrame="true" EnableCollapse="true"
            runat="server">
            <Toolbars>
                <f:Toolbar runat="server">
                    <Items>
                        <f:Button EnablePostBack="false" ID="btnLangMenu" Text="系统语言" runat="server">
                            <Menu runat="server">
                                <f:MenuCheckBox Text="English" ID="MenuLangEnglish" GroupName="MenuLang" AutoPostBack="true"
                                    OnCheckedChanged="MenuLang_CheckedChanged" Checked="true" runat="server">
                                </f:MenuCheckBox>
                                <f:MenuCheckBox Text="简体中文" ID="MenuLangZHCN" GroupName="MenuLang" AutoPostBack="true"
                                    OnCheckedChanged="MenuLang_CheckedChanged" runat="server">
                                </f:MenuCheckBox>
                                <f:MenuCheckBox Text="繁體中文" ID="MenuLangZHTW" GroupName="MenuLang" AutoPostBack="true"
                                    OnCheckedChanged="MenuLang_CheckedChanged" runat="server">
                                </f:MenuCheckBox>
                            </Menu>
                        </f:Button>
                        <f:Button EnablePostBack="false" ID="btnSiteMenu" Text="喜欢的站点" runat="server">
                            <Menu runat="server">
                                <f:MenuCheckBox Text="baidu.com" ID="MenuSiteBaidu" AutoPostBack="true" OnCheckedChanged="MenuSite_CheckedChanged"
                                    Checked="true" runat="server">
                                </f:MenuCheckBox>
                                <f:MenuCheckBox Text="google.com" ID="MenuSiteGoogle" Checked="true" AutoPostBack="true"
                                    OnCheckedChanged="MenuSite_CheckedChanged" runat="server">
                                </f:MenuCheckBox>
                                <f:MenuCheckBox Text="microsoft.com" ID="MenuSiteMicrosoft" AutoPostBack="true" OnCheckedChanged="MenuSite_CheckedChanged"
                                    runat="server">
                                </f:MenuCheckBox>
                            </Menu>
                        </f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>
            <Items>
                <f:Label ID="labLangResult" runat="server">
                </f:Label>
                <f:Label ID="labSiteResult" runat="server">
                </f:Label>
            </Items>
        </f:Panel>
    </form>
</body>
</html>
