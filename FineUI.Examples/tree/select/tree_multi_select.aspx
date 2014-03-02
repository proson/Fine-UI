<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_multi_select.aspx.cs"
    Inherits="FineUI.Examples.tree.select.tree_multi_select" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Tree ID="Tree1" Width="650px" EnableFrame="true" EnableCollapse="true" ShowHeader="true" EnableMultiSelect="true" Title="树控件"
            runat="server">
            <Nodes>
                <f:TreeNode Text="中国" Expanded="true">
                    <f:TreeNode Text="河南省" Expanded="true">
                        <f:TreeNode Text="驻马店市" Expanded="true" NodeID="Zhumadian">
                            <f:TreeNode Text="遂平县" NodeID="Suiping">
                            </f:TreeNode>
                            <f:TreeNode Text="西平县" NodeID="Xiping">
                            </f:TreeNode>
                        </f:TreeNode>
                        <f:TreeNode Text="漯河市" Enabled="true" NodeID="Luohe" />
                    </f:TreeNode>
                    <f:TreeNode Text="安徽省" Expanded="true" NodeID="Anhui">
                        <f:TreeNode Text="合肥市" NodeID="Hefei">
                        </f:TreeNode>
                        <f:TreeNode Text="黄山市" NodeID="Huangshan">
                        </f:TreeNode>
                    </f:TreeNode>
                </f:TreeNode>
            </Nodes>
        </f:Tree>
        <br />
        <br />
        注：这是一个可以多选的树，你可以按着“Ctrl”选择多项。
    <br />
        <br />
        <f:Button ID="btnGetSelectedValues" OnClick="btnGetSelectedValues_Click" CssClass="inline"
            runat="server" Text="获取选中的节点列表">
        </f:Button>
        <f:Button ID="btnSelectOthers" OnClick="btnSelectOthers_Click" runat="server" Text="继续选中“合肥市”和“黄山市”">
        </f:Button>
        <br />
        <f:Label ID="labResult" runat="server">
        </f:Label>
        <br />
        <br />
    </form>
</body>
</html>
