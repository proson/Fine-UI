<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="test.aspx.cs"
    Inherits="FineUI.Examples.test.test" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Form ID="Form2" runat="server" Height="36px" BodyPadding="5px" ShowHeader="false"
            ShowBorder="false" LabelAlign="Right">
            <Toolbars>
                <f:Toolbar ID="Toolbar3" runat="server">
                    <Items>
                        <f:RadioButtonList ID="RadioButtonList1" Width="200px" runat="server">
                            <f:RadioItem Text="未付清" Value="0" Selected="true" />
                            <f:RadioItem Text="付清" Value="1" />
                        </f:RadioButtonList>
                        <f:ToolbarFill runat="server">
                        </f:ToolbarFill>
                        <f:Button ID="Button1" runat="server" Text="增加">
                        </f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>
            <Rows>
                <f:FormRow ID="FormRow1" runat="server">
                    <Items>
                        <f:TwinTriggerBox runat="server" EmptyText="输入要搜索的用工单位" Label="单位名称" ID="txtQUnitName"
                            ShowTrigger1="false" OnTrigger2Click="btnQuery_Click" Trigger1Icon="Clear" Trigger2Icon="Search" />
                        <f:DropDownList ID="cboQRealDate" runat="server" Required="true" ShowRedStar="true"
                            Label="自然月份" AutoPostBack="true" OnSelectedIndexChanged="cboQRealDate_SelectedIndexChanged" />
                        <f:RadioButtonList ID="rboIsWork" Label="状态" runat="server" AutoPostBack="true"
                            OnSelectedIndexChanged="rboIsWork_SelectedIndexChanged" Width="200px">
                            <f:RadioItem Text="当月新增" Value="0" Selected="true" />
                            <f:RadioItem Text="当月减员" Value="1" />
                        </f:RadioButtonList>
                    </Items>
                </f:FormRow>
            </Rows>
        </f:Form>
    </form>
</body>
</html>
