using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;        //导入操作sql server数据库相关类的命名空间
using System.Configuration;         //导入获取配置文件信息相关类的命名空间

namespace SQLServerDemo
{
    public partial class _4_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// 连接数据库
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnSM_Click(object sender, EventArgs e)
        {
            string str = ConfigurationManager.ConnectionStrings["smdb"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(str))
            {
                try
                {
                    conn.Open();        
                    Label1.Text = "连接字符串：" + conn.ConnectionString;
                    Label1.Text += "</br>连接状态：" + conn.State.ToString();
                    Label1.Text += "</br>数据源：" + conn.DataSource; ;
                    Label1.Text += "</br>服务器版本：" + conn.ServerVersion;
                    Label1.Text += "</br>数据库名称：" + conn.Database;
                }
                catch(Exception ee)
                {
                    Label1.Text = "连接失败";
                }
            }
        }
    }
}