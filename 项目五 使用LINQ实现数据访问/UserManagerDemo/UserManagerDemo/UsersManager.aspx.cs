using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserManagerDemo
{
    public partial class UsersManager : System.Web.UI.Page
    {
        /// <summary>
        /// 页面加载时将Users表中的数据显示在GridView控件中
        /// </summary>
        protected void Page_Load(object sender, EventArgs e)
        {
            UsersDataContext lq = new UsersDataContext();
            var mylq = from gt in lq.Users select gt;
            gvUsers.DataSource = mylq;
            gvUsers.DataBind();
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddUsers.aspx");
        }

        protected void gvUsers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            UsersDataContext lq = new UsersDataContext();
            var users = from gt in lq.Users
                        where gt.uID == Convert.ToInt32(gvUsers.DataKeys[e.RowIndex].Value)
                        select gt;
            foreach (Users user in users)
                lq.Users.DeleteOnSubmit(user);
            lq.SubmitChanges();
            Response.Redirect("UsersManager.aspx");
        }
    }
}