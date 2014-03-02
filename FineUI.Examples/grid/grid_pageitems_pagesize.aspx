<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_pageitems_pagesize.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_pageitems_pagesize" %>

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
        AllowPaging="true" runat="server" EnableCheckBoxSelect="True" Width="800px" Height="350px" DataKeyNames="Id,Name"
        OnPageIndexChange="Grid1_PageIndexChange">
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
            <f:ToolbarSeparator ID="ToolbarSeparator1" runat="server">
            </f:ToolbarSeparator>
            <f:ToolbarText runat="server" Text="每页记录数：">
            </f:ToolbarText>
            <f:DropDownList runat="server" ID="ddlPageSize" Width="80px" AutoPostBack="true"
                OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged">
                <f:ListItem Text="5" Value="5" />
                <f:ListItem Text="10" Value="10" />
                <f:ListItem Text="15" Value="15" />
                <f:ListItem Text="20" Value="20" />
            </f:DropDownList>
        </PageItems>
    </f:Grid>
    <br />
    <f:Button ID="Button2" runat="server" CssClass="inline" Text="重新绑定表格" OnClick="Button2_Click">
    </f:Button>
    <f:Button ID="Button1" runat="server" Text="选中了哪些行" OnClick="Button1_Click">
    </f:Button>
    <br />
    <f:Label ID="labResult" EncodeText="false" runat="server">
    </f:Label>
    </form>
</body>
</html>
