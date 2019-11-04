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
    public partial class _4_4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// 向SMDB数据库中添加一名管理员
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string str = ConfigurationManager.ConnectionStrings["smdb"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(str))
            {
                conn.Open();
                string cmdTest = "insert into Admins values(@name,@pwd,@type,default)";
                SqlCommand cmd = new SqlCommand(cmdTest, conn);
                SqlParameter[] ps ={
                    new SqlParameter("@name",txtName.Text),
                    new SqlParameter("@pwd", txtPwd.Text),
                    new SqlParameter("@type",ddlType.SelectedValue)};
                cmd.Parameters.AddRange(ps);
                if (cmd.ExecuteNonQuery() > 0)
                    Response.Write("添加成功");
                else
                    Response.Write("添加失败");
            }
        }
    }
}