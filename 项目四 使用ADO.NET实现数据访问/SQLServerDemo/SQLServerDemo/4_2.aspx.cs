using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;        //导入操作sql server数据库相关类的命名空间
using System.Configuration;         //导入获取配置文件信息相关类的命名空间

namespace SQLServerDemo
{
    public partial class _4_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            string str = ConfigurationManager.ConnectionStrings["smdb"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(str))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Create Table Test(tID Int)";
                cmd.ExecuteNonQuery();
                Label1.Text = "Test数据表创建成功";
            }
        }

        protected void btndel_Click(object sender, EventArgs e)
        {
            string str = ConfigurationManager.ConnectionStrings["smdb"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(str))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "drop Table Test";
                cmd.ExecuteNonQuery();
                Label1.Text = "Test数据表删除成功";
            }
        }
    }
}