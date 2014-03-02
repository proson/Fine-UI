<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_checkboxfield_rowcheckall_contextmenu.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_checkboxfield_rowcheckall_contextmenu" %>

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
            runat="server" DataKeyNames="Id,Name">
            <Columns>
                <f:RowNumberField />
                <f:BoundField Width="100px" ExpandUnusedSpace="true" DataField="Name" DataFormatString="{0}"
                    HeaderText="姓名" />
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
        <f:Menu id="Menu1" runat="server">
            <f:MenuButton ID="btnSelectRows" EnablePostBack="false" runat="server" Text="全选行">
            </f:MenuButton>
            <f:MenuButton ID="btnUnselectRows" EnablePostBack="false" runat="server" Text="取消行">
            </f:MenuButton>
        </f:Menu>
        <br />
        选中一些行，然后点击鼠标右键。
        <br />
        <f:Button ID="Button1" runat="server" Text="选中行复选框的状态" OnClick="Button1_Click">
        </f:Button>
        <br />
        <f:Label ID="labResult" EncodeText="false" runat="server">
        </f:Label>
    </form>
    <script src="../js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script>

        var gridID = '<%= Grid1.ClientID %>';
        var menuID = '<%= Menu1.ClientID %>';
        var selectRowsID = '<%= btnSelectRows.ClientID %>';
        var unselectRowsID = '<%= btnUnselectRows.ClientID %>';

        F.ready(function () {

            F(gridID).on('beforeitemcontextmenu', function (view, record, item, index, event) {
                F(menuID).showAt(event.getXY());
                event.stopEvent();
            });

            F(selectRowsID).on('click', function () {
                $('.x-grid-row-selected img.f-grid-checkbox').removeClass('unchecked').addClass('checked');
            });

            F(unselectRowsID).on('click', function () {
                $('.x-grid-row-selected img.f-grid-checkbox').removeClass('checked').addClass('unchecked');
            });

        });

    </script>
</body>
</html>
