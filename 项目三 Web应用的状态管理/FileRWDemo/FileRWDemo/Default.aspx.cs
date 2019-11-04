using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileRWDemo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(File.Exists(Server.MapPath("text.txt")))
            {
                Response.Write("文件存在");
                File.OpenText(Server.MapPath("text.txt"));
            }
            else
            {
                Response.Write("文件不存在");
                File.CreateText(Server.MapPath("text.txt"));
            }            
        }
    }
}