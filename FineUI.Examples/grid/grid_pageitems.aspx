<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_pageitems.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_pageitems" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Grid ID="Grid1" Title="表格" EnableFrame="true" EnableCollapse="true" PageSize="5" ShowBorder="true" ShowHeader="true"
            AllowPaging="true" runat="server" EnableCheckBoxSelect="True" Width="850px" Height="350px"
            DataKeyNames="Id,Name" OnPageIndexChange="Grid1_PageIndexChange" EmptyText="没有数据！">
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
            </Columns>
            <PageItems>
                <f:ToolbarSeparator ID="ToolbarSeparator2" runat="server">
                </f:ToolbarSeparator>
                <f:Button Text="清空数据" runat="server" ID="btnClearData" OnClick="btnClearData_Click">
                </f:Button>
                <f:Button Text="重新绑定数据" runat="server" ID="btnRebind" Icon="Reload" OnClick="btnRebindData_Click">
                </f:Button>
                <f:ToolbarSeparator ID="ToolbarSeparator1" runat="server">
                </f:ToolbarSeparator>
                <f:Button Text="选中所有行" runat="server" ID="btnSelectAll" OnClick="btnSelectAll_Click">
                </f:Button>
                <f:Button Text="清空选中行" runat="server" ID="btnClearSelect" OnClick="btnClearSelect_Click">
                </f:Button>
            </PageItems>
        </f:Grid>
        <br />
        <f:Button ID="Button1" runat="server" Text="选中了哪些行" OnClick="Button1_Click">
        </f:Button>
        <br />
        <f:Label ID="labResult" EncodeText="false" runat="server">
        </f:Label>
    </form>
</body>
</html>
