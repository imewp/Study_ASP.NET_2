<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="8_4.aspx.cs" Inherits="jQueryDemo._8_4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <script src="Script/jquery-3.4.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $("input").click(function () {
                $("p").toggleClass("high");
            });
            $("ul").parent().css("color", "white");
            $("ul").children().css("background-color", "green");
            $("body").find("p").css("color", "red");
        })
    </script>
    <style>
        .high{
            font-style:italic;
            color:blue;
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
        <input type="button" value="切换样式" />
    </div>
    </form>
</body>
</html>
