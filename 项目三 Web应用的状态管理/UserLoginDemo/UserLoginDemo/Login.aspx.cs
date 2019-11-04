using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserLoginDemo
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string strUrl = "";
            string name = txtUName.Text;
            string pwd = txtUPwd.Text;
            if (name == "xiaoxi" && pwd == "admin")
            {
                strUrl = "Index.aspx?uName=" + name + "&uPwd=" + pwd;
                Response.Redirect(strUrl);
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtUName.Text = null;
            txtUPwd.Text = null;
        }
    }
}