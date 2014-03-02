<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_editor_cell2.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_editor_cell2" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <f:PageManager ID="PageManager1" runat="server" />
    <f:Grid ID="Grid1" ShowBorder="true" ShowHeader="true" Title="表格" EnableFrame="true" EnableCollapse="true" Width="800px" runat="server"
        DataKeyNames="Id,Name" AllowCellEditing="true" ClicksToEdit="1">
        <Columns>
            <f:TemplateField Width="60px">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                </ItemTemplate>
            </f:TemplateField>
            <f:RenderField Width="100px" DataField="Name" HeaderText="姓名">
                <Editor>
                    <f:TextBox ID="tbxEditorName" runat="server">
                    </f:TextBox>
                </Editor>
            </f:RenderField>
            <f:RenderField Width="100px" DataField="Gender" FieldType="String" 
                RendererFunction="renderGender" HeaderText="性别">
                <Editor>
                    <f:DropDownList runat="server">
                        <f:ListItem Text="男" Value="1" />
                        <f:ListItem Text="女" Value="0" />
                    </f:DropDownList>
                </Editor>
            </f:RenderField>
            <f:RenderField Width="100px" DataField="EntranceYear" HeaderText="入学年份">
                <Editor>
                    <f:NumberBox ID="tbxEditorEntranceYear" NoDecimal="true" NoNegative="true" MinValue="2000"
                        MaxValue="2010" runat="server">
                    </f:NumberBox>
                </Editor>
            </f:RenderField>
            <f:RenderField Width="100px" DataField="AtSchool" HeaderText="是否在校">
                <Editor>
                    <f:CheckBox runat="server"></f:CheckBox>
                </Editor>
            </f:RenderField>
            <f:RenderField Width="100px" DataField="LogTime" FieldType="Date" Renderer="Date"
                RendererArgument="yyyy-MM-dd" HeaderText="登记时间">
                <Editor>
                    <f:DatePicker runat="server">
                    </f:DatePicker>
                </Editor>
            </f:RenderField>
            <f:RenderField Width="100px" DataField="Major" ExpandUnusedSpace="true" HeaderText="所学专业">
                <Editor>
                    <f:TextBox ID="tbxEditorMajor" runat="server">
                    </f:TextBox>
                </Editor>
            </f:RenderField>
        </Columns>
    </f:Grid>
    <br />
    <br />
    <br />
    <br />
    <f:Button ID="Button2" runat="server" Text="重新绑定表格" OnClick="Button2_Click">
    </f:Button>
    <br />
    <f:Button runat="server" ID="Button1" OnClick="Button1_Click" Text="获取用户输入的分组值">
    </f:Button>
    <br />
    <f:Label ID="labResult" EncodeText="false" runat="server">
    </f:Label>
    <br />
    </form>
    <script>

        function renderGender(value) {
            return value === '1' ? '男' : '女';
        }

    </script>
</body>
</html>
