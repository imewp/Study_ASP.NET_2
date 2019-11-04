using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;

namespace DataSetDemo
{
    public partial class _4_6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            string str = ConfigurationManager.ConnectionStrings["smdb"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(str))
            {
                conn.Open();
                string cmdText = "select top 5 gdCode,gdName,gdPrice,gdQuantity,gdSaleQty from goods";
                SqlDataAdapter sda = new SqlDataAdapter(cmdText, conn);
                sda.Fill(ds, "goods");
            }
            DataTable dt = ds.Tables["goods"];
            StringBuilder stblder = new StringBuilder("");
            foreach(DataColumn col in dt.Columns)
            {
                stblder.Append(string.Format("[{0}]", col.ColumnName));
            }
            foreach(DataRow row in dt.Rows)
            {
                stblder.Append("<br/>");
                foreach(DataColumn col in dt.Columns)
                {
                    stblder.Append(string.Format("-{0}-", row[col]));
                }
            }
            lblView.Text = stblder.ToString();
        }
    }
}