<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="multi_values_remote.aspx.cs"
    Inherits="FineUI.Examples.autocomplete.multi_values_remote" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../jqueryui/css/ui-lightness/jquery-ui-1.9.2.custom.min.css" />
    <style>
        .ui-autocomplete-loading {
            background: white url('../images/ui-anim_basic_16x16.gif') right center no-repeat;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:SimpleForm ID="SimpleForm1" runat="server" LabelWidth="60px" Width="600px" BodyPadding="5px" EnableFrame="true" EnableCollapse="true"
            Title="简单表单">
            <Items>
                <f:TextBox ID="TextBox1" runat="server" Label="标题" EmptyText="输入字母 a 试试，可以输入多个值">
                </f:TextBox>
            </Items>
        </f:SimpleForm>
        <br />
        参考：http://jqueryui.com/autocomplete/#multiple-remote
    </form>
    <script src="../js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="../jqueryui/js/jquery-ui-1.9.2.custom.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        var textbox1ID = '<%= TextBox1.ClientID %>';

        F.ready(function () {
        
            // 将字符串 val 以逗号空格作为分隔符，分隔成数组
            function split(val) {
                return val.split(/,\s*/);
            }

            // 取得以逗号空格为分隔符的最后一个单词
            // 比如，输入为 "C++, C#, JavaScript" 则输入出 "JavaScript"
            function extractLast(term) {
                return split(term).pop();
            }

            $('#' + textbox1ID + ' input').bind("keydown", function (event) {
                // 通过 Tab 选择一项时，不会使当前文本框失去焦点
                if (event.keyCode === $.ui.keyCode.TAB &&
                        $(this).data("autocomplete").menu.active) {
                    event.preventDefault();
                }
            }).autocomplete({
                minLength: 0,
                source: function (request, response) {
                    $.getJSON("./search.ashx", {
                        term: extractLast(request.term)
                    }, response);
                },
                search: function () {
                    // 自定义的minLength（如果要限制两个字符才提示，把下面的1改为2即可）
                    var term = extractLast(this.value);
                    if (term.length < 1) {
                        return false;
                    }
                },
                focus: function () {
                    // 阻止某一项获得焦点时，更新文本框的值
                    return false;
                },
                select: function (event, ui) {
                    var terms = split(this.value);
                    // 移除用户正在输入项
                    terms.pop();
                    // 添加用户选择的项
                    terms.push(ui.item.value);
                    // 添加占位符，确保字符串的最后以逗号空格结束
                    terms.push("");
                    this.value = terms.join(", ");
                    return false;
                }
            });

        });

    </script>
</body>
</html>
