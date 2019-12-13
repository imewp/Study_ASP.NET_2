<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="8_7.aspx.cs" Inherits="jQueryEnentDemo._8_7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>文字显示隐藏</title>
    <script src="scripts/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">
        $(function () {

            //1.使用mouseover和mouseout方法

            //$("img").mouseover(function () {
            //    if ($("div").text() == "")
            //        $("div").text("very beautful!");
            //    else {
            //        $("div").text("");
            //    }
            //});
            //$("img").mouseout(function () {
            //    if ($("div").text() == "")
            //        $("div").text("very beautful!");
            //    else {
            //        $("div").text("");
            //    }
            //});



            //2.使用hover方法

            $("img").hover(function () {
                $("div").text("very beautiful!");
            }, function () {
                $("div").text("");
            });
        });
    </script>
</head>
<body>
    <img src="images/1.jpg" />
    <div></div>
</body>
</html>
