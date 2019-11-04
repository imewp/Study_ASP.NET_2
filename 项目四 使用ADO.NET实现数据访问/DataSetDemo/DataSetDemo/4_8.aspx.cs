using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;
using System.Data;

namespace DataSetDemo
{
    public partial class _4_8 : System.Web.UI.Page
    {
        /// <summary>
        /// 集合数据绑定，将查询的商品类型名称分别
        /// 绑定到DropDownList和CheckBoxList控件
        /// </summary>
        protected void SetBind()
        {
            string str = ConfigurationManager.ConnectionStrings["smdb"].ConnectionString;
            DataSet ds = new DataSet();
            using (SqlConnection conn = new SqlConnection(str))
            {
                conn.Open();
                string cmdTest = "select * from goodsType";
                SqlDataAdapter sda = new SqlDataAdapter(cmdTest, conn);
                sda.Fill(ds, "gtype");
            }
            ddlGoodType.DataSource = ds.Tables["gtype"];
            ddlGoodType.DataTextField = "tName";
            ddlGoodType.DataValueField = "tID";
            ddlGoodType.DataBind();
            chkGoodType.DataSource = ds.Tables["gtype"];
            chkGoodType.DataTextField = "tName";
            chkGoodType.DataValueField = "tID";
            chkGoodType.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            SetBind();
        }
    }
}