<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="window_iframe.aspx.cs"
    Inherits="FineUI.Examples.iframe.window_iframe" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        body.f-body {
            padding: 0;
        }

        .steps {
            border: solid 1px red;
            margin: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" AutoSizePanelID="Panel1" runat="server" />
        <f:Panel ID="Panel1" ShowBorder="false" ShowHeader="false" Layout="Fit" BodyPadding="5px"
            runat="server">
            <Toolbars>
                <f:Toolbar runat="server">
                    <Items>
                        <f:Button ID="btnClose" Text="关闭" EnablePostBack="false" Icon="SystemClose" runat="server">
                        </f:Button>
                        <f:Button ID="btnClosePostBack" Text="保存数据" ValidateForms="SimpleForm1" OnClick="btnClosePostBack_Click" Icon="SystemSave"
                            runat="server">
                        </f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>
            <Items>
                <f:SimpleForm ID="SimpleForm1" ShowBorder="false"
                    ShowHeader="false" AutoScroll="true" BodyPadding="5px" runat="server" EnableCollapse="True">
                    <Items>
                        <f:Label ID="Label2" EncodeText="false" CssClass="steps" ShowEmptyLabel="false" Text="按照如下步骤操作来观察“确认关闭”对话框：<ul><li>编辑本表单（比如选中复选框、修改日期）</li><li>点击窗体右上角关闭图标、点击关闭按钮或者按下ESC键</li><li>弹出确认关闭窗体的对话框</li></ul>" runat="server" />
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
