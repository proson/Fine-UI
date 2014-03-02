<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_checkboxfield_checkall.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_checkboxfield_checkall" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <f:PageManager ID="PageManager1" runat="server" />
    <f:Grid ID="Grid1" Title="表格" EnableFrame="true" EnableCollapse="true" Width="800px" ShowBorder="true" ShowHeader="true"
        runat="server" EnableCheckBoxSelect="True" DataKeyNames="Id,Name" OnRowCommand="Grid1_RowCommand"
       >
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
            <f:CheckBoxField ColumnID="CheckBoxField1" Width="80px" RenderAsStaticField="false"
                ShowHeaderCheckBox="true" DataField="AtSchool" HeaderText="是否在校" />
            <f:HyperLinkField HeaderText="所学专业" DataToolTipField="Major" DataTextField="Major"
                DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
            <f:LinkButtonField HeaderText="&nbsp;" Width="60px" CommandName="Action1" Text="按钮 1" />
            <f:LinkButtonField HeaderText="&nbsp;" Width="60px" CommandName="Action2" Text="按钮 2" />
        </Columns>
    </f:Grid>
    <br />
    <f:Button ID="Button1" runat="server" Text="选中行复选框的状态" OnClick="Button1_Click">
    </f:Button>
    <br />
    <f:Label ID="labResult" EncodeText="false" runat="server">
    </f:Label>
    </form>
</body>
</html>
