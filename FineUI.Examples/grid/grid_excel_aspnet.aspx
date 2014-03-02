<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="grid_excel_aspnet.aspx.cs"
    Inherits="FineUI.Examples.data.grid_excel_aspnet" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" Width="900px" DataKeyNames="Id,Name" AutoGenerateColumns="False"
        runat="server">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Name" HeaderText="姓名" />
            <asp:TemplateField HeaderText="性别">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="EntranceYear" HeaderText="入学年份" />
            <asp:CheckBoxField DataField="AtSchool" HeaderText="是否在校" />
            <asp:HyperLinkField HeaderText="所学专业" DataTextField="Major" DataTextFormatString="{0}"
                DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                Target="_blank" />
            <asp:ImageField DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
                HeaderText="分组">
            </asp:ImageField>
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" Text="导出为Excel文件" OnClick="Button2_Click">
    </asp:Button>
    <br />
    <br />
    <br />
    </form>
</body>
</html>
