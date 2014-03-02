<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_checkall.aspx.cs"
    Inherits="FineUI.Examples.tree.checkbox.tree_checkall" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Tree ID="Tree1" OnNodeCheck="Tree1_NodeCheck" Width="650px" EnableFrame="true" EnableCollapse="true"
            ShowHeader="true" Title="树控件" runat="server">
            <Nodes>
                <f:TreeNode Text="中国" EnableCheckBox="true" AutoPostBack="true" Expanded="true">
                    <f:TreeNode AutoPostBack="true" Text="河南省" EnableCheckBox="true" Expanded="true">
                        <f:TreeNode Text="驻马店市" AutoPostBack="true" EnableCheckBox="true" NodeID="zhumadian">
                            <f:TreeNode Text="遂平县" AutoPostBack="true" EnableCheckBox="true" NodeID="Suiping">
                            </f:TreeNode>
                            <f:TreeNode Text="西平县" AutoPostBack="true" EnableCheckBox="true" NodeID="Xiping">
                            </f:TreeNode>
                        </f:TreeNode>
                        <f:TreeNode Text="漯河市" AutoPostBack="true" EnableCheckBox="true" NodeID="luohe" />
                    </f:TreeNode>
                    <f:TreeNode AutoPostBack="true" EnableCheckBox="true" Text="安徽省" Expanded="true"
                        NodeID="Anhui">
                        <f:TreeNode EnableCheckBox="true" AutoPostBack="true" Text="合肥市" NodeID="Hefei">
                        </f:TreeNode>
                        <f:TreeNode EnableCheckBox="true" AutoPostBack="true" Text="黄山市" NodeID="Huangshan">
                        </f:TreeNode>
                    </f:TreeNode>
                </f:TreeNode>
            </Nodes>
        </f:Tree>
    </form>
</body>
</html>
