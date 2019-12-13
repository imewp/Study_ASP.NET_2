<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="8_1.aspx.cs" Inherits="jQueryDemo._8_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>第一个jQuery的Hello World程序</title>
    <script src="Script/jquery-3.4.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            alert("Hello World!");      //弹出提示框
        })
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
