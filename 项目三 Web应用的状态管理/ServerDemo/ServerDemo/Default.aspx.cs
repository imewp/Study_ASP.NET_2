using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ServerDemo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //获取服务器的信息
            Response.Write(Server.MachineName + "<br/>");
            Response.Write(Server.ScriptTimeout + "<hr/>");
            
            //Server.MapPath方法的使用
            Response.Write(Server.MapPath("Default.aspx") + "<hr/>");

            //浏览器中的字符编码
            string str = "<h3>湖南信息学院</h3>";
            lblEnCode.Text = Server.HtmlEncode(str);
            lblDeCode.Text = Server.HtmlDecode(lblEnCode.Text);
        }
    }
}