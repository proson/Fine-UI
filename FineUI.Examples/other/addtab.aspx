<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addtab.aspx.cs" Inherits="FineUI.Examples.other.addtab" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <f:PageManager ID="PageManager1" runat="server" />
    <f:Button ID="Button1" runat="server" EnablePostBack="false" OnClientClick="openHelloFineUI();"
        Text="向父页面添加选项卡">
    </f:Button>
    <br />
    <f:Button ID="Button2" runat="server" EnablePostBack="false" OnClientClick="closeActiveTab();"
        Text="关闭当前选项卡">
    </f:Button>
    </form>
	<script type="text/javascript">
        
		var basePath = '<%= ResolveUrl("~/") %>';
		
        function openHelloFineUI() {
            /*
            var node = {
                attributes: {
                    href: "/basic/hello.aspx"
                },
                text: "你好 FineUI",
                id: "hello_fineui_example"
            };
            */
            
            parent.addExampleTab.apply(null, ['hello_fineui_example', basePath + 'basic/hello.aspx', '你好 FineUI', basePath + 'images/filetype/vs_aspx.png', true]);
        }

        function closeActiveTab() {
            parent.removeActiveTab();
        }
    </script>
</body>
</html>
