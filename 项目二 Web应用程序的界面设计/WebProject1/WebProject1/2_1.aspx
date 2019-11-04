<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2_1.aspx.cs" Inherits="WebProject1._2_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <title>HTML服务器控件</title>
    <script type="text/javascript">
        function Hello() {
            alert("页面响应！");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input id="Button1" type="button" value="按钮1" runat="server" onclick="Hello()" />
            <input id="Button2" type="button" value="按钮2" runat="server" onserverclick="Button2_ServerClick" />
        </div>
    </form>
</body>
</html>
