<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="timer.aspx.cs" Inherits="FineUI.Examples.timer" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <f:PageManager ID="PageManager1" runat="server" />
    <f:Label runat="server" ID="Label1">
    </f:Label>
    <f:SimpleForm ID="SimpleForm1" runat="server">
        <Items>
            <f:RadioButtonList ID="rblU_Sex" Label="性别" runat="server" ShowRedStar="true" Width="100">
                <f:RadioItem Text="男" Value="1" Selected="true" />
                <f:RadioItem Text="女" Value="2" />
            </f:RadioButtonList>
        </Items>
    </f:SimpleForm>
    </form>
</body>
</html>
