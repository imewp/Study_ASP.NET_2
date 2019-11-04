using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CookieDemo
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["userInfo"] != null && Request.Cookies["userInfo"]["uName"] != null)
            {
                string name = Request.Cookies["userInfo"]["uName"];
                Response.Write(name + "，你好！<br/>");
            }
            int count = 0;
            if (Request.Cookies["count"] != null)
                count = int.Parse(Request.Cookies["count"].Value);
            count++;
            Response.Cookies["count"].Value = count.ToString();
            Response.Cookies["count"].Expires = DateTime.Now.AddDays(1);
            lblCount.Text = "当前页面的访问次数为" + count.ToString() + "次";
        }

        protected void btndel_Click(object sender, EventArgs e)
        {
            HttpCookie aCookie;
            string cookieName;
            for (int i = 0; i < Request.Cookies.Count; i++)
            {
                cookieName = Request.Cookies[i].Name;
                aCookie = new HttpCookie(cookieName);
                aCookie.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(aCookie);
                Response.Redirect("Login.aspx");
            }
            //HttpCookie aCookie = Request.Cookies["userInfo"];
            //aCookie.Values.Remove("uName");
            //aCookie.Values.Remove("uPwd");
            //aCookie.Expires = DateTime.Now.AddDays(-1);
            //Response.Cookies.Add(aCookie);
            
        }
    }
}