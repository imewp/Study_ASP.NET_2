using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProject1
{
    public partial class _2_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_ServerClick(object sender, EventArgs e)
        {
            Button2.Value = "HTML服务器控件";
        }
    }
}