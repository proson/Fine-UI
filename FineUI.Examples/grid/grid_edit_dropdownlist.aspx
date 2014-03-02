<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_edit_dropdownlist.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_edit_dropdownlist" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Grid ID="Grid1" ShowBorder="true" ShowHeader="true" Title="表格" EnableFrame="true" EnableCollapse="true" Width="900px"
            runat="server" DataKeyNames="Id,Name" OnRowDataBound="Grid1_RowDataBound">
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
                            <asp:ListItem Text="男" Value="男"></asp:ListItem>
                            <asp:ListItem Text="女" Value="女"></asp:ListItem>
                        </asp:DropDownList>
                    </ItemTemplate>
                </f:TemplateField>
                <f:BoundField Width="80px" DataField="EntranceYear" HeaderText="入学年份" />
                <f:CheckBoxField Width="80px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="是否在校" />
                <f:HyperLinkField HeaderText="所学专业" DataToolTipField="Major" DataTextField="Major"
                    DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                    DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
            </Columns>
        </f:Grid>
        <br />
        <f:Button runat="server" ID="Button1" OnClick="Button1_Click" Text="获取用户输入的性别">
        </f:Button>
        <br />
        <f:Label ID="labResult" EncodeText="false" runat="server">
        </f:Label>
        <br />
    </form>
</body>
</html>
