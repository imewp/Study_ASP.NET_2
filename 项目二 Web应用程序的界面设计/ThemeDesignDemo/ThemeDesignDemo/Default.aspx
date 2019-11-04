<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ThemeDesignDemo.Default" Theme="Red" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">
        <div id="branding">
            <h1>我的网站</h1>
            请选择风格：<a href="Default.aspx?theme=Blue">蓝色风格</a>
                        <a href="Default.aspx?theme=Red">红色风格</a>
        </div>
        <div id="content">
            <div id="mainContent">
                <h1>大学生活</h1><p>请在这里添加文字</p>
                <h2>心灵鸡汤</h2><p>请在这里添加文字</p>
                <h2>影视天地</h2><p>请在这里添加文字</p>
            </div>
            <div id="secondaryContent">
                <h2>我的日记</h2>
                <p>
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </p>
            </div>
            <ul id="mainNav">
                <li><a href="#">我的首页</a></li>
                <li><a href="#">生活艺术</a></li>
                <li><a href="#">学习天地</a></li>
                <li><a href="#">友情链接</a></li>
                <li><a href="#">有话就说</a></li>
            </ul>
            <div id="footer"><p>CopyRight &copy; 2013. All Right Reserved.</p></div>
        </div>
    </div>
    </form>
</body>
</html>
