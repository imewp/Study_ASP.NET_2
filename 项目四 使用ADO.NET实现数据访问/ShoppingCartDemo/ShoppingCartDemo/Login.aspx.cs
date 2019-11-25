using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ShoppingCartDemo
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtUName.Text = null;
            txtUPwd.Text = null;
        }

        /// <summary>
        /// 获取会员ID
        /// </summary>
        protected int getUserIdByName(string uName,string uPwd)
        {
            int uID = 0;
            string connstr = ConfigurationManager.ConnectionStrings["smdb"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connstr))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("upGetUidByName", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter[] ps = new SqlParameter[]{
                    new SqlParameter("@uName",txtUName.Text),
                    new SqlParameter("@uPwd",txtUPwd.Text)
                };
                cmd.Parameters.AddRange(ps);
                uID = (int)cmd.ExecuteScalar();
            }
            return uID;
        }

        /// <summary>
        /// 获取购物车ID
        /// </summary>
        protected int getCarIdByUid(int uID)
        {
            int scID = 0;
            string connstr = ConfigurationManager.ConnectionStrings["smdb"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connstr))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("upGetScidByUid", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter ps = new SqlParameter("@uID", uID);
                cmd.Parameters.Add(ps);
                scID = (int)cmd.ExecuteScalar();
            }
            return scID;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string uName = txtUName.Text;
            string uPwd = txtUPwd.Text;
            int uID = getUserIdByName(uName, uPwd);
            if (uID != 0)
            {
                Session["uName"] = uName;
                Session["uID"] = uID;
                Session["scID"] = getCarIdByUid(uID);
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('登录成功！');location.href='GoodsList.aspx';</script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('用户名和密码不正确！');</script>");
            }
        }
    }
}