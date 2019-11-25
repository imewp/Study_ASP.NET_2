using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCartDemo
{
    public partial class ShoppingCar : System.Web.UI.Page
    {
        double sum = 0;     //定义价格总汇变量
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uName"] != null)
                ItCurUser.Text = "当前用户：" + Session["uName"];
            else
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('请先登录！');location.href='Login.aspx'</script>");
        }

        /// <summary>
        /// GridView控件的行绑定事件，求购物车中商品价格总汇
        /// </summary>
        protected void grdGoods_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Literal ltl = (Literal)e.Row.FindControl("ltlSum");
                string strSum = ltl.Text;
                if (!string.IsNullOrEmpty(strSum))
                    sum += Convert.ToDouble(strSum);
            }
            else if(e.Row.RowType==DataControlRowType.Footer)
            {
                e.Row.Cells[5].Text = string.Format("{0:C}", sum);
                ((LinkButton)e.Row.FindControl("lbtnClear")).Attributes.Add("onClick", "javascript:return confirm('确定清空购物车？')");
            }
        }

        protected void lbtnClear_Click(object sender, EventArgs e)
        {
            string connstr = ConfigurationManager.ConnectionStrings["smdb"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connstr))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("upClearCarByScid", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter ps = new SqlParameter("@scID", Session["scID"]);
                cmd.Parameters.Add(ps);
                cmd.ExecuteNonQuery();
            }
            Response.Redirect(Request.Path);
        }
        protected void lbtnSelectAll_Click(object sender, EventArgs e)
        {
            LinkButton lbtn = (LinkButton)grdGoods.FooterRow.FindControl("lbtnSelectAll");
            if (lbtn.Text.Equals("全选"))
            {
                for (int i = 0; i < grdGoods.Rows.Count; i++)
                {
                    CheckBox chkTemp = ((CheckBox)(grdGoods.Rows[i].FindControl("chkSelect")));
                    if (chkTemp.Checked == false)
                        chkTemp.Checked = true;
                }
                ((LinkButton)grdGoods.FooterRow.FindControl("lbtnSelectAll")).Text = "取消全选";
            }
            else
            {
                for (int i = 0; i < grdGoods.Rows.Count; i++)
                {
                    CheckBox chkTemp = ((CheckBox)(grdGoods.Rows[i].FindControl("chkSelect")));
                    if (chkTemp.Checked == true)
                        chkTemp.Checked = false;
                }
                ((LinkButton)grdGoods.FooterRow.FindControl("lbtnSelectAll")).Text = "全选";
            }

        }
    }
}