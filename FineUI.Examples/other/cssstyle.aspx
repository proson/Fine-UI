<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cssstyle.aspx.cs" Inherits="FineUI.Examples.other.cssstyle" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .red span {
            font-weight: bold;
            color: Red;
        }

        .green span {
            font-weight: bold;
            font-style: italic;
            font-size: 1.2em;
            color: Green;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <%--<f:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="通过 CssStyle 修改文本的样式">
    </f:Button>
    <br />
    <f:Label ID="Label1" runat="server" Text="文本一，注意观察文本的样式">
    </f:Label>--%>

        <br />
        <br />
        <f:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="通过 CssClass 修改文本的样式">
        </f:Button>
        <br />
        <f:Label ID="Label2" runat="server" CssClass="red" Text="文本二，注意观察文本的样式">
        </f:Label>
        <br />
        <br />
        <br />
    </form>
</body>
</html>
