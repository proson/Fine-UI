<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="AkNetCms.test.WebForm3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" AutoSizePanelID="Panel11" runat="server" />
    <x:Panel ID="Panel11" runat="server" BodyPadding="5px" EnableLargeHeader="false"
        EnableBackgroundColor="true" ShowBorder="false" Layout="VBox" BoxConfigAlign="Stretch"
        BoxConfigPosition="Start" Title="电费报表（每站）">
        <Items>
            <x:Form ID="AK_Form2" runat="server" Height="60px" BodyPadding="5px" ShowHeader="false"
                ShowBorder="false" EnableBackgroundColor="true" LabelWidth="60" FooterBarAlign="Left"
                CssClass="mright">
                <Rows>
                    <x:FormRow ID="FormRow1" runat="server" ColumnWidths="200px  80px  40px  120px       100px 200px 1px  50px 200">
                        <Items>
                            <x:DatePicker ID="Electric_ChargeDatePicker" runat="server" Label="选择日期" DateFormatString="yyyy-MM">
                            </x:DatePicker>
                            <x:Label ID="Label2" runat="server" Label="选择单位">
                            </x:Label>
                            <x:Button ID="Button_Setect_Dept" IconUrl="~/System_img/selectman.gif" runat="server" />
                            <x:TextBox ID="Dept_TextBox" runat="server" Label="维护站" OffsetRight="" ShowLabel="False">
                            </x:TextBox>
                            <x:Button ID="Button1" runat="server" Text="显示基站明细" CssClass="mright" />
                            <x:Button ID="Button2" runat="server" Text="显示维护站明细" />
                            <x:TextBox ID="Dept_Id_TextBox" runat="server" Label="单位ID" Hidden="True" Width="1">
                            </x:TextBox>
                            <x:Label ID="Label1" runat="server" Text="查询:" ShowLabel="False">
                            </x:Label>
                            <x:TwinTriggerBox ID="ttbSearchMessage" runat="server" ShowLabel="false" EmptyText="在用户名中搜索"
                                Trigger1Icon="Clear" Trigger2Icon="Search" ShowTrigger1="false">
                            </x:TwinTriggerBox>
                        </Items>
                    </x:FormRow>
                    <x:FormRow ID="FormRow2" runat="server" ColumnWidths="240px  240px 240px 140px  140px  140px ">
                        <Items>
                            <x:DropDownList ID="DropDownList_Select_产权属性" AutoPostBack="true" Label="产权属性" runat="server">
                            </x:DropDownList>
                            <x:DropDownList ID="DropDownList_Select_共享情况" Label="共享情况" AutoPostBack="true" runat="server">
                            </x:DropDownList>
                            <x:DropDownList ID="DropDownList_Select_结构类型" Label="结构类型" AutoPostBack="true" runat="server">
                            </x:DropDownList>
                            <x:Button ID="btnPrint" IconUrl="~/icon/printer.png" runat="server" />
                            <x:Button ID="btnTO_Execl" IconUrl="~/icon/printer.png" runat="server" />
                            <x:Label ID="Label_Len" runat="server" Text="长度:" ShowLabel="False">
                            </x:Label>
                        </Items>
                    </x:FormRow>
                </Rows>
            </x:Form>
            <x:TabStrip ID="TabStrip_AK" ShowBorder="true" runat="server" BoxFlex="1">
                <Tabs>
                    <x:Tab ID="Tab1" Title="基站电费明细" EnableBackgroundColor="true" BodyPadding="5px" Layout="Fit"
                        BoxConfigAlign="Stretch" BoxConfigPosition="Start" BoxConfigPadding="3" BoxConfigChildMargin="0"
                        runat="server">
                        <Items>
                            <x:Grid ID="Grid_Main_Table" runat="server" BoxFlex="1" AllowPaging="true" ShowBorder="true"
                                ShowHeader="false" EnableCheckBoxSelect="true" EnableRowNumber="true" DataKeyNames="ID,基站名称,经度,纬度"
                                SortColumnIndex="0" SortDirection="DESC" IsDatabasePaging="true" EnableRowDoubleClick="true"
                                PageSize="25" AutoWidth="true">
                                <Toolbars>
                                    <x:Toolbar ID="Toolbar6" runat="server">
                                        <Items>
                                            <x:ToolbarSeparator ID="ToolbarSeparator4" runat="server">
                                            </x:ToolbarSeparator>
                                            <x:ToolbarFill ID="ToolbarFill2" runat="server">
                                            </x:ToolbarFill>
                                        </Items>
                                    </x:Toolbar>
                                </Toolbars>
                                <Columns>
                                    <x:BoundField DataField="ID" SortField="编号" Width="40px" HeaderText="编号" />
                                    <x:BoundField DataField="编号" SortField="编号" Width="70px" HeaderText="基站编码" />
                                    <x:BoundField DataField="基站名称" SortField="基站名称" Width="110px" HeaderText="基站名称" />
                                    <x:BoundField DataField="共享情况" SortField="共享情况" Width="100px" HeaderText="共享情况" />
                                    <x:BoundField DataField="产权属性" SortField="产权属性" Width="80px" HeaderText="产权属性" />
                                    <x:BoundField DataField="机房面积" SortField="机房面积" Width="55px" HeaderText="机房面积" />
                                    <x:BoundField DataField="经度" SortField="经度" Width="75px" HeaderText="经度" Hidden="True" />
                                    <x:BoundField DataField="纬度" SortField="纬度" Width="75px" HeaderText="纬度" Hidden="True" />
                                    <x:BoundField DataField="PowerLoad" SortField="负载" Width="60px" HeaderText="负载" />
                                    <x:BoundField DataField="1" Width="40px" HeaderText="1月" />
                                    <x:BoundField DataField="2" Width="40px" HeaderText="2月" />
                                    <x:BoundField DataField="3" Width="40px" HeaderText="3月" />
                                    <x:BoundField DataField="4" Width="40px" HeaderText="4月" />
                                    <x:BoundField DataField="5" Width="40px" HeaderText="5月" />
                                    <x:BoundField DataField="6" Width="40px" HeaderText="6月" />
                                    <x:BoundField DataField="7" Width="40px" HeaderText="7月" />
                                    <x:BoundField DataField="8" Width="40px" HeaderText="8月" />
                                    <x:BoundField DataField="9" Width="40px" HeaderText="9月" />
                                    <x:BoundField DataField="10" Width="40px" HeaderText="10月" />
                                    <x:BoundField DataField="11" Width="40px" HeaderText="11月" />
                                    <x:BoundField DataField="12" Width="40px" HeaderText="12月" />
                                </Columns>
                            </x:Grid>
                        </Items>
                    </x:Tab>
                    <x:Tab ID="Tab2" Title="每维护站基站电费明细" EnableBackgroundColor="true" BodyPadding="5px"
                        Layout="Fit" BoxConfigAlign="Stretch" BoxConfigPosition="Start" BoxConfigPadding="3"
                        BoxConfigChildMargin="0" runat="server">
                        <Items>
                            <x:Grid ID="Grid_Pre_Station" runat="server" BoxFlex="1" AllowPaging="true" ShowBorder="true"
                                ShowHeader="false" EnableCheckBoxSelect="true" EnableRowNumber="true" DataKeyNames="维护单位ID,维护单位名称 "
                                SortColumnIndex="0" SortDirection="DESC" IsDatabasePaging="true" PageSize="25"
                                AutoWidth="true">
                                <Toolbars>
                                    <x:Toolbar ID="Toolbar1" runat="server">
                                        <Items>
                                            <x:ToolbarSeparator ID="ToolbarSeparator1" runat="server">
                                            </x:ToolbarSeparator>
                                            <x:ToolbarFill ID="ToolbarFill1" runat="server">
                                            </x:ToolbarFill>
                                        </Items>
                                    </x:Toolbar>
                                </Toolbars>
                                <Columns>
                                    <x:BoundField DataField="维护单位ID" SortField="编号" Width="40px" HeaderText="编号" />
                                    <x:BoundField DataField="维护单位名称" SortField="维护单位名称 " Width="130px" HeaderText="维护单位名称 " />
                                    <x:BoundField DataField="共享情况" SortField="共享情况" Width="120px" HeaderText="共享情况" />
                                    <x:BoundField DataField="产权属性" SortField="产权属性" Width="80px" HeaderText="产权属性" />
                                    <x:BoundField DataField="1" Width="40px" HeaderText="1月" />
                                    <x:BoundField DataField="2" Width="40px" HeaderText="2月" />
                                    <x:BoundField DataField="3" Width="40px" HeaderText="3月" />
                                    <x:BoundField DataField="4" Width="40px" HeaderText="4月" />
                                    <x:BoundField DataField="5" Width="40px" HeaderText="5月" />
                                    <x:BoundField DataField="6" Width="40px" HeaderText="6月" />
                                    <x:BoundField DataField="7" Width="40px" HeaderText="7月" />
                                    <x:BoundField DataField="8" Width="40px" HeaderText="8月" />
                                    <x:BoundField DataField="9" Width="40px" HeaderText="9月" />
                                    <x:BoundField DataField="10" Width="40px" HeaderText="10月" />
                                    <x:BoundField DataField="11" Width="40px" HeaderText="11月" />
                                    <x:BoundField DataField="12" Width="40px" HeaderText="12月" />
                                </Columns>
                            </x:Grid>
                        </Items>
                    </x:Tab>
                </Tabs>
            </x:TabStrip>
        </Items>
    </x:Panel>
    </form>
</body>
</html>
