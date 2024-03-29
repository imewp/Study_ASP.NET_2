﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBSDemo
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// 获取会员ID
        /// </summary>
        /// <param name="uName">用户名</param>
        /// <param name="uPwd">密码</param>
        /// <returns>如果返回的id值为0，说明输入的用户名和密码不正确，否则返回用户名和密码对应的uID字段的值</returns>
        protected int getUserIdByName(string name,string pwd)
        {
            int id = 0;
            BBSDataContext lq = new BBSDataContext();
            var users = from gt in lq.Users
                        where gt.uName == name && gt.uPwd == pwd
                        select gt;
            foreach (Users user in users)
                id = user.uID;
            return id;
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string name = txtuName.Text;
            string pwd = txtuPwd.Text;
            int uID = getUserIdByName(name, pwd);
            if(uID!=0)
            {
                Session["uID"] = uID;
                ClientScript.RegisterStartupScript(GetType(),"","<script>alert('登录成功!');location.href='BBSNoteList.aspx';</script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('用户名和密码不正确!');</script>");
            }
        }
    }
}