<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="triggerbox_iframe.aspx.cs"
    Inherits="FineUI.Examples.iframe.triggerbox_iframe" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <f:PageManager ID="PageManager1" runat="server" />
    <f:SimpleForm ID="SimpleForm1" Title="在父页面弹出窗体"  BodyPadding="5px"
        runat="server" Width="600px" EnableCollapse="True">
        <Items>
            <f:TriggerBox ID="TriggerBox1" EnableEdit="false" Text="这个触发器输入框是只读的" EnablePostBack="false"
                TriggerIcon="Search" Label="触发器" runat="server">
            </f:TriggerBox>
            <f:DatePicker ID="DatePicker1" Label="日期选择器" Required="true" runat="server">
            </f:DatePicker>
            <f:Button ID="Button1" runat="server" OnClick="Button1_Click" ValidateForms="SimpleForm1"
                TabIndex="3" Text="提交">
            </f:Button>
            <f:HiddenField ID="HiddenField1" runat="server">
            </f:HiddenField>
        </Items>
    </f:SimpleForm>
    <f:Window ID="Window1" Title="编辑" Hidden="true" EnableIFrame="true" runat="server"
        EnableMaximize="true" EnableResize="true" Target="Parent" OnClose="Window1_Close"
        IsModal="True" Width="650px" Height="450px">
    </f:Window>
    <br />
    <f:SimpleForm ID="SimpleForm2" Title="在本页面弹出窗体"  BodyPadding="5px"
        runat="server" Width="600px" EnableCollapse="True">
        <Items>
            <f:HiddenField ID="HiddenField2" runat="server">
            </f:HiddenField>
            <f:TriggerBox ID="TriggerBox2" EnableEdit="false" Text="这个触发器输入框是只读的" EnablePostBack="false"
                TriggerIcon="Search" Label="触发器" runat="server">
            </f:TriggerBox>
            <f:Button ID="Button2" runat="server" OnClick="Button2_Click" TabIndex="3" Text="提交">
            </f:Button>
        </Items>
    </f:SimpleForm>
    <f:Window ID="Window2" Title="编辑" Hidden="true" EnableIFrame="true" runat="server"
        EnableMaximize="true" EnableResize="true" Target="Self" OnClose="Window2_Close"
        IsModal="True" Width="650px" Height="450px">
    </f:Window>
    <br />
    <f:Label ID="labResult" CssStyle="font-weight:bold;" runat="server">
    </f:Label>
    <br />
    </form>
</body>
</html>
