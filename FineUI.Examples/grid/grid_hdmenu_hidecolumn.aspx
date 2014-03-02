<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_hdmenu_hidecolumn.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_hdmenu_hidecolumn" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Grid ID="Grid1" Title="表格" EnableFrame="true" EnableCollapse="true" ShowBorder="true" ShowHeader="true" Width="800px" runat="server"
            EnableCheckBoxSelect="true" DataKeyNames="Id,Name" EnableHeaderMenu="true">
            <Columns>
                <f:RowNumberField />
                <f:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
                <f:TemplateField Width="80px" EnableColumnHide="false" ColumnID="gender" HeaderText="性别">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                    </ItemTemplate>
                </f:TemplateField>
                <f:BoundField Width="80px" DataField="EntranceYear" HeaderText="入学年份" />
                <f:CheckBoxField Width="80px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="是否在校" />
                <f:HyperLinkField HeaderText="所学专业" DataToolTipField="Major" DataTextField="Major"
                    DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                    DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
                <f:ImageField Width="80px" Hidden="true" DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
                    HeaderText="分组"></f:ImageField>
            </Columns>
        </f:Grid>
        <br />
        <f:Button ID="Button3" runat="server" Text="显示/隐藏性别列" CssClass="inline" OnClick="Button3_Click">
        </f:Button>
        <f:Button ID="Button4" runat="server" Text="获得隐藏列列表" OnClick="Button4_Click">
        </f:Button>
        <br />
        注：性别列设置了EnableColumnHide=false，所以不能通过标题栏菜单隐藏，但仍然可以通过后台代码隐藏。
        <br />
        <f:Label runat="server" EncodeText="false" ID="labHiddenColumns">
        </f:Label>
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
