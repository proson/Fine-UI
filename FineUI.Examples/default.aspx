<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="FineUI.Examples._default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>FineUI 在线示例 - 基于 ExtJS 的开源 ASP.NET 控件库</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
    <meta name="Title" content="基于 ExtJS 的开源 ASP.NET 控件库(ExtJS based open source ASP.NET Controls)" />
    <meta name="Description" content="FineUI 的使命是创建 No JavaScript，No CSS，No UpdatePanel，No ViewState，No WebServices 的网站应用程序" />
    <meta name="Keywords" content="开源,ASP.NET,控件库,ExtJS,AJAX,Web2.0" />
    <link href="css/default.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" AutoSizePanelID="RegionPanel1" runat="server"></f:PageManager>
        <f:RegionPanel ID="RegionPanel1" ShowBorder="false" runat="server">
            <Regions>
                <f:Region ID="Region1" Margins="0 0 0 0" ShowBorder="false" Height="50px" ShowHeader="false"
                    Position="Top" Layout="Fit" runat="server">
                    <Items>
                        <f:ContentPanel ShowBorder="false" CssClass="jumbotron" ShowHeader="false" ID="ContentPanel1"
                            runat="server">
                            <div class="title">
                                <a href="http://fineui.com/" title="FineUI首页" class="logo">
                                    <img src="./images/logo/logo2.gif" alt="FineUI Logo" /></a>
                                <a href="./default.aspx">FineUI在线示例</a>
                            </div>
                            <div class="config">
                                
                            </div>
                        </f:ContentPanel>
                    </Items>
                </f:Region>
                <f:Region ID="leftRegion" Split="true" Width="200px" ShowHeader="true" Title="示例菜单"
                    EnableCollapse="true" Layout="Fit" Position="Left" runat="server">
                </f:Region>
                <f:Region ID="mainRegion" ShowHeader="false" Layout="Fit" Margins="0 0 0 0" Position="Center"
                    runat="server">
                    <Items>
                        <f:TabStrip ID="mainTabStrip" EnableTabCloseMenu="true" EnableFrame="false" ShowBorder="false" runat="server">
                            <Tabs>
                                <f:Tab Title="首页" Layout="Fit" Icon="House" CssClass="maincontent" runat="server">
                                    <Toolbars>
                                        <f:Toolbar runat="server">
                                            <Items>
                                                <f:ToolbarFill ID="ToolbarFill2" runat="server">
                                                </f:ToolbarFill>
                                                <f:Button ID="btnGotoOpenSourceSite" Icon="DiskDownload" Text="下载全部示例" OnClientClick="window.open('http://fineui.codeplex.com/', '_blank');"
                                                    EnablePostBack="false" runat="server">
                                                </f:Button>
                                                <f:ToolbarSeparator ID="ToolbarSeparator1" runat="server">
                                                </f:ToolbarSeparator>
                                                <f:Button Icon="PageGo" Text="官网首页" EnablePostBack="false" OnClientClick="window.open('http://fineui.com/', '_blank');"
                                                    runat="server">
                                                </f:Button>
                                                <f:ToolbarSeparator ID="ToolbarSeparator2" runat="server">
                                                </f:ToolbarSeparator>
                                                <f:Button ID="Button1" Icon="PageGo" Text="论坛交流" OnClientClick="window.open('http://fineui.com/bbs/', '_blank');"
                                                    EnablePostBack="false" runat="server">
                                                </f:Button>
                                            </Items>
                                        </f:Toolbar>
                                    </Toolbars>
                                    <Items>
                                        <f:ContentPanel ShowBorder="false" BodyPadding="10px" ShowHeader="false" AutoScroll="true"
                                            runat="server">
                                            <h2>关于FineUI</h2>
                                            基于 ExtJS 的开源 ASP.NET 控件库
                                        
                                            <br />
                                            <h2>FineUI的使命</h2>
                                            创建 No JavaScript，No CSS，No UpdatePanel，No ViewState，No WebServices 的网站应用程序
                                        
                                            <br />
                                            <h2>支持的浏览器</h2>
                                            IE 8.0+、Chrome、Firefox、Opera、Safari
                                        
                                            <br />
                                            <h2>授权协议</h2>
                                            Apache License v2.0（ExtJS 库在 <a target="_blank" href="http://www.sencha.com/license">GPL v3</a> 协议下发布）
                                            
                                            <br />
                                            <h2>相关链接</h2>
                                            首页：<a target="_blank" href="http://fineui.com/">http://fineui.com/</a>
                                            <br />
                                            论坛：<a target="_blank" href="http://fineui.com/bbs/">http://fineui.com/bbs/</a>
                                            <br />
                                            示例：<a target="_blank" href="http://fineui.com/demo/">http://fineui.com/demo/</a>
                                            <br />
                                            文档：<a target="_blank" href="http://fineui.com/doc/">http://fineui.com/doc/</a>
                                            <br />
                                            下载：<a target="_blank" href="http://fineui.codeplex.com/">http://fineui.codeplex.com/</a>
                                            <br />
                                            <br />
                                            <br />
                                            注：FineUI 不再内置 ExtJS 库，请手工添加 ExtJS 库：<a target="_blank" href="http://fineui.com/bbs/forum.php?mod=viewthread&tid=3218">http://fineui.com/bbs/forum.php?mod=viewthread&tid=3218</a>

                                        </f:ContentPanel>
                                    </Items>
                                </f:Tab>
                            </Tabs>
                        </f:TabStrip>
                    </Items>
                </f:Region>
            </Regions>
        </f:RegionPanel>
        <f:Window ID="windowSourceCode" Icon="PageWhiteCode" Title="源代码" Hidden="true" EnableIFrame="true"
            runat="server" IsModal="true" Width="950px" Height="550px" EnableClose="true"
            EnableMaximize="true" EnableResize="true">
        </f:Window>
        <f:Menu ID="menuSettings" runat="server">
            <f:MenuButton ID="btnExpandAll" IconUrl="~/images/expand-all.gif" Text="展开菜单" EnablePostBack="false"
                runat="server">
            </f:MenuButton>
            <f:MenuButton ID="btnCollapseAll" IconUrl="~/images/collapse-all.gif" Text="折叠菜单"
                EnablePostBack="false" runat="server">
            </f:MenuButton>
            <f:MenuSeparator ID="MenuSeparator1" runat="server">
            </f:MenuSeparator>
            <f:MenuButton EnablePostBack="false" Text="菜单样式" ID="MenuStyle" runat="server">
                <Menu ID="Menu3" runat="server">
                    <f:MenuCheckBox Text="树菜单" ID="MenuStyleTree" Checked="true" GroupName="MenuStyle"
                        AutoPostBack="true" OnCheckedChanged="MenuStyle_CheckedChanged" runat="server">
                    </f:MenuCheckBox>
                    <f:MenuCheckBox Text="手风琴+树菜单" ID="MenuStyleAccordion" GroupName="MenuStyle" AutoPostBack="true"
                        OnCheckedChanged="MenuStyle_CheckedChanged" runat="server">
                    </f:MenuCheckBox>
                </Menu>
            </f:MenuButton>
            <f:MenuButton EnablePostBack="false" Text="语言" ID="MenuLang" runat="server">
                <Menu ID="Menu2" runat="server">
                    <f:MenuCheckBox Text="简体中文" ID="MenuLangZHCN" Checked="true" GroupName="MenuLang"
                        AutoPostBack="true" OnCheckedChanged="MenuLang_CheckedChanged" runat="server">
                    </f:MenuCheckBox>
                    <f:MenuCheckBox Text="繁體中文" ID="MenuLangZHTW" GroupName="MenuLang" AutoPostBack="true"
                        OnCheckedChanged="MenuLang_CheckedChanged" runat="server">
                    </f:MenuCheckBox>
                    <f:MenuCheckBox Text="English" ID="MenuLangEN" GroupName="MenuLang" AutoPostBack="true"
                        OnCheckedChanged="MenuLang_CheckedChanged" runat="server">
                    </f:MenuCheckBox>
                </Menu>
            </f:MenuButton>
            <f:MenuButton ID="MenuTheme" EnablePostBack="false" Text="主题" runat="server">
                <Menu ID="Menu4" runat="server">
                    <f:MenuCheckBox Text="Neptune" ID="MenuThemeNeptune" Checked="true" GroupName="MenuTheme"
                        AutoPostBack="true" OnCheckedChanged="MenuTheme_CheckedChanged" runat="server">
                    </f:MenuCheckBox>
                    <f:MenuCheckBox Text="Blue" ID="MenuThemeBlue" GroupName="MenuTheme"
                        AutoPostBack="true" OnCheckedChanged="MenuTheme_CheckedChanged" runat="server">
                    </f:MenuCheckBox>
                    <f:MenuCheckBox Text="Gray" ID="MenuThemeGray" GroupName="MenuTheme" AutoPostBack="true"
                        OnCheckedChanged="MenuTheme_CheckedChanged" runat="server">
                    </f:MenuCheckBox>
                    <f:MenuCheckBox Text="Access" ID="MenuThemeAccess" GroupName="MenuTheme" AutoPostBack="true"
                        OnCheckedChanged="MenuTheme_CheckedChanged" runat="server">
                    </f:MenuCheckBox>
                </Menu>
            </f:MenuButton>
            <f:MenuSeparator ID="MenuSeparator2" runat="server">
            </f:MenuSeparator>
            <f:MenuHyperLink ID="MenuHyperLink2" runat="server" Text="转到 v3.x 中文示例" NavigateUrl="http://fineui.com/demo_v3/" Target="_blank">
            </f:MenuHyperLink>
            <f:MenuHyperLink ID="MenuHyperLink1" runat="server" Text="转到 v3.x 英文示例" NavigateUrl="http://fineui.com/demo_en/" Target="_blank">
            </f:MenuHyperLink>
        </f:Menu>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/common/menu.xml"></asp:XmlDataSource>
    </form>
    <img src="images/logo/logo3.png" alt="FineUI 图标" id="logo" />
    <script src="./js/default.js" type="text/javascript"></script>
</body>
</html>
