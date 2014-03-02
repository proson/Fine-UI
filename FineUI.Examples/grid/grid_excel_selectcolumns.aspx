<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_excel_selectcolumns.aspx.cs" Inherits="FineUI.Examples.data.grid_excel_selectcolumns" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Grid ID="Grid1" Title="表格" EnableFrame="true" EnableCollapse="true" ShowBorder="true" ShowHeader="true" Width="900px"
            runat="server" DataKeyNames="Id,Name">
            <Columns>
                <f:TemplateField Width="60px">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                    </ItemTemplate>
                </f:TemplateField>
                <f:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
                <f:TemplateField Width="80px" HeaderText="性别">
                    <ItemTemplate>
                        <%-- Container.DataItem 的类型是 System.Data.DataRowView 或者用户自定义类型 --%>
                        <%--<asp:Label ID="Label2" runat="server" Text='<%# GetGender(DataBinder.Eval(Container.DataItem, "Gender")) %>'></asp:Label>--%>
                        <asp:Label ID="Label3" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                    </ItemTemplate>
                </f:TemplateField>
                <f:BoundField Width="80px" DataField="EntranceYear" HeaderText="入学年份" />
                <f:CheckBoxField Width="80px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="是否在校" />
                <f:HyperLinkField HeaderText="所学专业" DataToolTipField="Major" DataTextField="Major"
                    DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                    DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
                <f:ImageField Width="80px" DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
                    HeaderText="分组"></f:ImageField>
                <f:BoundField Width="100px" DataField="LogTime" DataFormatString="{0:yy-MM-dd}"
                    HeaderText="注册日期" />
            </Columns>
        </f:Grid>
        <br />
        <f:Button ID="btnSelectColumns" runat="server" Text="选择需要导出的列（注意Window控件的EnableAjax属性）" EnablePostBack="false">
        </f:Button>
        <f:Window ID="Window1" Title="选择需要导出的列" Hidden="true" EnableIFrame="true"
            EnableMaximize="true" Target="Top" EnableResize="true" runat="server" OnClose="Window1_Close"
            IsModal="true" Width="450px" Height="250px" EnableAjax="false">
        </f:Window>
        <br />
        <br />
        <br />

    </form>
    <%--
    <script src="../js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script>
        var windowID = '<%= Window1.ClientID %>';

        F.ready(function () {
            var window = F(windowID);
            var oldHidePostback = window.f_hide_postback;
            window.f_hide_postback = function () {
                F.control_enable_ajax = false;
                oldHidePostback.apply(this, arguments);
            };
        });
    </script>
    --%>
</body>
</html>
