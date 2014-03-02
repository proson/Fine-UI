<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_edit_dropdownlist_update.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_edit_dropdownlist_update" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Grid ID="Grid1" ShowBorder="true" ShowHeader="true" Title="表格" EnableFrame="true" EnableCollapse="true" Width="900px" runat="server"
            DataKeyNames="Id,Name" OnRowDataBound="Grid1_RowDataBound">
            <Columns>
                <f:TemplateField Width="80px" EnableColumnHide="false" EnableHeaderMenu="false">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                    </ItemTemplate>
                </f:TemplateField>
                <f:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
                <f:TemplateField Width="80px" HeaderText="性别">
                    <ItemTemplate>
                        <asp:DropDownList runat="server" ID="ddlGender">
                        </asp:DropDownList>
                    </ItemTemplate>
                </f:TemplateField>
                <f:BoundField Width="80px" DataField="EntranceYear" HeaderText="入学年份" />
                <f:CheckBoxField Width="80px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="是否在校" />
                <f:HyperLinkField HeaderText="所学专业" DataToolTipField="Major" DataTextField="Major"
                    DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                    DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
                <f:TemplateField HeaderText="分组" Width="100px">
                    <ItemTemplate>
                        <asp:TextBox ID="tbxGroupName" runat="server" Width="80px" TabIndex='<%# Container.DataItemIndex + 10 %>'
                            Text='<%# Eval("Group") %>'></asp:TextBox>
                    </ItemTemplate>
                </f:TemplateField>
            </Columns>
        </f:Grid>
        <br />
        <f:Button runat="server" ID="Button1" OnClick="Button1_Click" CssClass="inline" Text="将分组值全部加一">
        </f:Button>
        <f:Button ID="Button2" runat="server" Text="重新绑定表格" OnClick="Button2_Click">
        </f:Button>
        <br />
        <f:Label ID="labResult" EncodeText="false" runat="server">
        </f:Label>
        <br />
    </form>
    <script src="../js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        var gridClientID = '<%= Grid1.ClientID %>';
        var inputselector = '.x-grid-tpl input';

        function registerSelectEvent() {
            var grid = F(gridClientID);

            $(grid.el.dom).delegate(inputselector, 'click', function (evt) {
                $(this).select();
            });
        }

        F.ready(function () {
            registerSelectEvent();
        });

    </script>
</body>
</html>
