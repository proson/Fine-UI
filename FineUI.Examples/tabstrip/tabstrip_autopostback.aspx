<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tabstrip_autopostback.aspx.cs"
    Inherits="FineUI.Examples.tabstrip.tabstrip_autopostback" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .highlight span{
            font-weight: bold;
            color: red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:TabStrip ID="TabStrip1" Width="850px" Height="350px" EnableFrame="true"
            AutoPostBack="true" OnTabIndexChanged="TabStrip1_TabIndexChanged"
            ShowBorder="true" ActiveTabIndex="1" runat="server">
            <Tabs>
                <f:Tab Title="标签一" BodyPadding="5px"
                    Layout="Fit" runat="server">
                    <Items>
                        <f:SimpleForm ID="SimpleForm1" ShowBorder="false"
                            ShowHeader="false" Title="SimpleForm1" runat="server">
                            <Items>
                                <f:Label ID="Label1" CssClass="highlight" Label="文本" Text="初始文本" runat="server" />
                                <f:NumberBox ID="NumberBox1" Label="数字输入框" Required="true" ShowRedStar="true"
                                    runat="server" />
                                <f:TextBox ID="TextBox1" Label="文本框" runat="server" Required="True" ShowRedStar="true">
                                </f:TextBox>
                                <f:DatePicker ID="DatePicker1" runat="server" SelectedDate="2008-05-09" Label="日期选择器"
                                    Text="2008-05-09" Required="true" ShowRedStar="true">
                                </f:DatePicker>
                                <f:TextArea ID="TextArea2" Label="多行文本框" runat="server" Required="True" ShowRedStar="true" />
                            </Items>
                        </f:SimpleForm>
                    </Items>
                </f:Tab>
                <f:Tab Title="标签二" BodyPadding="5px" runat="server">
                    <Items>
                        <f:Label ID="Label2" CssClass="highlight" Text="初始文本" runat="server" />
                    </Items>
                </f:Tab>
                <f:Tab Title="标签三" BodyPadding="5px"
                    runat="server">
                    <Items>
                        <f:Label ID="Label3" CssClass="highlight" Text="初始文本" runat="server" />
                    </Items>
                </f:Tab>
            </Tabs>
        </f:TabStrip>
        <br />
        <f:Button ID="Button2" CssStyle="margin-right:5px;float:left;" ValidateForms="SimpleForm1"
            Text="验证第一个标签中的表单" runat="server">
        </f:Button>
        <f:Button ID="Button3" Text="选中下一个标签" OnClick="Button3_Click" runat="server">
        </f:Button>
    </form>
</body>
</html>
