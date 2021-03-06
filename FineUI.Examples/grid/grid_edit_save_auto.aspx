﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_edit_save_auto.aspx.cs" EnableViewState="false"
    Inherits="FineUI.Examples.grid.grid_edit_save_auto" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        body.f-body {
            padding: 0;
        }

        .success {
            color: Green;
        }

        .error {
            color: Red;
        }

        .bold {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" AutoSizePanelID="Panel2" runat="server" />
        <f:Panel ID="Panel2" runat="server" ShowBorder="false" Layout="HBox" BoxConfigAlign="Stretch"
            BoxConfigPosition="Start" BoxConfigPadding="5" BoxConfigChildMargin="0 5 0 0"
            ShowHeader="false">
            <Items>
                <f:Grid ID="Grid1" ShowBorder="true" BoxFlex="1" ShowHeader="true" Title="表格" runat="server" EnableFrame="true" EnableCollapse="true"
                    DataKeyNames="Id,Name" EnableMultiSelect="false" EnableRowSelectEvent="true" OnRowSelect="Grid1_RowSelect">
                    <Columns>
                        <f:TemplateField Width="60px" EnableColumnHide="false" EnableHeaderMenu="false">
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
                        <f:TemplateField HeaderText="语文成绩" Width="80px">
                            <ItemTemplate>
                                <asp:TextBox runat="server" Width="98%" ID="tbxTableChineseScore" CssClass="ChineseScore"
                                    TabIndex='<%# Container.DataItemIndex + 10 %>' Text='<%# Eval("ChineseScore") %>'></asp:TextBox>
                            </ItemTemplate>
                        </f:TemplateField>
                        <f:TemplateField HeaderText="数学成绩" Width="80px">
                            <ItemTemplate>
                                <asp:TextBox runat="server" Width="98%" ID="tbxTableMathScore" CssClass="MathScore"
                                    TabIndex='<%# Container.DataItemIndex + 100 %>' Text='<%# Eval("MathScore") %>'></asp:TextBox>
                            </ItemTemplate>
                        </f:TemplateField>
                        <f:TemplateField HeaderText="总成绩" Width="80px">
                            <ItemTemplate>
                                <asp:Label runat="server" CssClass="TotalScore" Text='<%# Eval("TotalScore") %>'></asp:Label>
                            </ItemTemplate>
                        </f:TemplateField>
                    </Columns>
                </f:Grid>
                <f:SimpleForm ID="SimpleForm1" runat="server" Width="300px" LabelAlign="Left" LabelWidth="100px" EnableFrame="true" EnableCollapse="true"
                    Title="详细信息" BodyPadding="5px 10px" BoxMargin="0">
                    <Items>
                        <f:Label runat="server" ID="labName" Label="姓名" Text="">
                        </f:Label>
                        <f:Label runat="server" ID="labGender" Label="性别" Text="">
                        </f:Label>
                        <f:Label runat="server" ID="labEntranceYear" Label="入学年份" Text="">
                        </f:Label>
                        <f:Label runat="server" ID="labAtSchool" Label="是否在校" Text="">
                        </f:Label>
                        <f:Label runat="server" ID="labMajor" Label="所学专业" Text="">
                        </f:Label>
                        <f:Label runat="server" ID="labDesc" Label="个人简介" Text="">
                        </f:Label>
                        <f:Label runat="server" ID="labChineseScore" Label="语文成绩" Text="">
                        </f:Label>
                        <f:Label runat="server" ID="labMathScore" Label="数学成绩" Text="">
                        </f:Label>
                        <f:Label runat="server" ID="labTotalScore" Label="总成绩" Text="">
                        </f:Label>
                    </Items>
                </f:SimpleForm>
            </Items>
        </f:Panel>
    </form>
    <script src="../js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        var gridClientID = '<%= Grid1.ClientID %>';
        var inputselector = '.x-grid-tpl input';

        function registerAutoSaveEvent() {
            var grid = F(gridClientID);

            $(grid.el.dom).delegate(inputselector, 'keypress', function (evt) {
                var $this = $(this);

                window.setTimeout(function () {

                    var row = $this.parents('.x-grid-row');
                    var num1 = row.find(inputselector + '.ChineseScore').val();
                    var num2 = row.find(inputselector + '.MathScore').val();
                    var resultNode = row.find('.x-grid-tpl span.TotalScore');

                    resultNode.text(parseInt(num1, 10) + parseInt(num2, 10));

                    var rowIndex = row.index();
                    __doPostBack('', 'AutoSave$' + rowIndex);

                }, 500);
            });

        }

        // 页面第一次加载完成后调用的函数
        F.ready(function () {
            registerAutoSaveEvent();
        });

    </script>
</body>
</html>
