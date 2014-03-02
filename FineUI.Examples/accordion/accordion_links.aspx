<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accordion_links.aspx.cs"
    Inherits="ExtAspNet.Examples.accordion.accordion_links" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Accordion ID="accordionMenu" Width="250px" Height="450px" runat="server" ShowBorder="true"
        ShowHeader="false" ShowCollapseTool="false">
        <Panes>
            <ext:AccordionPane ID="AccordionPane1" runat="server" Title="AccordionPane 1" IconUrl="../images/16/1.png"
                BodyPadding="2px 5px" ShowBorder="false">
                <Links>
                    <ext:AccordionLink OnClientClick="return false;" NavigateUrl="http://www.google.com"
                        Selected="true" Target="_blank" Text="Link 1" IconUrl="../images/16/2.png" runat="server" />
                    <ext:AccordionLink OnClientClick="return false;" NavigateUrl="http://www.google.com"
                        Target="_blank" Text="Link 2" IconUrl="../images/16/3.png" runat="server" />
                </Links>
            </ext:AccordionPane>
            <ext:AccordionPane ID="AccordionPane2" runat="server" Title="AccordionPane 2" IconUrl="../images/16/4.png"
                BodyPadding="2px 5px" ShowBorder="false">
                <Links>
                    <ext:AccordionLink NavigateUrl="http://www.google.com" Target="_blank" Text="Link 1"
                        IconUrl="../images/16/5.png" runat="server" />
                    <ext:AccordionLink ID="linkFYBX" NavigateUrl="http://www.google.com" Target="_blank"
                        Text="Link 2" IconUrl="../images/16/6.png" runat="server" />
                </Links>
            </ext:AccordionPane>
            <ext:AccordionPane ID="AccordionPane3" runat="server" Title="AccordionPane 3" IconUrl="../images/16/7.png"
                BodyPadding="2px 5px" ShowBorder="false">
                <Links>
                    <ext:AccordionLink ID="linkDSP" NavigateUrl="http://www.google.com" Target="_blank"
                        Text="Link 1" IconUrl="../images/16/8.png" runat="server" />
                    <ext:AccordionLink NavigateUrl="http://www.google.com" Target="_blank" Text="Link 2"
                        IconUrl="../images/16/9.png" runat="server" />
                </Links>
            </ext:AccordionPane>
        </Panes>
    </ext:Accordion>
    <br />
    <a href="#" onclick="activelinks('dsp');">Select Link 1 in Panel 3</a>
    <br />
    <iframe width="300px" height="100px" src="./accordion_links_iframe.htm"></iframe>
    </form>

    <script type="text/javascript">

        function activelinks(type) {

            var menu = Ext.getCmp('<%= accordionMenu.ClientID %>');

            switch (type) {
                case 'dsp':
                    menu.box_active('<%= linkDSP.ClientID %>');
                    break;
                case 'fybx':
                    menu.box_active('<%= linkFYBX.ClientID %>');
                    break;
            }

        }
        
    </script>

</body>
</html>
