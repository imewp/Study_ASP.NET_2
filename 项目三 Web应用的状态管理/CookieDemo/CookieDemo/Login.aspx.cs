using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CookieDemo
{
    public partial class _3_3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = "";
            string pwd = "";
            if (Request.Cookies["userInfo"] != null && Request.Cookies["userInfo"]["uName"] != null)
            {
                name = Request.Cookies["userInfo"]["uName"];
                pwd = Request.Cookies["userInfo"]["uPwd"];
                if (name == "xiaoxi" && pwd == "admin")
                    Response.Redirect("Index.aspx");
            }
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            string name = txtUserName.Text;
            string pwd = txtUserPwd.Text;
            if (name == "xiaoxi" && pwd == "admin")
            {
                if(chkState.Checked)
                {
                    Response.Cookies["userInfo"]["uName"] = name;
                    Response.Cookies["userInfo"]["uPwd"] = pwd;
                    Response.Cookies["userInfo"].Expires = DateTime.Now.AddDays(14);
                }
                Response.Redirect("Index.aspx");
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtUserName.Text = null;
            txtUserPwd.Text = null;
        }
    }
}