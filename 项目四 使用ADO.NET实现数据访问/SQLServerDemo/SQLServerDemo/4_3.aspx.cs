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
    public partial class _4_3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CountUsers_Click(object sender, EventArgs e)
        {
            string str = ConfigurationManager.ConnectionStrings["smdb"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(str))
            {
                conn.Open();
                string cmdText = "select count(*) from users";
                SqlCommand cmd = new SqlCommand(cmdText, conn);
                int nums = (int)cmd.ExecuteScalar();
                Label1.Text = "本站已注册会员人数：" + nums;
            }
        }
    }
}