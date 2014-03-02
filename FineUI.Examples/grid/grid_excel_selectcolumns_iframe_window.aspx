<%@ Page Language="C#" ValidateRequest="false" AutoEventWireup="true" CodeBehind="grid_excel_selectcolumns_iframe_window.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_excel_selectcolumns_iframe_window" %>

<!DOCTYPE html>
<html>
<head id="head1" runat="server">
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
        <f:PageManager ID="PageManager1" AutoSizePanelID="Panel1" runat="server" />
        <f:Panel ID="Panel1" runat="server" Layout="Fit" ShowBorder="False" ShowHeader="false"
            BodyPadding="5px">
            <Toolbars>
                <f:Toolbar ID="Toolbar1" runat="server">
                    <Items>
                        <f:Button ID="btnClose" EnablePostBack="false" Text="取消" runat="server" Icon="SystemClose">
                        </f:Button>
                        <f:Button ID="btnSaveContinue" Text="导出" runat="server" Icon="SystemSave"
                            OnClick="btnSaveContinue_Click">
                        </f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>
            <Items>
                <f:CheckBoxList runat="server" ID="cblColumns" ColumnNumber="3">
                    <f:CheckItem Text="姓名" Value="姓名" Selected="true" />
                    <f:CheckItem Text="性别" Value="性别" Selected="true" />
                    <f:CheckItem Text="入学年份" Value="入学年份" Selected="true" />
                    <f:CheckItem Text="是否在校" Value="是否在校" Selected="true" />
                    <f:CheckItem Text="所学专业" Value="所学专业" Selected="true" />
                    <f:CheckItem Text="分组" Value="分组" Selected="true" />
                    <f:CheckItem Text="注册日期" Value="注册日期" Selected="true" />
                </f:CheckBoxList>
            </Items>
        </f:Panel>
    </form>
</body>
</html>
