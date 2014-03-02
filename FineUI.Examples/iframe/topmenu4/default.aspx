<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="default.aspx.cs" Inherits="FineUI.Examples.iframe.topmenu4._default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>顶部菜单框架（四）</title>
    <link type="text/css" rel="stylesheet" href="./res/main.css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" AutoSizePanelID="RegionPanel1" runat="server"></f:PageManager>
        <f:RegionPanel ID="RegionPanel1" ShowBorder="false" runat="server">
            <Regions>
                <f:Region ID="Region1" Margins="0 0 0 0" ShowBorder="false" Height="102px" ShowHeader="false"
                    Position="Top" Layout="Fit" runat="server">
                    <Items>
                        <f:ContentPanel ShowBorder="false" CssClass="jumbotron" ShowHeader="false" runat="server">
                            <div class="wrap">
                                <div class="logos">
                                    XXX 管理系统
                                </div>
                                <div class="menu">
                                    <ul>
                                        <li class="selected menu-mail"><a href="javascript:;"><span>邮件收发</span></a> </li>
                                        <li class="menu-sms"><a href="javascript:;"><span>短信收发</span></a> </li>
                                        <li class="menu-sys"><a href="javascript:;"><span>系统管理</span></a> </li>
                                    </ul>
                                </div>
                                <div class="member">
                                    领先的 XXX 管理系统欢迎您！
                                </div>
                                <div class="exit">
                                    <a href="javascript:;">退出管理</a>
                                </div>
                            </div>
                        </f:ContentPanel>
                    </Items>
                </f:Region>
                <f:Region ID="Region2" Split="true" Width="200px"
                    Margins="0 0 0 0" ShowHeader="true" Title="业务菜单" Icon="Outline"
                    EnableCollapse="true" EnableIFrame="true" IFrameName="leftframe" IFrameUrl="about:blank"
                    Position="Left" runat="server">
                </f:Region>
                <f:Region ID="mainRegion" ShowHeader="false" Margins="0 0 0 0" Position="Center"
                    Layout="Fit" runat="server">
                    <Items>
                        <f:TabStrip ID="mainTabStrip" EnableTabCloseMenu="true" EnableFrame="false" ShowBorder="false" runat="server">
                            <Tabs>
                                <f:Tab ID="Tab1" Title="首页" Layout="Fit" Icon="House" CssClass="maincontent" runat="server">
                                    <Items>
                                        <f:ContentPanel ID="ContentPanel1" ShowBorder="false" BodyPadding="10px" ShowHeader="false" AutoScroll="true"
                                            runat="server">
                                            首页内容
                                        </f:ContentPanel>
                                    </Items>
                                </f:Tab>
                            </Tabs>
                        </f:TabStrip>
                    </Items>
                </f:Region>
            </Regions>
        </f:RegionPanel>
    </form>
    <script src="../../js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script>
        var mainTabStripClientID = '<%= mainTabStrip.ClientID %>';

        F.ready(function () {

            window.mainTabStrip = F(mainTabStripClientID);

            var menuLis = $('.menu ul li');

            function updateLeftMenu(menuType) {

                menuLis.removeClass('selected');
                menuLis.filter('.menu-' + menuType).addClass('selected');

                window.frames['leftframe'].location.href = './leftmenu.aspx?menu=' + encodeURIComponent(menuType);
            }

            // 点击顶部菜单，加载左侧IFrame菜单
            menuLis.click(function (e) {
                var $this = $(this);
                var classNames = /menu\-(\w+)/.exec($this.attr('class'));
                if (classNames.length == 2) {
                    var menuType = classNames[1];

                    updateLeftMenu(menuType);
                }
            });

            // 根据页面的Hash值，来初始化左侧IFrame菜单
            var hash = window.location.hash;
            var hashArray = /.+\/html\/(.+)\-\d+\.html/.exec(hash);
            if (hashArray && hashArray.length === 2) {
                updateLeftMenu(hashArray[1]);
            }

        });
    </script>
</body>
</html>
