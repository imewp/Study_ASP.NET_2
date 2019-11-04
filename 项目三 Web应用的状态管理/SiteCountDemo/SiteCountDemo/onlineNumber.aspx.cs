using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteCountDemo
{
    public partial class onlineNumber : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Literal1.Text = Application["CurNum"].ToString();
            Literal2.Text = Application["TotNum"].ToString();
        }
    }
}