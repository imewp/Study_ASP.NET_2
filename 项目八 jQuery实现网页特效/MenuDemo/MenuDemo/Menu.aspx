<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="MenuDemo.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css.css" rel="stylesheet" />
    <title></title>
    <script src="scripts/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".nav>li").mouseover(function () {
                $(this).css("background", "#F00");
                $(this).find("ul").css("display", "block");
            });
            $(".nav>li").mouseout(function () {
                $(this).css("background", "#06F");
                $(this).find("ul").css("display", "none");
            });
        })
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <ul class="nav">
            <li><a href="#">商城首页</a></li>
            <li><a href="#">商品展示</a></li>
            <li><a href="#">购物车</a></li>
            <li>
                <a href="#">用户管理</a>
                <ul class="nav_sub">
                    <li><a href="#">会员注册</a></li>
                    <li><a href="#">会员登录</a></li>
                </ul>
            </li>
            <li><a href="#">留言板</a></li>
        </ul>
    </div>
    </form>
</body>
</html>
