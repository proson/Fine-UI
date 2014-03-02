<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_editor_cell_renderfunction.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_editor_cell_renderfunction" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <f:PageManager ID="PageManager1" runat="server" />
    <f:Grid ID="Grid1" ShowBorder="true" ShowHeader="true" Title="表格" EnableFrame="true" EnableCollapse="true" Width="850px" Height="350px"
        runat="server" DataKeyNames="Id,Name" AllowCellEditing="true" ClicksToEdit="1">
        <Columns>
            <f:TemplateField Width="60px">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                </ItemTemplate>
            </f:TemplateField>
            <f:RenderField Width="100px" ColumnID="Name" DataField="Name" FieldType="String"
                HeaderText="姓名">
                <Editor>
                    <f:TextBox ID="tbxEditorName" Required="true" runat="server">
                    </f:TextBox>
                </Editor>
            </f:RenderField>
            <f:RenderField Width="100px" ColumnID="Gender" DataField="Gender" FieldType="String"
                RendererFunction="renderGender" HeaderText="性别">
                <Editor>
                    <f:DropDownList ID="ddlGender" Required="true" runat="server">
                        <f:ListItem Text="男" Value="1" />
                        <f:ListItem Text="女" Value="0" />
                    </f:DropDownList>
                </Editor>
            </f:RenderField>
            <f:RenderField Width="100px" ColumnID="EntranceYear" DataField="EntranceYear" FieldType="Int"
                HeaderText="入学年份">
                <Editor>
                    <f:NumberBox ID="tbxEditorEntranceYear" NoDecimal="true" NoNegative="true" MinValue="2000"
                        MaxValue="2010" runat="server">
                    </f:NumberBox>
                </Editor>
            </f:RenderField>
            <f:RenderField Width="120px" ColumnID="EntranceDate" DataField="EntranceDate" FieldType="Date"
                Renderer="Date" RendererArgument="yyyy-MM-dd" HeaderText="入学日期">
                <Editor>
                    <f:DatePicker ID="DatePicker1" Required="true" runat="server">
                    </f:DatePicker>
                </Editor>
            </f:RenderField>
            <f:RenderCheckField Width="100px" ColumnID="AtSchool" DataField="AtSchool" HeaderText="是否在校" />
            <f:RenderField ExpandUnusedSpace="true" ColumnID="Major" DataField="Major" FieldType="String"
                HeaderText="所学专业" RendererFunction="renderMajor">
                <Editor>
                    <f:DropDownList ID="ddlMajor" Required="true" runat="server">
                        <f:ListItem Text="材料科学与工程系" Value="材料科学与工程系"></f:ListItem>
                        <f:ListItem Text="化学系" Value="化学系"></f:ListItem>
                        <f:ListItem Text="数学系" Value="数学系"></f:ListItem>
                        <f:ListItem Text="物理系" Value="物理系"></f:ListItem>
                        <f:ListItem Text="自动化系" Value="自动化系"></f:ListItem>
                    </f:DropDownList>
                </Editor>
            </f:RenderField>
        </Columns>
    </f:Grid>
    <br />
    <f:Button ID="Button2" runat="server" Text="保存数据" OnClick="Button2_Click">
    </f:Button>
    <br />
    <br />
    <f:Label ID="labResult" EncodeText="false" runat="server">
    </f:Label>
    <br />
    </form>
    <script>

        var ddlGenderID = '<%= ddlGender.ClientID %>';
        function renderGender(value) {
            return F(ddlGenderID).f_getTextByValue(value);
        }


        var ddlMajorID = '<%= ddlMajor.ClientID %>';
        function renderMajor(value) {
            return F(ddlMajorID).f_getTextByValue(value);
        }


    </script>
</body>
</html>
