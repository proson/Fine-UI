<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iframe_iframe_window2.aspx.cs"
    Inherits="FineUI.Examples.iframe.iframe_iframe_window2" %>

<!DOCTYPE html>
<html>
<head runat="server">
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
        <f:PageManager ID="PageManager1" AutoSizePanelID="formPanel" runat="server" />
        <f:Panel ID="formPanel" ShowBorder="false" ShowHeader="false" Layout="Fit" BodyPadding="5px"
            runat="server">
            <Toolbars>
                <f:Toolbar runat="server">
                    <Items>
                        <f:Button ID="btnClosePostBack" Text="关闭-回发父页面" EnablePostBack="false" runat="server">
                        </f:Button>
                        <f:Button ID="btnPostBackClosePostBack" Text="回发-关闭-回发父页面" OnClick="btnPostBackClosePostBack_Click"
                            runat="server">
                        </f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>
            <Items>
                <f:SimpleForm ID="SimpleForm1" ShowBorder="false"
                    ShowHeader="false" AutoScroll="true" BodyPadding="5px" runat="server" EnableCollapse="True">
                    <Items>
                        <f:Label ID="Label2" Label="文本" Text="sanshi" runat="server" />
                        <f:NumberBox ID="NumberBox1" Label="数字输入框" Required="true" ShowRedStar="true" runat="server" />
                        <f:CheckBox ID="CheckBox1" runat="server" Label="复选框">
                        </f:CheckBox>
                        <f:TextBox ID="TextBox1" Label="文本输入框" runat="server" ShowRedStar="true" Required="True">
                        </f:TextBox>
                        <f:DatePicker ID="DatePicker1" runat="server" SelectedDate="2008-05-09" Label="日期选择器"
                            Text="2008-05-09">
                        </f:DatePicker>
                    </Items>
                </f:SimpleForm>
            </Items>
        </f:Panel>
    </form>
</body>
</html>
