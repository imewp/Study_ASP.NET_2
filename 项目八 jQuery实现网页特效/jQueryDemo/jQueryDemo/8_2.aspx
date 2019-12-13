<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="8_2.aspx.cs" Inherits="jQueryDemo._8_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>汽车品牌列表展示</title>
    <script src="Script/jquery-3.4.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function(){
        var $category = $('ul li:gt(2)');
        $category.hide();
        var $toggleBtn=$('div.showmore>a');
        $toggleBtn.click(function(){
            if($category.is(":visible")){
                $category.hide();
                $(this).find('span').text("全部显示");
            }
            else{
                $category.show();
                $(this).find('span').text("精简显示");
            }
        return false;
        });
        });
    </script>
    <link rel="stylesheet" type="text/css" href="css/default.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="listofbrand">
            <ul>
                <li><a href="#">别克</a></li>
                <li><a href="#">宝马</a></li>
                <li><a href="#">东风</a></li>
                <li><a href="#">长安</a></li>
                <li><a href="#">吉利</a></li>
                <li><a href="#">奇瑞</a></li>
            </ul>
        </div>
        <div class="showmore">
            <a href="more.html"><span>全部显示</span></a>
        </div>
    </form>
</body>
</html>
