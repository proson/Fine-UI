<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calendar.aspx.cs" Inherits="FineUI.Examples.form.calendar" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:SimpleForm ID="SimpleForm1" BodyPadding="5px" Width="550px" EnableFrame="true" EnableCollapse="true"
            Title="简单表单" runat="server">
            <Items>
                <f:Calendar runat="server" EnableDateSelectEvent="true" DateFormatString="yyyy-MM-dd"
                    OnDateSelect="Calendar1_DateSelect" ID="Calendar1">
                </f:Calendar>

                <f:Button runat="server" ID="Button1" OnClick="Button1_Click">
                </f:Button>

                <f:Label ID="labResult1" ShowLabel="false" runat="server">
                </f:Label>
            </Items>
        </f:SimpleForm>
    </form>
</body>
</html>
