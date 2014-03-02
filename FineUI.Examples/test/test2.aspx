<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test2.aspx.cs" Inherits="FineUI.Examples.test2" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <style>
        body.x-body {
            background-color: #fff;
        }
        

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />



        <f:GroupPanel runat="server" Title="高级选项（展开获取更多个性化设置）" ID="gpAdvancedSet" EnableCollapse="true" Layout="Fit">
            <Items>
                <f:Form ShowBorder="False" BodyPadding="0px" ShowHeader="False" runat="server" LabelWidth="80">
                    <Rows>
                        <f:FormRow ColumnWidths="400 50% 50%">
                            <Items>
                                <f:RadioButtonList ID="txtSendTime" runat="server" Label="发送时间">
                                    <f:RadioItem Text="立即发送" Value="0" Selected="true" />
                                    <f:RadioItem Text="定时发送" Value="1" />
                                </f:RadioButtonList>
                                <f:DatePicker runat="server" ShowLabel="false" EnableEdit="false" DateFormatString="yyyy-MM-dd" ID="txtSetSendTimeDate" HideMode="Display" Hidden="true" />
                                <f:TimePicker ID="txtSetSendTimeTime" ShowLabel="false" EnableEdit="false" Increment="5" HideMode="Display" Hidden="true" runat="server" />
                            </Items>
                        </f:FormRow>
                        <f:FormRow ColumnWidths="400 100%">
                            <Items>
                                <f:RadioButtonList ID="txtSendLevel" runat="server" Label="优先级">
                                    <f:RadioItem Text="普通" Value="0" Selected="true" />
                                    <f:RadioItem Text="优先" Value="1" />
                                </f:RadioButtonList>
                                <f:Label runat="server" Hidden="true"></f:Label>
                            </Items>
                        </f:FormRow>
                    </Rows>
                </f:Form>
            </Items>
        </f:GroupPanel>

    </form>
</body>
</html>
