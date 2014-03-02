<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_rowcheckall.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_rowcheckall" %>

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
        runat="server" EnableCheckBoxSelect="True" DataKeyNames="Id,Name"
        EnableRowClickEvent="true" OnRowClick="Grid1_RowClick">
        <Columns>
            <f:RowNumberField />
            <f:BoundField Width="100px" ExpandUnusedSpace="true" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
            <f:TemplateField Width="80px" HeaderText="性别">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                </ItemTemplate>
            </f:TemplateField>
            <f:BoundField Width="100px" DataField="EntranceYear" HeaderText="入学年份" />
            <f:CheckBoxField Width="80px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="是否在校1" />
            <f:CheckBoxField ColumnID="CheckBoxField1" Width="100px" RenderAsStaticField="false"
                DataField="AtSchool" HeaderText="是否在校1" />
            <f:CheckBoxField ColumnID="CheckBoxField2" Width="100px" RenderAsStaticField="false"
                DataField="AtSchool" HeaderText="是否在校2" />
            <f:CheckBoxField ColumnID="CheckBoxField3" Width="100px" RenderAsStaticField="false"
                DataField="AtSchool" HeaderText="是否在校3" />
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
