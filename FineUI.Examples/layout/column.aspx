<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="column.aspx.cs" Inherits="FineUI.Examples.layout.column" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .columnpanel {
            margin-right: 5px;
        }

        .rowpanel {
            margin-bottom: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Panel ID="Panel2" runat="server" Height="250px" Width="850px" ShowBorder="True" EnableFrame="true" EnableCollapse="true"
            BodyPadding="5px" Layout="Column" ShowHeader="True" Title="面板（Height=250px Width=750px Layout=Column）">
            <Items>
                <f:Panel ID="Panel1" Width="200px" Height="150px"
                    runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="false">
                    <Items>
                        <f:Label runat="server" Text="Width=200px Height=150px">
                        </f:Label>
                    </Items>
                </f:Panel>
                <f:Panel ID="Panel4" ColumnWidth="60%" runat="server"
                    BodyPadding="5px" ShowBorder="true" ShowHeader="false" Layout="Fit">
                    <Items>
                        <f:Label ID="Label1" runat="server" Text="ColumnWidth=60%<br />长长的文本1<br />长长的文本2<br />长长的文本3<br />长长的文本4"
                            EncodeText="false">
                        </f:Label>
                    </Items>
                </f:Panel>
                <f:Panel ID="Panel3" ColumnWidth="40%" runat="server"
                    BodyPadding="5px" ShowBorder="true" ShowHeader="false">
                    <Items>
                        <f:Label ID="Label2" runat="server" Text="ColumnWidth=40%">
                        </f:Label>
                    </Items>
                </f:Panel>
            </Items>
        </f:Panel>
        <br />
        <f:Panel ID="Panel5" runat="server" Height="250px" Width="850px" ShowBorder="True" EnableFrame="true" EnableCollapse="true"
            BodyPadding="5px" Layout="Column" ShowHeader="True" Title="面板（Height=250px Width=750px Layout=Column）">
            <Items>
                <f:Panel ID="Panel6" Width="200px" Height="150px" CssClass="columnpanel"
                    runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="false">
                    <Items>
                        <f:Label ID="Label3" runat="server" Text="Width=200px Height=150px CssClass=columnpanel">
                        </f:Label>
                    </Items>
                </f:Panel>
                <f:Panel ID="Panel7" ColumnWidth="60%" CssClass="columnpanel"
                    runat="server" BodyPadding="5px" ShowBorder="true" ShowHeader="false" Layout="Fit">
                    <Items>
                        <f:Label ID="Label4" runat="server" Text="ColumnWidth=60% CssClass=columnpanel<br />长长的文本1<br />长长的文本2<br />长长的文本3<br />长长的文本4"
                            EncodeText="false">
                        </f:Label>
                    </Items>
                </f:Panel>
                <f:Panel ID="Panel8" ColumnWidth="40%" runat="server"
                    BodyPadding="5px" ShowBorder="true" ShowHeader="false">
                    <Items>
                        <f:Label ID="Label5" runat="server" Text="ColumnWidth=40%">
                        </f:Label>
                    </Items>
                </f:Panel>
            </Items>
        </f:Panel>
        <br />
        <f:Panel ID="Panel9" Height="350px" Width="850px" Layout="Column" BodyPadding="5px" EnableFrame="true" EnableCollapse="true"
            ShowBorder="true" ShowHeader="true" runat="server"
            Title="面板（Height=350px Width=750px Layout=Column BodyPadding=5px）">
            <Items>
                <f:Panel ID="Panel13" ColumnWidth="50%" CssClass="columnpanel" ShowBorder="false"
                    ShowHeader="false" runat="server">
                    <Items>
                        <f:Panel ID="Panel14" Height="150px" CssClass="rowpanel" runat="server" BodyPadding="5px"
                            ShowBorder="true" ShowHeader="false">
                            <Items>
                                <f:Label ID="Label8" runat="server" Text="Height=100px CssClass=rowpanel">
                                </f:Label>
                            </Items>
                        </f:Panel>
                        <f:Panel ID="Panel15" Height="100px" runat="server" BodyPadding="5px" ShowBorder="true"
                            ShowHeader="false">
                            <Items>
                                <f:Label ID="Label9" runat="server" Text="Height=100px">
                                </f:Label>
                            </Items>
                        </f:Panel>
                    </Items>
                </f:Panel>
                <f:Panel ID="Panel16" ColumnWidth="50%" ShowBorder="false" ShowHeader="false" runat="server">
                    <Items>
                        <f:Panel ID="Panel17" Height="100px" CssClass="rowpanel" runat="server" BodyPadding="5px"
                            ShowBorder="true" ShowHeader="false">
                            <Items>
                                <f:Label ID="Label10" runat="server" Text="Height=100px CssClass=rowpanel">
                                </f:Label>
                            </Items>
                        </f:Panel>
                        <f:Panel ID="Panel18" Height="150px" runat="server" BodyPadding="5px" ShowBorder="true"
                            ShowHeader="false">
                            <Items>
                                <f:Label ID="Label11" runat="server" Text="Height=150px">
                                </f:Label>
                            </Items>
                        </f:Panel>
                    </Items>
                </f:Panel>
            </Items>
        </f:Panel>
        <br />
        <br />
        使用HBox布局实现与上例相同的界面：
        <br />
        ===========================================================================
        <br />
        <f:Panel ID="Panel10" Height="350px" Width="850px" Layout="HBox" BoxConfigAlign="Stretch" EnableFrame="true" EnableCollapse="true"
            BoxConfigPosition="Start" BoxConfigPadding="5" BoxConfigChildMargin="0 5 0 0"
            ShowBorder="true" ShowHeader="true" runat="server"
            Title="面板（Layout=HBox BoxConfigAlign=Stretch BoxConfigPosition=Start BoxConfigPadding=5 BoxConfigChildMargin=0 5 0 0）">
            <Items>
                <f:Panel ID="Panel11" BoxFlex="1" ShowBorder="false" ShowHeader="false" runat="server">
                    <Items>
                        <f:Panel ID="Panel12" Height="150px" CssClass="rowpanel" runat="server" BodyPadding="5px"
                            ShowBorder="true" ShowHeader="false">
                            <Items>
                                <f:Label ID="Label6" runat="server" Text="Height=100px CssClass=rowpanel">
                                </f:Label>
                            </Items>
                        </f:Panel>
                        <f:Panel ID="Panel19" Height="100px" runat="server" BodyPadding="5px" ShowBorder="true"
                            ShowHeader="false">
                            <Items>
                                <f:Label ID="Label7" runat="server" Text="Height=100px">
                                </f:Label>
                            </Items>
                        </f:Panel>
                    </Items>
                </f:Panel>
                <f:Panel ID="Panel20" BoxFlex="1" BoxMargin="0" ShowBorder="false" ShowHeader="false" runat="server">
                    <Items>
                        <f:Panel ID="Panel21" Height="100px" CssClass="rowpanel" runat="server" BodyPadding="5px"
                            ShowBorder="true" ShowHeader="false">
                            <Items>
                                <f:Label ID="Label12" runat="server" Text="Height=100px CssClass=rowpanel">
                                </f:Label>
                            </Items>
                        </f:Panel>
                        <f:Panel ID="Panel22" Height="150px" runat="server" BodyPadding="5px" ShowBorder="true"
                            ShowHeader="false">
                            <Items>
                                <f:Label ID="Label13" runat="server" Text="Height=150px">
                                </f:Label>
                            </Items>
                        </f:Panel>
                    </Items>
                </f:Panel>
            </Items>
        </f:Panel>
    </form>
</body>
</html>
