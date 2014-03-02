<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_iframe.aspx.cs" Inherits="FineUI.Examples.grid.grid_iframe" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Grid ID="Grid1" Title="表格" EnableFrame="true" EnableCollapse="true" ShowBorder="true" ShowHeader="true"
            PageSize="3" runat="server" EnableCheckBoxSelect="True" DataKeyNames="Id,Name"
            Width="800px">
            <Toolbars>
                <f:Toolbar ID="Toolbar1" runat="server">
                    <Items>
                        <f:Button ID="btnNew" Text="新增数据" Icon="Add" EnablePostBack="false" runat="server">
                        </f:Button>
                        <f:Button ID="btnDelete" Text="删除选中行" Icon="Delete" OnClick="btnDelete_Click" runat="server">
                        </f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>
            <Columns>
                <f:RowNumberField />
                <f:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
                <f:TemplateField Width="80px" HeaderText="性别">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                    </ItemTemplate>
                </f:TemplateField>
                <f:BoundField Width="80px" DataField="EntranceYear" HeaderText="入学年份" />
                <f:CheckBoxField Width="80px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="是否在校" />
                <f:HyperLinkField HeaderText="所学专业" DataToolTipField="Major" DataTextField="Major"
                    DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                    DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
                <f:ImageField Width="80px" DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
                    HeaderText="分组"></f:ImageField>
                <f:WindowField ColumnID="myWindowField" Width="80px" WindowID="Window1" HeaderText="窗口列"
                    Icon="Pencil" ToolTip="编辑" DataTextFormatString="{0}" DataIFrameUrlFields="Id"
                    DataIFrameUrlFormatString="grid_iframe_window.aspx?id={0}" DataWindowTitleField="Name"
                    DataWindowTitleFormatString="编辑 - {0}" />
                <f:TemplateField HeaderText="模板列" Width="60px">
                    <ItemTemplate>
                        <a href="javascript:<%# GetEditUrl(Eval("Id"), Eval("Name")) %>">编辑</a>
                    </ItemTemplate>
                </f:TemplateField>
            </Columns>
        </f:Grid>
        <f:Window ID="Window1" Title="编辑" Hidden="true" EnableIFrame="true" runat="server"
            CloseAction="HidePostBack"
            EnableMaximize="true" EnableResize="true" OnClose="Window1_Close" Target="Top"
            IsModal="True" Width="850px" Height="450px">
        </f:Window>
    </form>
</body>
</html>
