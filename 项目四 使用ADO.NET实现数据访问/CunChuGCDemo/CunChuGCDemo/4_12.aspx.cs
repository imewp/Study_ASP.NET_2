﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CunChuGCDemo
{
    public partial class _4_12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddType_Click1(object sender, EventArgs e)
        {
            string str = ConfigurationManager.ConnectionStrings["smdb"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(str))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("upAddGoodsType", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter[] ps = { new SqlParameter("@tname", txtName.Text),
                                    new SqlParameter("@flag",SqlDbType.Int)};
                ps[1].Direction = ParameterDirection.ReturnValue;
                cmd.Parameters.AddRange(ps);
                cmd.ExecuteNonQuery();
                int tId = (int)cmd.Parameters["@flag"].Value;
                Label1.Text = txtName.Text + "的类别ID为：" + tId;
            }
        }
    }
}