<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fit.aspx.cs" Inherits="FineUI.Examples.layout.fit" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Panel ID="Panel3" Title="面板一（未设置Layout属性）" runat="server" Height="300px" Width="850px" EnableFrame="true" EnableCollapse="true"
            BodyPadding="5px" ShowBorder="True" ShowHeader="True">
            <Items>
                <f:Form ID="Form3" runat="server" ShowBorder="True" BodyPadding="5px" ShowHeader="false" Title="表单">
                    <Rows>
                        <f:FormRow>
                            <Items>
                                <f:Label ID="Label2" Label="文本" Text="文本内容" runat="server">
                                </f:Label>
                            </Items>
                        </f:FormRow>
                        <f:FormRow>
                            <Items>
                                <f:TextBox ID="TextBox2" Label="输入框" runat="server">
                                </f:TextBox>
                                <f:Button ID="Button2" Text="按钮" runat="server">
                                </f:Button>
                            </Items>
                        </f:FormRow>
                    </Rows>
                </f:Form>
            </Items>
        </f:Panel>
        <br />
        <f:Panel ID="Panel1" Title="面板二（Layout=Fit）" runat="server" Layout="Fit" Height="300px" EnableFrame="true" EnableCollapse="true"
            BodyPadding="5px" Width="850px" ShowBorder="True"
            ShowHeader="True">
            <Items>
                <f:Form ID="Form2" runat="server" ShowBorder="True" BodyPadding="5px" ShowHeader="false" Title="表单">
                    <Rows>
                        <f:FormRow>
                            <Items>
                                <f:Label ID="Label1" Label="文本" Text="文本内容" runat="server">
                                </f:Label>
                            </Items>
                        </f:FormRow>
                        <f:FormRow>
                            <Items>
                                <f:TextBox ID="TextBox1" Label="输入框" runat="server">
                                </f:TextBox>
                                <f:Button ID="Button1" Text="按钮" runat="server">
                                </f:Button>
                            </Items>
                        </f:FormRow>
                    </Rows>
                </f:Form>
            </Items>
        </f:Panel>
        <br />
        <f:Panel ID="Panel2" Title="面板三（Layout=Fit）" runat="server" Layout="Fit" Height="300px" EnableFrame="true" EnableCollapse="true"
            BodyPadding="5px" Width="850px" ShowBorder="True"
            ShowHeader="True">
            <Toolbars>
                <f:Toolbar ID="Toolbar1" runat="server">
                    <Items>
                        <f:Button ID="Button4" Text="按钮一" runat="server">
                        </f:Button>
                        <f:Button ID="Button5" Text="按钮二" runat="server">
                        </f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>
            <Items>
                <f:Grid ID="Grid1" Title="表格" PageSize="4" ShowBorder="true" ShowHeader="False"
                    runat="server" EnableCheckBoxSelect="True" DataKeyNames="Id,Name">
                    <Columns>
                        <f:RowNumberField />
                        <f:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
                        <f:TemplateField Width="80px" HeaderText="性别">
                            <ItemTemplate>
                                <%-- Container.DataItem 的类型是 System.Data.DataRowView 或者用户自定义类型 --%>
                                <asp:Label ID="Label4" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                            </ItemTemplate>
                        </f:TemplateField>
                        <f:BoundField Width="80px" DataField="EntranceYear" HeaderText="入学年份" />
                        <f:CheckBoxField Width="80px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="是否在校" />
                        <f:HyperLinkField HeaderText="所学专业" DataToolTipField="Major" DataTextField="Major"
                            DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                            DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
                        <f:ImageField Width="80px" DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
                            HeaderText="分组"></f:ImageField>
                    </Columns>
                </f:Grid>
            </Items>
        </f:Panel>
    </form>
</body>
</html>
