<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_icon.aspx.cs" Inherits="FineUI.Examples.tree.tree_icon" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Tree ID="Tree1" Width="650px" ShowHeader="true" Title="树控件" EnableFrame="true" EnableCollapse="true"
            runat="server">
            <Nodes>
                <f:TreeNode Text="中国" Expanded="true">
                    <f:TreeNode Text="河南省" Expanded="true">
                        <f:TreeNode Text="驻马店市" Expanded="true" Icon="Anchor" NodeID="Zhumadian">
                            <f:TreeNode Text="遂平县" Icon="Anchor" NodeID="Suiping">
                            </f:TreeNode>
                            <f:TreeNode Text="西平县" Icon="Anchor" NodeID="Xiping">
                            </f:TreeNode>
                        </f:TreeNode>
                        <f:TreeNode Text="漯河市" NodeID="Luohe" />
                    </f:TreeNode>
                    <f:TreeNode Text="安徽省" Expanded="true" NodeID="Anhui">
                        <f:TreeNode Expanded="true" Text="合肥市" NodeID="Hefei">
                            <f:TreeNode Text="中国科学技术大学（链接）" NavigateUrl="http://www.ustc.edu.cn/" Target="_blank"
                                ToolTip="点击跳转到科大主页" NodeID="ustc">
                            </f:TreeNode>
                        </f:TreeNode>
                        <f:TreeNode Text="黄山市" NodeID="Huangshan">
                        </f:TreeNode>
                    </f:TreeNode>
                </f:TreeNode>
            </Nodes>
        </f:Tree>
        <br />
        <br />
    </form>
</body>
</html>
