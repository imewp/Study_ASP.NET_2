using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineChatRoom._3_10
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string name = txtUserName.Text;
            string pwd = txtUserPwd.Text;
            if (pwd == "admin")
            {
                Session["uName"] = name;
                Response.Redirect("ChatRoom.aspx");
            }
            else
            {
                Response.Write("<script>alert('密码不正确')</script>");
                txtUserName.Text = "";
                txtUserPwd.Text = "";
            }
        }

    }
}