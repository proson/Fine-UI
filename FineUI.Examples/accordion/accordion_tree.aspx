<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accordion_tree.aspx.cs"
    Inherits="FineUI.Examples.accordion.accordion_tree" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        body.x-body {
            padding: 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" AutoSizePanelID="RegionPanel1" runat="server"></f:PageManager>
        <f:RegionPanel ID="RegionPanel1" ShowBorder="false" runat="server">
            <Regions>
                <f:Region ID="Region2" Split="true" Width="200px" Margins="0 0 0 0" ShowHeader="false"
                    Title="目录" EnableCollapse="true" Layout="Fit" Position="Left" runat="server">
                    <Items>
                        <f:Accordion runat="server" ShowBorder="false" ShowHeader="false" ShowCollapseTool="true">
                            <Panes>
                                <f:AccordionPane runat="server" Title="面板一" IconUrl="~/images/16/1.png" BodyPadding="2px 5px"
                                    Layout="Fit" ShowBorder="false">
                                    <Items>
                                        <f:Tree runat="server" EnableArrows="true" ShowBorder="false" ShowHeader="false" ID="treeMenu">
                                        </f:Tree>
                                    </Items>
                                </f:AccordionPane>
                                <f:AccordionPane runat="server" Title="面板二" IconUrl="~/images/16/4.png" BodyPadding="2px 5px"
                                    ShowBorder="false">
                                    <Items>
                                        <f:Label Text="面板二中的文本" runat="server">
                                        </f:Label>
                                    </Items>
                                </f:AccordionPane>
                            </Panes>
                        </f:Accordion>
                    </Items>
                </f:Region>
                <f:Region ID="Region3" ShowHeader="false" EnableIFrame="true" IFrameUrl="~/accordion/accordion_tree_index.htm"
                    IFrameName="main" Margins="0 0 0 0" Position="Center" runat="server">
                </f:Region>
            </Regions>
        </f:RegionPanel>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/common/menu.xml"></asp:XmlDataSource>
    </form>
</body>
</html>
