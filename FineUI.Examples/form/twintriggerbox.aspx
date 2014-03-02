<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="twintriggerbox.aspx.cs"
    Inherits="FineUI.Examples.form.twintriggerbox" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:SimpleForm ID="SimpleForm1" BodyPadding="5px" runat="server" Width="550px" EnableFrame="true" EnableCollapse="true"
            Title="表单" ShowHeader="True">
            <Items>
                <f:TwinTriggerBox ID="ttbxMyBox2" ShowLabel="false" OnTrigger1Click="ttbxMyBox2_Trigger1Click" OnTrigger2Click="ttbxMyBox2_Trigger2Click"
                    Trigger1Icon="Clear" ShowTrigger1="False" EmptyText="搜索用户名" Trigger2Icon="Search"
                    runat="server">
                </f:TwinTriggerBox>
            </Items>
        </f:SimpleForm>
    </form>
</body>
</html>
