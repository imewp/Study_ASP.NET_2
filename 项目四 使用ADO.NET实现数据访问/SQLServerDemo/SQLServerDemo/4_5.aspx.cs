using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;        //导入操作sql server数据库相关类的命名空间
using System.Configuration;         //导入获取配置文件信息相关类的命名空间

namespace SQLServerDemo
{
    public partial class _4_5 : System.Web.UI.Page
    {
        /// <summary>
        /// 设定下拉列表ddlCols的数据内容
        /// </summary>
        public void ddlColsData()
        {
            ddlCols.Items.Clear();
            string str = ConfigurationManager.ConnectionStrings["smdb"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(str))
            {
                conn.Open();
                string cmdText = "select uName,uRealName,uPhone,uQQ from users";
                SqlCommand cmd = new SqlCommand(cmdText, conn);
                SqlDataReader dr = cmd.ExecuteReader();
                DataTable dt = dr.GetSchemaTable();
                ddlCols.Items.Add(new ListItem("用户名", dt.Rows[0][0].ToString()));
                ddlCols.Items.Add(new ListItem("姓名", dt.Rows[1][0].ToString()));
                ddlCols.Items.Add(new ListItem("联系电话", dt.Rows[2][0].ToString()));
                ddlCols.Items.Add(new ListItem("QQ号", dt.Rows[3][0].ToString()));
            }
        }
        /// <summary>
        /// 设定列表框ltbItems的数据内容
        /// </summary>
        public void ltbItemData()
        {
            ltbItems.Items.Clear();
            string str = ConfigurationManager.ConnectionStrings["smdb"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(str))
            {
                conn.Open();
                string field = ddlCols.SelectedValue;
                string cmdText = "select uID," + field + " from users";
                SqlCommand cmd = new SqlCommand(cmdText, conn);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    ltbItems.Items.Add(new ListItem(dr.GetValue(1).ToString(), dr.GetValue(0).ToString()));
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlColsData();
                ltbItemData();
            }
        }

        protected void ddlCols_SelectedIndexChanged(object sender, EventArgs e)
        {
            ltbItemData();
        }

        protected void ltbItems_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblInfo.Text = "";
            string str = ConfigurationManager.ConnectionStrings["smdb"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(str))
            {
                conn.Open();
                string cmdText = "select * from users where uID=@uid";
                SqlCommand cmd = new SqlCommand(cmdText, conn);
                SqlParameter sp = new SqlParameter("uID", ltbItems.SelectedValue);
                cmd.Parameters.Add(sp);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    StringBuilder sblstr = new StringBuilder("");
                    sblstr.Append("<br/>用户名：" + dr["uName"]);
                    sblstr.Append("<br/>姓名：" + dr["uRealName"]);
                    sblstr.Append("<br/>性别：" + dr["uSex"]);
                    sblstr.Append("<br/>年龄：" + dr["uAge"]);
                    sblstr.Append("<br/>联系电话：" + dr["uPhone"]);
                    sblstr.Append("<br/>电子邮箱：" + dr["uEmail"]);
                    lblInfo.Text = sblstr.ToString();
                }
            }
        }
    }
}