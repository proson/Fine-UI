<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree.aspx.cs" Inherits="FineUI.Examples.tree.tree" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Tree ID="Tree1" Width="650px" ShowHeader="true" Title="树控件（内联）" EnableFrame="true" EnableCollapse="true"
            runat="server">
            <Nodes>
                <f:TreeNode Text="中国" Expanded="true">
                    <f:TreeNode Text="河南省" Expanded="true">
                        <f:TreeNode Text="驻马店市" NodeID="zhumadian">
                            <f:TreeNode Text="遂平县" Leaf="false" NodeID="suiping">
                                <f:TreeNode Text="槐树乡" Leaf="false" NodeID="huaishu">
                                    <f:TreeNode Text="陈庄村" NodeID="chenzhuang">
                                    </f:TreeNode>
                                </f:TreeNode>
                            </f:TreeNode>
                        </f:TreeNode>
                        <f:TreeNode Text="漯河市" NodeID="luohe" />
                    </f:TreeNode>
                    <f:TreeNode Text="安徽省" Expanded="true" NodeID="anhui">
                        <f:TreeNode Text="合肥市" Expanded="true" NodeID="hefei">
                            <f:TreeNode Text="金色池塘小区" NodeID="golden">
                            </f:TreeNode>
                            <f:TreeNode Text="中国科学技术大学" NodeID="ustc">
                            </f:TreeNode>
                        </f:TreeNode>
                    </f:TreeNode>
                </f:TreeNode>
            </Nodes>
        </f:Tree>
    </form>
</body>
</html>
