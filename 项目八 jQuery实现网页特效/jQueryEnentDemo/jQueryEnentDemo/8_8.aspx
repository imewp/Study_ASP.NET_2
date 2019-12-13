<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="8_8.aspx.cs" Inherits="jQueryEnentDemo._8_8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>文字显示隐藏</title>
    <script src="scripts/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
            //使用show和hide方法实现文字侠士隐藏
            $("img").hover(function () {
                $("div").show();
            }, function () {
                $("div").hide();
            })
           
        });
    </script>
</head>
<body>
    <img src="images/1.jpg" />
    <div>very beautiful!</div>
</body>
</html>
