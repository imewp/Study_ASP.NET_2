﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace GoodsManagerDemo
{
    public partial class EditGoods : System.Web.UI.Page
    {
        int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["gdID"] != null)
            {
                id = int.Parse(Request["gdID"].ToString());
                if (!IsPostBack)
                    dispGoodInfo();
            }
        }

        /// <summary>
        /// 显示指定的商品信息
        /// </summary>
        public void dispGoodInfo()
        {
            string str = ConfigurationManager.ConnectionStrings["smdb"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(str))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("upGetGoodsById", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter pm = new SqlParameter("@gdID", id);
                cmd.Parameters.Add(pm);
                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.Read())
                {
                    lblID.Text = dr["gdID"].ToString();
                    txtCode.Text = dr["gdCode"].ToString();
                    txtName.Text = dr["gdName"].ToString();
                    ddlType.SelectedValue = dr["tID"].ToString();
                    txtPrice.Text = dr["gdPrice"].ToString();
                    txtQuantity.Text = dr["gdQuantity"].ToString();
                    lblSaleQty.Text = dr["gdSaleQty"].ToString();
                    txtCity.Text = dr["gdCity"].ToString();
                    txtFeight.Text = dr["gdFeight"].ToString();
                    txtInfo.Text = dr["gdInfo"].ToString();
                    img.ImageUrl = "images/goods/" + dr["gdImage"].ToString();
                }
            }
        }
        /// <summary>
        /// 将指定文件上传到服务器
        /// </summary>
        /// <param name="fUpload">文件上传控件对象</param>
        /// <returns>返回文件名</returns>
        public string imgUpLoad(FileUpload fUpload)
        {
            string fileName = "";
            if (fUpload.HasFile)
            {
                string fileExt = Path.GetExtension(fUpload.FileName).ToLower();
                string uploadFileExt = ".gif|.jpg|.png|.bmp"; //设置过滤的图片文件类型
                if (("|" + uploadFileExt + "|").IndexOf("|" + fileExt + "|") >= 0)
                {
                    try
                    {
                        fileName = DateTime.Now.ToString("yyyymmddhhmmss").ToString() + fileExt;
                        fUpload.SaveAs(Server.MapPath("Images/Goods/" + fileName));
                    }
                    catch (Exception ee)
                    {
                        ClientScript.RegisterStartupScript(GetType(), "", "<script>alert(" + ee.Message + ")</script>");
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('''请上传gif|jpg|png|bmp的文件''');</script>");
                }
            }
            return fileName;
        }
        protected void btnEdit_Click(object sender, EventArgs e)
        {
            string filename = "";
            if(fldImg.HasFile)
            {
                filename = imgUpLoad(fldImg);
                 string str = ConfigurationManager.ConnectionStrings["smdb"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(str))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("upUpdateGoods", conn);
                    SqlParameter[] ps ={
                                      new SqlParameter("@tID",ddlType.SelectedValue),
                                      new SqlParameter("@gdCode",txtCode.Text),
                                      new SqlParameter("@gdName",txtName.Text),
                                      new SqlParameter("@gdPrice",float.Parse(txtPrice.Text)),
                                      new SqlParameter("@gdQuantity",int.Parse(txtQuantity.Text)),
                                      new SqlParameter("@gdFeight",float.Parse(txtFeight.Text)),
                                      new SqlParameter("@gdCity",txtCity.Text),
                                      new SqlParameter("@gdImage",filename),
                                      new SqlParameter("@gdInfo",txtInfo.Text)
                                  };
                    cmd.Parameters.AddRange(ps);
                    if (cmd.ExecuteNonQuery() > 0)
                        Response.Write("<script>alert('更新成功');location.href('GoodsManager.aspx')</script>");
                    else
                        Response.Write("<script>alert('更新失败')</script>");
                }
            }
        }
    }
}