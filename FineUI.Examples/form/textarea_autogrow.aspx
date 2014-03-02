<%@ Page Language="C#" ValidateRequest="false" AutoEventWireup="true" CodeBehind="textarea_autogrow.aspx.cs"
    Inherits="FineUI.Examples.form.textarea_autogrow" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:SimpleForm ID="SimpleForm1" BodyPadding="5px" runat="server" LabelWidth="150px" EnableFrame="true" EnableCollapse="true"
            Title="简单表单" LabelAlign="Top" Width="550px" ShowHeader="True">
            <Items>
                <f:TextArea runat="server" ID="TextArea1" EmptyText="文本框的高度会自动扩展" Label="自动扩展高度的文本输入框"
                    AutoGrowHeight="true" AutoGrowHeightMin="100" AutoGrowHeightMax="200">
                </f:TextArea>
                <f:Label ID="labResult" runat="server">
                </f:Label>
            </Items>
        </f:SimpleForm>
    </form>
</body>
</html>
