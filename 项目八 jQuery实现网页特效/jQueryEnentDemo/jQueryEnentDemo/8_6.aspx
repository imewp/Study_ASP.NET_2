<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="8_6.aspx.cs" Inherits="jQueryEnentDemo._8_6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>单击图片显示文字</title>
    <script src="scripts/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("img").bind("click", function () {
                $("div").text("very beautiful!");
            });
        });
    </script>
</head>
<body>
     <img src="images/1.jpg" />
     <div></div>
</body>
</html>
