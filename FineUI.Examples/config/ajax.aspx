<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ajax.aspx.cs" Inherits="FineUI.Examples.ajax" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body
        {
            font-size: 13px;
        }
        table td
        {
            vertical-align: top;
            width: 180px;
            padding: 0 2px 20px 0;
        }
        table td .head
        {
            border-top: solid 1px #8DB2E3;
            background-color: #D6E3F2;
            padding: 5px;
            font-weight: bold;
        }
        table ul
        {
            margin: 0px;
            list-style-type: none;
            padding: 5px;
            min-height: 200px;
        }
    </style>
</head>
<body class="f-body">
    <form id="form1" runat="server">
    <br />
    FineUI 有原生的 AJAX 支持，也就是说不需要做任何配置，控件属性在服务器端的改变都能以 AJAX 的方式影响到前端界面的显示。
    <br />
    <br />
    但是，并非控件的所有属性都支持 AJAX 改变，下面列表展示了每个控件有哪些属性支持 AJAX 改变。
    <br />
    <br />
    <asp:Literal ID="litResult" runat="server"></asp:Literal>
    </form>
</body>
</html>
