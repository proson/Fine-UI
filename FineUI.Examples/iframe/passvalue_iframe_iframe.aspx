<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="passvalue_iframe_iframe.aspx.cs"
    Inherits="FineUI.Examples.iframe.passvalue_iframe_iframe" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        body.f-body {
            padding: 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" AutoSizePanelID="Panel1" runat="server"></f:PageManager>
        <f:Panel ID="Panel1" runat="server" Layout="Fit" ShowBorder="False" ShowHeader="false"
            BodyPadding="5px">
            <Items>
                <f:SimpleForm ID="SimpleForm1" ShowBorder="false" ShowHeader="false" Title="SimpleForm"
                    BodyPadding="5px" runat="server" EnableCollapse="True">
                    <Items>
                        <f:DropDownList ID="ddlSheng" Label="请选择省份" ShowRedStar="true" runat="server" AutoPostBack="true"
                            OnSelectedIndexChanged="ddlSheng_SelectedIndexChanged">
                        </f:DropDownList>
                    </Items>
                </f:SimpleForm>
            </Items>
        </f:Panel>
    </form>
</body>
</html>
