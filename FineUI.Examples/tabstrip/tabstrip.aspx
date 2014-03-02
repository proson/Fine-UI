<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tabstrip.aspx.cs" Inherits="FineUI.Examples.tabstrip.tabstrip" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .highlight {
            color: red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:TabStrip ID="TabStrip1" Width="850px" Height="350px" ShowBorder="true" TabPosition="Top" EnableFrame="true"
            EnableTabCloseMenu="false" EnableTitleBackgroundColor="true" ActiveTabIndex="0"
            runat="server">
            <Tabs>
                <f:Tab Title="标签一" BodyPadding="5px" Layout="Fit"
                    runat="server">
                    <Items>
                        <f:SimpleForm ID="SimpleForm1" ShowBorder="false"
                            ShowHeader="false" Title="SimpleForm1" LabelWidth="120px" runat="server">
                            <Items>
                                <f:Label ID="Label1" Label="文本" Text="sanshi" CssClass="highlight" runat="server" />
                                <f:NumberBox ID="NumberBox1" Label="数字输入框" Required="true" ShowRedStar="true" runat="server" />
                                <f:TextBox ID="TextBox1" Label="文本输入框" runat="server" Required="True" ShowRedStar="true">
                                </f:TextBox>
                                <f:DatePicker ID="DatePicker1" runat="server" Label="日期选择器"
                                    Required="true" ShowRedStar="true">
                                </f:DatePicker>
                                <f:TextArea ID="TextArea2" Label="多行文本输入框" runat="server" Required="True" Height="100px" ShowRedStar="true" />
                            </Items>
                        </f:SimpleForm>
                    </Items>
                </f:Tab>
                <f:Tab Title="<span class='highlight'>标签二（高亮）</span>" BodyPadding="5px"
                    runat="server">
                    <Items>
                        <f:Button ID="Button1" Text="点击显示提示对话框" OnClick="Button1_Click" runat="server">
                        </f:Button>
                    </Items>
                </f:Tab>
                <f:Tab Title="标签三" BodyPadding="5px" runat="server">
                    <Items>
                        <f:Label ID="Label3" CssClass="highlight" Text="第三个标签的内容（已经应用了高亮样式）" runat="server" />
                    </Items>
                </f:Tab>
            </Tabs>
        </f:TabStrip>
        <br />
        <f:Button ID="Button2" CssStyle="margin-right:5px;float:left;" ValidateForms="SimpleForm1"
            Text="验证第一个标签中的表单" runat="server">
        </f:Button>
        <f:Button ID="Button3" Text="打开下一个标签" OnClick="Button3_Click" runat="server">
        </f:Button>
    </form>
</body>
</html>
