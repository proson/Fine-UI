<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestWindow.aspx.cs" Inherits="FineUI.Examples.aspnet.TestWindow" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <style>
        form
        {
            height:800px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <f:PageManager ID="PageManager1" runat="server" />
    <f:Button ID="btnTest" Text="点击此按钮查看alert是否报错" runat="server" OnClick="btnTest_Click">
    </f:Button>
    <input type="button" onclick="document.getElementById('ok').innerHTML = 'OK';" value="PPP" />
    <div id="ok"></div>
    <div id="container1"></div>
    </form>
</body>
</html>
