using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileRWDemo
{
    public partial class _3_7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnWrite_Click(object sender, EventArgs e)
        {
            string filepath = Server.MapPath("test.txt");
            if(File.Exists(filepath))
            {
                StreamWriter sw = new StreamWriter(filepath, false);
                string str = "ASP.NET是Web应用开发的主流技术";
                sw.WriteLine(str);
                sw.Close();
                lblInfo.Text = "成功写入成功";
            }
        }

        protected void btnRead_Click(object sender, EventArgs e)
        {
            lblInfo.Text = "文件内容：";
            string filepath = Server.MapPath("test.txt");
            if(File.Exists(filepath))
            {
                StreamReader sr = File.OpenText(filepath);
                while(sr.Peek()!=-1)            //判断文件是否读完
                    lblInfo.Text += (sr.ReadLine()) + "<br/>";
                sr.Close();
            }
        }
    }
}