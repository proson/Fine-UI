<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="group_panel.aspx.cs" Inherits="FineUI.Examples.window.group_panel" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Panel ID="Panel1" BodyPadding="5px" runat="server"
            EnableCollapse="True" Title="面板" Width="600px">
            <Items>
                <f:GroupPanel runat="server" Title="分组面板一" ID="GroupPanel1" EnableCollapse="True">
                    <Items>
                        <f:SimpleForm ID="SimpleForm1" runat="server" ShowBorder="False"
                            ShowHeader="False">
                            <Items>
                                <f:TextBox ID="TextBox1" Label="名称" runat="server">
                                </f:TextBox>
                                <f:TextArea ID="TextArea1" Label="备注" runat="server">
                                </f:TextArea>
                            </Items>
                        </f:SimpleForm>
                    </Items>
                </f:GroupPanel>
                <f:GroupPanel ID="GroupPanel2" Title="分组面板二" runat="server" EnableCollapse="True">
                    <Items>
                        <f:ContentPanel ID="ContentPanel1" ShowBorder="false" ShowHeader="false"
                            runat="server">
                            <a href="http://tech.163.com/special/jobsdead/"
                                style="font-size: 18px" target="_blank"><b>乔布斯</b></a><br />
                            <div>
                                <p>
                                    乔布斯于1955年2月24日出生，苹果创始人之一，近年来多次被评为全美最佳CEO，业界评论“苹果就是乔布斯，乔布斯就是苹果”。在乔布斯的带领下，苹果股价去年一路飙升，超越微软成为世界第一大科技公司，今年8月苹果超越埃克森美孚成为全球最大市值企业，截止上季度持有现金达到762亿美金，甚至超过了美国政府国库存款。
                                </p>
                                <p>
                                    遗憾的是，苹果的取得巨大成功还是无法给乔布斯一个健康的身体，乔布斯2003年被发现患有胰脏癌，随后又查出肝癌，危在旦夕的乔布斯在经历了8年的抗癌斗争、3次病休、若干次手术后，于2011年8月25日正式宣布从CEO位置辞职转做公司董事长，原COO库克正式接任乔布斯任CEO。2011年10月6日，乔布斯在苹果发布iPhone 4S后的第二天与世长辞。
                                </p>
                            </div>
                        </f:ContentPanel>
                    </Items>
                </f:GroupPanel>
            </Items>
        </f:Panel>
        <br />
        <f:Button ID="Button2" Text="展开/折叠分组面板二" OnClick="Button2_Click" runat="server">
        </f:Button>
    </form>
</body>
</html>
