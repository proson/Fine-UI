<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="start.aspx.cs"
    Inherits="DotNetOA.Web.task.start" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <f:PageManager ID="PageManager1" runat="server" />
    <f:Form ID="Form2" runat="server" BodyPadding="5px" 
        Title="发起新任务" LabelWidth="100px">
        <Rows>
            <f:FormRow ID="FormRow1" runat="server">
                <Items>
                    <f:CheckBoxList ID="CheckBoxList1" runat="server" Label="执行人" Required="true" ColumnNumber="6">
                    </f:CheckBoxList>
                </Items>
            </f:FormRow>
        </Rows>
    </f:Form>
    <f:Tree runat="server" EnableArrows="true" OnNodeCommand="Tree1_NodeCommand" ShowBorder="false"
        ShowHeader="false" AutoScroll="true" ID="tree2">
        <Nodes>
            <f:TreeNode Text="添加企业" CommandArgument="info.aspx" IconUrl="~/images/16/1.png" EnablePostBack="true">
            </f:TreeNode>
            <f:TreeNode Text="企业查询" CommandArgument="info.aspx" IconUrl="~/images/16/1.png" EnablePostBack="true">
            </f:TreeNode>
            <f:TreeNode Text="企业业务信息查询" CommandArgument="info.aspx" IconUrl="~/images/16/1.png"
                EnablePostBack="true">
            </f:TreeNode>
        </Nodes>
    </f:Tree>
    <f:Accordion ID="Accordion1" runat="server" ShowBorder="false" ShowHeader="false"
        ShowCollapseTool="true">
        <Panes>
            <f:AccordionPane ID="AccordionPane1" runat="server" Title="企业业务" IconUrl="~/images/16/1.png"
                BodyPadding="2px 5px" Layout="Fit" ShowBorder="false">
                <Items>
                    <f:Tree runat="server" EnableArrows="true" OnNodeCommand="Tree1_NodeCommand" ShowBorder="false"
                        ShowHeader="false" AutoScroll="true" ID="tree1">
                        <Nodes>
                            <f:TreeNode Text="添加企业" CommandArgument="info.aspx" IconUrl="~/images/16/1.png" EnablePostBack="true">
                            </f:TreeNode>
                            <f:TreeNode Text="企业查询" CommandArgument="info.aspx" IconUrl="~/images/16/1.png" EnablePostBack="true">
                            </f:TreeNode>
                            <f:TreeNode Text="企业业务信息查询" CommandArgument="info.aspx" IconUrl="~/images/16/1.png"
                                EnablePostBack="true">
                            </f:TreeNode>
                        </Nodes>
                    </f:Tree>
                </Items>
            </f:AccordionPane>
        </Panes>
    </f:Accordion>
    <f:Button ID="Button1" runat="server" OnClick="btn_Submit_Click">
    </f:Button>
    </form>
</body>
</html>
