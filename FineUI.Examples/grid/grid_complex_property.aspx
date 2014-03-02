<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_complex_property.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_complex_property" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <f:PageManager ID="PageManager1" runat="server" />
    <f:Grid ID="Grid1" Title="表格" EnableFrame="true" EnableCollapse="true" PageSize="3" ShowBorder="true"
        Width="800px" ShowHeader="true" runat="server" EnableCheckBoxSelect="True" DataKeyNames="Id,Year"
       >
        <Columns>
            <f:RowNumberField />
            <f:BoundField DataField="MyText" SortField="MyText" DataFormatString="{0}" HeaderText="姓名" />
            <f:BoundField Width="80px" DataField="Year" HeaderText="入学年份" />
            <f:CheckBoxField Width="80px" DataField="MyCheckBox" HeaderText="是否在校" />
            <f:TemplateField HeaderText="是否在校">
                <ItemTemplate>
                    <%-- Container.DataItem should be System.Data.DataRowView or Custom Class --%>
                    <%-- <%# DataBinder.Eval(Container.DataItem, "MyText") %> --%>
                    <%# GetInSchool(Eval("MyCheckBox")) %>
                </ItemTemplate>
            </f:TemplateField>
            <f:BoundField ExpandUnusedSpace="True" DataField="Info.UserName" DataFormatString="{0}"
                HeaderText="老师（二级属性）" />
        </Columns>
    </f:Grid>
    </form>
</body>
</html>
