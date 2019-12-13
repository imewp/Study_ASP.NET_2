<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="8_3.aspx.cs" Inherits="jQueryDemo._8_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="Script/jquery-3.4.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            //1.使用html方法操作元素内容
            //var ul_html = $("ul").html();
            //ul_html += "<li title='看书'>看书</li>";
            //$("ul").html(ul_html);


            //2.使用text方法操作元素内容
            //var ul_text = $("ul").text();
            //$("ul").text(ul_text);


            //3. 使用attr方法操作元素属性
            //var title = $("p").att("title");
            //alert(title);


            //使用addClass方法追加样式
            $("p").addClass("high");
            //使用removeClass方法移除样式
            $("p").removeClass("high");

            //使用css方法设置样式
            $("p").css("background-color", "wheat");
            //使用css方法获取样式
            $("ul").css("background-color", $("p").css("background-color"));
        })
    </script>
    <style>
        .high{
            font-style:italic;
            color:red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p title="选择你最喜欢的活动。">你的兴趣爱好是？</p>
        <ul>
            <li title="跳舞">跳舞</li>
            <li title="唱歌">唱歌</li>
            <li title="画画">画画</li>
            <li title="上网">上网</li>
        </ul>
    </div>
    </form>
</body>
</html>
