<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_twogrid.aspx.cs" Inherits="FineUI.Examples.grid.grid_twogrid" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        body.f-body {
            padding: 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" AutoSizePanelID="RegionPanel1" />
        <f:RegionPanel ID="RegionPanel1" ShowBorder="false" runat="server">
            <Regions>
                <f:Region ID="Region1" ShowBorder="false" ShowHeader="false" Split="true"
                    Margins="0 0 0 0" Width="200px" Position="Left" Layout="Fit"
                    runat="server">
                    <Items>
                        <f:Grid ID="Grid2" ShowBorder="true" ShowHeader="true" Title="表格（班级）" runat="server"
                            DataKeyNames="Id,Name" EnableMultiSelect="false" EnableRowSelectEvent="true" OnRowSelect="Grid2_RowSelect">
                            <Columns>
                                <f:TemplateField Width="60px">
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                                    </ItemTemplate>
                                </f:TemplateField>
                                <f:BoundField ExpandUnusedSpace="true" DataField="Name" DataFormatString="{0}"
                                    HeaderText="姓名" />
                            </Columns>
                        </f:Grid>
                    </Items>
                </f:Region>
                <f:Region ID="Region2" ShowBorder="false" ShowHeader="false" Position="Center"
                    Layout="VBox" BoxConfigAlign="Stretch" BoxConfigPosition="Left" runat="server">
                    <Items>
                        <f:Panel Height="80px" ShowHeader="false" BodyPadding="10px"
                            ShowBorder="false" runat="server">
                            <Items>
                                <f:Label ID="Label4" runat="server" CssStyle="font-weight:bold;" Text="班级描述：">
                                </f:Label>
                                <f:Label ID="labelClassDesc" runat="server">
                                </f:Label>
                            </Items>
                        </f:Panel>
                        <f:Grid ID="Grid1" BoxFlex="1" ShowBorder="true" ShowHeader="true" Title="表格（学生）"
                            runat="server" DataKeyNames="Id,Name">
                            <Columns>
                                <f:TemplateField Width="60px">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                                    </ItemTemplate>
                                </f:TemplateField>
                                <f:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
                                <f:TemplateField Width="80px" HeaderText="性别">
                                    <ItemTemplate>
                                        <%-- Container.DataItem 的类型是 System.Data.DataRowView 或者用户自定义类型 --%>
                                        <%--<asp:Label ID="Label2" runat="server" Text='<%# GetGender(DataBinder.Eval(Container.DataItem, "Gender")) %>'></asp:Label>--%>
                                        <asp:Label ID="Label3" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                                    </ItemTemplate>
                                </f:TemplateField>
                                <f:BoundField Width="80px" DataField="EntranceYear" HeaderText="入学年份" />
                                <f:CheckBoxField Width="80px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="是否在校" />
                                <f:HyperLinkField HeaderText="所学专业" DataToolTipField="Major" DataTextField="Major"
                                    DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                                    DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
                            </Columns>
                        </f:Grid>
                    </Items>
                </f:Region>
            </Regions>
        </f:RegionPanel>
        <br />
        <br />
    </form>
</body>
</html>
