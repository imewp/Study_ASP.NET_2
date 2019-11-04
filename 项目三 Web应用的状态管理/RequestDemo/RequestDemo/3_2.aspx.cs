using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RequestDemo
{
    public partial class _3_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpBrowserCapabilities b = Request.Browser;
            Response.Write("客户端浏览器信息：" + "<hr>");
            Response.Write("名称：" + b.Browser + "<br>");
            Response.Write("版本：" + b.Version + "<br>");
            Response.Write("操作系统：" + b.Platform + "<br>");
            Response.Write("是否支持Cookies：" + b.Cookies + "<br>" + "<hr>");
        }
    }
}