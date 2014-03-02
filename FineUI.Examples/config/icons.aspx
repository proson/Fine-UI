<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="icons.aspx.cs" Inherits="FineUI.Examples.icons" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body {
            padding: 10px;
            color: #333;
        }

        img {
            padding: 0 10px 10px 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <img src="../images/icons.gif" alt="FineUI Icons" />
        <%--<asp:Literal EnableViewState="false" runat="server" ID="litIcons"></asp:Literal>--%>
    </form>
</body>
</html>
