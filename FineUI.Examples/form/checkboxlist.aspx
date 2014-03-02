<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkboxlist.aspx.cs" Inherits="FineUI.Examples.form.checkboxlist" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:SimpleForm ID="SimpleForm1" Width="700px" runat="server" LabelWidth="160px" EnableFrame="true" EnableCollapse="true"
             BodyPadding="5px" ShowBorder="True" ShowHeader="True"
            Title="简单表单">
            <Items>
                <f:CheckBoxList ID="CheckBoxList1" Label="列表一" runat="server">
                    <f:CheckItem Text="可选项 1" Value="value1" />
                    <f:CheckItem Text="可选项 2" Value="value2" Selected="true" />
                    <f:CheckItem Text="可选项 3" Value="value3" Selected="true" />
                </f:CheckBoxList>
                <f:Button ID="btnServerSetSelectedValue" CssClass="inline" Text="选中上面列表中的第一项和第三项" OnClick="btnServerSetSelectedValue_Click"
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
                <f:CheckBoxList ID="CheckBoxList2" Label="列表二（一列）" ColumnNumber="1" runat="server">
                </f:CheckBoxList>
                <f:Label ID="Label1" runat="server" Text="&nbsp;">
                </f:Label>
                <f:CheckBoxList ID="rblAutoPostBack" AutoPostBack="true" OnSelectedIndexChanged="rblAutoPostBack_SelectedIndexChanged"
                    Label="列表三（自动回发）" ColumnNumber="3" runat="server" ShowRedStar="true" Required="true">
                    <f:CheckItem Text="可选项 1" Value="value1" />
                    <f:CheckItem Text="可选项 2" Value="value2" />
                    <f:CheckItem Text="可选项 3" Value="value3" />
                    <f:CheckItem Text="可选项 4" Value="value4" />
                    <f:CheckItem Text="可选项 5" Value="value5" />
                    <f:CheckItem Text="可选项 6" Value="value6" />
                    <f:CheckItem Text="可选项 7" Value="value7" />
                    <f:CheckItem Text="可选项 8" Value="value8" />
                </f:CheckBoxList>
                <f:Label ID="Label2" runat="server" Text="&nbsp;">
                </f:Label>
                <f:CheckBoxList ID="rblVertical" Label="列表四（竖排）" ColumnNumber="3" ColumnVertical="true"
                    runat="server" ShowRedStar="true" Required="true">
                    <f:CheckItem Text="可选项 1" Value="value1" />
                    <f:CheckItem Text="可选项 2" Value="value2" />
                    <f:CheckItem Text="可选项 3" Value="value3" />
                    <f:CheckItem Text="可选项 4" Value="value4" />
                    <f:CheckItem Text="可选项 5" Value="value5" />
                    <f:CheckItem Text="可选项 6" Value="value6" />
                    <f:CheckItem Text="可选项 7" Value="value7" />
                    <f:CheckItem Text="可选项 8" Value="value8" />
                </f:CheckBoxList>

            </Items>
            <Toolbars>
                <f:Toolbar Position="Footer" ToolbarAlign="Right" runat="server">
                    <Items>
                        <f:Button runat="server" ID="btnSubmit" ValidateForms="SimpleForm1" Text="提交表单"
                            OnClick="btnSubmit_Click">
                        </f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>
        </f:SimpleForm>
    </form>
    <script type="text/javascript">

        function alertSelectedValue() {
            var list2 = F('<%= CheckBoxList1.ClientID %>');
            var selectedCheckboxs = list2.getValue(), selectedValues, i;

            if (Ext.Object.isEmpty(selectedCheckboxs)) {
                top.F.util.alert("列表一没有选中项！");
            } else {
                selectedValues = [];
                Ext.Object.each(selectedCheckboxs, function (key, value) {
                    selectedValues.push(value);
                });
                top.F.util.alert("列表一选中项的值：" + selectedValues.join(','));
            }
        }

    </script>
</body>
</html>
