using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserLoginDemo
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["uName"] != null && Request["uPwd"] != null)
            {
                Response.Write(Request["uName"] + "，你好!<br/>");
                Response.Write("你的密码是：" + Request["uPwd"]);
            }
        }
    }
}