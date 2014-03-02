<%@ Page Language="C#" ValidateRequest="false" AutoEventWireup="true" CodeBehind="grid_iframe_window.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_iframe_window" %>

<!DOCTYPE html>
<html>
<head id="head1" runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        body.f-body {
            padding: 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" AutoSizePanelID="Panel1" runat="server" />
        <f:Panel ID="Panel1" runat="server" Layout="Fit" ShowBorder="False" ShowHeader="false"
            BodyPadding="5px">
            <Toolbars>
                <f:Toolbar ID="Toolbar1" runat="server">
                    <Items>
                        <f:Button ID="btnClose" EnablePostBack="false" Text="关闭" runat="server" Icon="SystemClose">
                        </f:Button>
                        <f:Button ID="btnSaveContinue" Text="回发-关闭-回发父页面" runat="server" Icon="SystemSave"
                            OnClick="btnSaveContinue_Click">
                        </f:Button>
                        <f:Button ID="btnSaveRefresh" Text="回发-关闭-刷新父页面" runat="server" Icon="SystemSave"
                            OnClick="btnSaveRefresh_Click">
                        </f:Button>
                        <f:ToolbarFill ID="ToolbarFill1" runat="server">
                        </f:ToolbarFill>

                        <f:ToolbarText ID="ToolbarText1" Text="提示一" runat="server">
                        </f:ToolbarText>
                        <f:ToolbarSeparator ID="ToolbarSeparator2" runat="server">
                        </f:ToolbarSeparator>
                        <f:ToolbarText ID="ToolbarText2" Text="提示二&nbsp;&nbsp;" runat="server">
                        </f:ToolbarText>
                    </Items>
                </f:Toolbar>
            </Toolbars>
            <Items>
                <f:Panel ID="Panel2" Layout="Fit" runat="server" ShowBorder="false" ShowHeader="false">
                    <Items>
                        <f:SimpleForm ID="SimpleForm1" ShowBorder="false" ShowHeader="false"
                            AutoScroll="true" BodyPadding="5px" runat="server" EnableCollapse="True">
                            <Items>
                                <f:Label ID="Label2" Label="申请人" Text="sanshi" runat="server" />
                                <f:Label ID="Label3" Label="电话" Text="0551-1234567" runat="server" />
                                <f:NumberBox ID="NumberBox1" Label="数量" Required="true" ShowRedStar="true" runat="server" />
                                <f:CheckBox ID="CheckBox1" runat="server" Text="" Label="是否审批">
                                </f:CheckBox>
                                <f:DatePicker ID="DatePicker1" Required="True" ShowRedStar="true" runat="server"
                                    SelectedDate="2008-05-09" Label="申请日期" Text="2008-05-09">
                                </f:DatePicker>
                                <f:TextArea ID="TextArea2" Label="描述" runat="server" Required="True" ShowRedStar="true" />
                                <f:HtmlEditor ID="HtmlEditor1" Label="详细描述" Height="150px" runat="server">
                                </f:HtmlEditor>
                            </Items>
                        </f:SimpleForm>
                    </Items>
                </f:Panel>
            </Items>
        </f:Panel>
    </form>
</body>
</html>
