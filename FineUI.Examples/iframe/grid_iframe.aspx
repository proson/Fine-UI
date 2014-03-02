<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_iframe.aspx.cs" Inherits="FineUI.Examples.iframe.grid_iframe" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        body.x-body {
            padding: 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" AutoSizePanelID="Panel7" runat="server" />
        <f:Panel ID="Panel7" runat="server" BodyPadding="3px"
            Title="Panel" ShowBorder="false" ShowHeader="True" Layout="VBox"
            BoxConfigAlign="Stretch">
            <Items>
                <f:Form ID="Form5" ShowBorder="False" BodyPadding="5px"
                    ShowHeader="False" runat="server">
                    <Rows>
                        <f:FormRow>
                            <Items>
                                <f:TwinTriggerBox runat="server" EmptyText="输入要搜索的关键词" ShowLabel="false" ID="ttbSearch"
                                    ShowTrigger1="false" OnTrigger1Click="ttbSearch_Trigger1Click" OnTrigger2Click="ttbSearch_Trigger2Click"
                                    Trigger1Icon="Clear" Trigger2Icon="Search">
                                </f:TwinTriggerBox>
                                <f:DropDownList ID="DropDownList1" ShowLabel="false" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                                    runat="server">
                                    <f:ListItem Text="过滤条件一" Value="filter1" />
                                    <f:ListItem Text="过滤条件二" Value="filter2" />
                                    <f:ListItem Text="过滤条件三" Value="filter3" />
                                </f:DropDownList>
                            </Items>
                        </f:FormRow>
                    </Rows>
                </f:Form>
                <f:Grid ID="Grid2" Title="Grid2" PageSize="80" ShowBorder="true" BoxFlex="1" AllowPaging="true"
                    OnPageIndexChange="Grid2_PageIndexChange" ShowHeader="false" runat="server" EnableCheckBoxSelect="True"
                    DataKeyNames="Id,Name" OnSort="Grid2_Sort">
                    <Toolbars>
                        <f:Toolbar ID="Toolbar2" runat="server">
                            <Items>
                                <f:Button ID="btnPopupWindow" Text="弹出对话框" runat="server">
                                </f:Button>
                                <f:ToolbarSeparator ID="ToolbarSeparator1" runat="server">
                                </f:ToolbarSeparator>
                                <f:Button ID="btnCheckSelection" Text="检查选中项状态" runat="server">
                                </f:Button>
                                <f:ToolbarSeparator ID="ToolbarSeparator2" runat="server">
                                </f:ToolbarSeparator>
                                <f:Button ID="btnConfirmButton" Text="删除选中行" runat="server">
                                </f:Button>
                            </Items>
                        </f:Toolbar>
                    </Toolbars>
                    <Columns>
                        <f:RowNumberField />
                        <f:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
                        <f:TemplateField Width="80px" HeaderText="性别">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                            </ItemTemplate>
                        </f:TemplateField>
                        <f:BoundField Width="80px" DataField="EntranceYear" HeaderText="入学年份" />
                        <f:CheckBoxField Width="80px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="是否在校" />
                        <f:HyperLinkField HeaderText="所学专业" DataToolTipField="Major" DataTextField="Major"
                            DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                            DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
                        <f:ImageField Width="80px" DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
                            HeaderText="分组"></f:ImageField>
                        <f:WindowField TextAlign="Center" Width="80px" WindowID="Window1" Icon="Pencil"
                            ToolTip="编辑" DataIFrameUrlFields="Id,Name" DataIFrameUrlFormatString="../grid/grid_iframe_window.aspx?id={0}&name={1}"
                            Title="编辑" IFrameUrl="~/alert.aspx" />
                        <f:LinkButtonField TextAlign="Center" Width="80px" Icon="Delete" ToolTip="删除" ConfirmText="确认删除？（功能未实现）"
                            CommandName="LinkButtonMyText" />
                    </Columns>
                </f:Grid>
            </Items>
        </f:Panel>
        <f:Window ID="Window1" Title="弹出窗体" Hidden="true" EnableIFrame="true"
            EnableMaximize="true" Target="Top" EnableResize="true" runat="server" OnClose="Window1_Close"
            IsModal="true" Width="850px" Height="550px">
        </f:Window>
    </form>
</body>
</html>
