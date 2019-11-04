<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2_3.aspx.cs" Inherits="WebProject1._2_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript" >
        function phoneCheck(source, args) {
            var phone = args.Value;
            args.IsValid = false;
            if(phone.length==11)
            {
                if (phone.charAt(0) == '1')
                {
                    for (var i = 0; i < phone.length; i++)
                    {
                        if (phone.charAt(i) < '0' && phone.charAt(i) > '9')
                            break;
                        if (i == phone.length)
                            args.IsValid = true;
                    }
                }
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        例2-8：必须项验证<br />
        用户名：<asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="（用户名不能为空）" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" />
        <br />
        <br />
        <br />
        例2-9：特定值比较验证<br />
        到达时期：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox1" Font-Size="Small" ErrorMessage="请输入正确的日期格式，如：2013/02/01" Operator="DataTypeCheck" Type="Date" Display="Dynamic"></asp:CompareValidator>
        <br />
        离开时期：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="离开日期不能早于到达日期！" ControlToCompare="TextBox1" ControlToValidate="TextBox2" Font-Size="Small" Display="Dynamic" Operator="GreaterThanEqual" Type="Date"></asp:CompareValidator>
        <br />
        <br />
        例2-10：范围检查验证<br />
        成绩：<asp:TextBox ID="TextBox3" runat="server" Width="71px"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" Font-Size="Small" runat="server" ErrorMessage="输入的成绩不在范围内" ControlToValidate="TextBox3" Display="Dynamic" MaximumValue="100" MinimumValue="0" Type="Double"></asp:RangeValidator>
        <br />
        <br />
        例2-11：模式匹配验证页面中用户输入的电子邮件地址<br />
        电子邮箱：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="邮箱格式不正确！" Font-Size="Small" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <br />
        例2-12：用户自定义验证<br />
        手机号码：<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="手机号格式不正确！" ClientValidationFunction="phoneCheck"></asp:CustomValidator>
    </div>
    </form>
</body>
</html>
