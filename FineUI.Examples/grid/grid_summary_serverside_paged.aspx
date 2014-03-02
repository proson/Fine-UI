<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_summary_serverside_paged.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_summary_serverside_paged" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        .mygrid-row-summary .x-grid-td, .mygrid-row-summary.x-grid-row-focused .x-grid-td {
            background-color: #fafafa;
            font-weight: bold;
            color: red;
        }

        .mygrid-row-summary .x-grid-cell-row-checker .x-grid-cell-inner, .mygrid-row-summary .x-grid-cell-row-numberer .x-grid-cell-inner {
            display: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Grid ID="Grid1" Title="表格" EnableFrame="true" EnableCollapse="true" Width="800px" Height="350px" PageSize="5" ShowBorder="true"
            ShowHeader="true" AllowPaging="true" runat="server" EnableCheckBoxSelect="True"
            DataKeyNames="Id,Name" IsDatabasePaging="true" OnPageIndexChange="Grid1_PageIndexChange">
            <Columns>
                <f:RowNumberField />
                <f:BoundField Width="100px" ColumnID="name" DataField="Name" DataFormatString="{0}"
                    HeaderText="姓名" />
                <f:TemplateField Width="80px" HeaderText="性别">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                    </ItemTemplate>
                </f:TemplateField>
                <f:BoundField Width="80px" DataField="EntranceYear" HeaderText="入学年份" />
                <f:CheckBoxField Width="80px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="是否在校" />
                <f:HyperLinkField HeaderText="所学专业" ColumnID="major" DataToolTipField="Major" DataTextField="Major"
                    DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                    DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
                <f:BoundField Width="100px" DataField="Fee" ColumnID="fee" HeaderText="学费" />
                <f:BoundField Width="100px" DataField="Donate" ColumnID="donate" HeaderText="捐赠金额" />
            </Columns>
        </f:Grid>
        <f:HiddenField runat="server" ID="hfGrid1Summary"></f:HiddenField>
        <br />
        <f:Button ID="Button1" runat="server" Text="选中了哪些行" OnClick="Button1_Click">
        </f:Button>
        <br />
        <f:Label ID="labResult" EncodeText="false" runat="server">
        </f:Label>
    </form>
    <script src="../js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script>

        var gridClientID = '<%= Grid1.ClientID %>';
        var gridSummaryID = '<%= hfGrid1Summary.ClientID %>';

        function calcGridSummary(grid) {
            var donateTotal = 0, store = grid.getStore(), view = grid.getView(), storeCount = store.getCount();

            // 防止重复添加了合计行
            if (Ext.get(view.getNode(storeCount - 1)).hasCls('mygrid-row-summary')) {
                return;
            }

            // 从隐藏字段获取全部数据的汇总
            var summaryJSON = JSON.parse(F(gridSummaryID).getValue());

            store.add({
                'major': '分页合计：',
                'donate': summaryJSON['donateTotal'].toFixed(2),
                'fee': summaryJSON['feeTotal'].toFixed(2)
            });

            // 为合计行添加自定义样式（隐藏序号列、复选框列，取消 hover 和 selected 效果）
            Ext.get(view.getNode(storeCount)).addCls('mygrid-row-summary');

        }

        // 页面第一个加载完毕后执行的函数
        F.ready(function () {
            var grid = F(gridClientID);
            calcGridSummary(grid);

            // 防止选中合计行
            grid.addListener('beforeselect', function (sm, record, rowIndex) {
                if (Ext.get(grid.getView().getNode(rowIndex)).hasCls('mygrid-row-summary')) {
                    return false;
                }
                return true;
            });
        });

        // 页面AJAX回发后执行的函数
        F.ajaxReady(function () {
            var grid = F(gridClientID);
            calcGridSummary(grid);
        });
    </script>
</body>
</html>
