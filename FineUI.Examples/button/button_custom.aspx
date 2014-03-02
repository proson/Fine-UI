<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="button_custom.aspx.cs" Inherits="FineUI.Examples.button.button_custom" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .bgbtn {
            background-image: url(../images/login.png) !important;
            width: 320px;
            height: 50px;
            border-width: 0;
            background-color: transparent;
        }

        .bgbtn .x-frame-ml, .bgbtn .x-frame-mc, .bgbtn .x-frame-mr,
        .bgbtn .x-frame-tl, .bgbtn .x-frame-tc, .bgbtn .x-frame-tr,
        .bgbtn .x-frame-bl, .bgbtn .x-frame-bc, .bgbtn .x-frame-br {
            background-image: none;
            background-color: transparent;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Button ID="Button1" Text="普通按钮" runat="server" Size="Large" OnClick="Button1_Click" />
        <br />
        <br />

        <f:Button ID="Button2" Text="" CssClass="bgbtn" runat="server" OnClick="Button2_Click" />

    </form>
</body>
</html>
