<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_checked.aspx.cs" Inherits="FineUI.Examples.tree.checkbox.tree_checked" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Tree ID="Tree1" ShowHeader="true" Width="650px" EnableFrame="true" EnableCollapse="true"
            Title="树控件" runat="server">
            <Nodes>
                <f:TreeNode Text="中国" EnableCheckBox="true" Expanded="true">
                    <f:TreeNode Text="河南省" EnableCheckBox="true" Expanded="true">
                        <f:TreeNode Text="驻马店市" EnableCheckBox="true" NodeID="zhumadian">
                            <f:TreeNode Text="遂平县" EnableCheckBox="true" NodeID="Suiping">
                            </f:TreeNode>
                            <f:TreeNode Text="西平县" EnableCheckBox="true" NodeID="Xiping">
                            </f:TreeNode>
                        </f:TreeNode>
                        <f:TreeNode Text="漯河市" EnableCheckBox="true" NodeID="luohe" />
                    </f:TreeNode>
                    <f:TreeNode EnableCheckBox="true" Text="安徽省" Expanded="true" NodeID="Anhui">
                        <f:TreeNode EnableCheckBox="true" Text="合肥市" NodeID="Hefei">
                        </f:TreeNode>
                        <f:TreeNode EnableCheckBox="true" Text="黄山市" NodeID="Huangshan">
                        </f:TreeNode>
                    </f:TreeNode>
                </f:TreeNode>
            </Nodes>
        </f:Tree>
        <br />
        <f:Button runat="server" ID="btnGetCheckedValues" Text="获取选中的项" OnClick="btnGetCheckedValues_Click">
        </f:Button>
        <br />
        <f:Label runat="server" ID="labResult">
        </f:Label>
    </form>
</body>
</html>
