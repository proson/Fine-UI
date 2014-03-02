<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="radiobuttonlist.aspx.cs"
    Inherits="FineUI.Examples.form.radiobuttonlist" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:SimpleForm ID="SimpleForm1" Width="700px" runat="server" LabelWidth="200px" EnableFrame="true" EnableCollapse="true"
            BodyPadding="5px" ShowBorder="True" ShowHeader="True"
            Title="简单表单">
            <Items>
                <f:RadioButtonList ID="RadioButtonList1" Label="列表一" runat="server">
                    <f:RadioItem Text="可选项 1" Value="value1" />
                    <f:RadioItem Text="可选项 2" Value="value2" />
                    <f:RadioItem Text="可选项 3" Value="value3" Selected="true" />
                </f:RadioButtonList>
                <f:Button ID="btnServerSetSelectedValue" CssClass="inline" Text="选中上面列表中的第一项" OnClick="btnServerSetSelectedValue_Click"
                    runat="server">
                </f:Button>
                <f:Button ID="btnServerGetSelectedValue" CssClass="inline" Text="获取上面列表的选中项" OnClick="btnServerGetSelectedValue_Click"
                    runat="server">
                </f:Button>
                <f:Button ID="btnClientGetSelectedValue" Text="获取上面列表的选中项（JavaScript 脚本）" EnablePostBack="false"
                    OnClientClick="alertSelectedValue();" runat="server">
                </f:Button>
                <f:Label runat="server" Text="&nbsp;">
                </f:Label>
                <f:RadioButtonList ID="RadioButtonList2" Label="列表二（一列）" ColumnNumber="1" runat="server">
                </f:RadioButtonList>
                <f:Label ID="Label1" runat="server" Text="&nbsp;">
                </f:Label>
                <f:RadioButtonList ID="rblAutoPostBack" AutoPostBack="true" OnSelectedIndexChanged="rblAutoPostBack_SelectedIndexChanged"
                    Label="列表三（自动回发）" ColumnNumber="3" runat="server" ShowRedStar="true" Required="true">
                    <f:RadioItem Text="可选项 1" Value="value1" />
                    <f:RadioItem Text="可选项 2" Value="value2" />
                    <f:RadioItem Text="可选项 3" Value="value3" />
                    <f:RadioItem Text="可选项 4" Value="value4" />
                    <f:RadioItem Text="可选项 5" Value="value5" />
                    <f:RadioItem Text="可选项 6" Value="value6" />
                    <f:RadioItem Text="可选项 7" Value="value7" />
                    <f:RadioItem Text="可选项 8" Value="value8" />
                </f:RadioButtonList>
                <f:Label ID="Label2" runat="server" Text="&nbsp;">
                </f:Label>
                <f:RadioButtonList ID="rblVertical" Label="列表四（竖排）" ColumnNumber="3" ColumnVertical="true"
                    runat="server" ShowRedStar="true" Required="true">
                    <f:RadioItem Text="可选项 1" Value="value1" />
                    <f:RadioItem Text="可选项 2" Value="value2" />
                    <f:RadioItem Text="可选项 3" Value="value3" />
                    <f:RadioItem Text="可选项 4" Value="value4" />
                    <f:RadioItem Text="可选项 5" Value="value5" />
                    <f:RadioItem Text="可选项 6" Value="value6" />
                    <f:RadioItem Text="可选项 7" Value="value7" />
                    <f:RadioItem Text="可选项 8" Value="value8" />
                </f:RadioButtonList>

            </Items>
            <Toolbars>
                <f:Toolbar ID="Toolbar1" Position="Footer" runat="server" ToolbarAlign="Right">
                    <Items>
                        <f:Button runat="server" ID="btnSubmit" ValidateForms="SimpleForm1" Text="提交表单" OnClick="btnSubmit_Click">
                        </f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>
        </f:SimpleForm>
    </form>
    <script type="text/javascript">

        function alertSelectedValue() {
            var list2 = F('<%= RadioButtonList1.ClientID %>');
            var selectedRadio = list2.getValue();
            if (Ext.Object.isEmpty(selectedRadio)) {
                top.F.util.alert("列表一没有选中项！");
            } else {
                top.F.util.alert("列表一选中项的值：" + selectedRadio[list2.name]);
            }
        }

    </script>
</body>
</html>
