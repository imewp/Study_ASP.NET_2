using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VoteDemo
{
    public partial class Vote : System.Web.UI.Page
    {
        ArrayList count = new ArrayList();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblState.Text = "";
            HttpCookie getCookie = Request.Cookies["Vote"];     //读Cookie
            if (getCookie == null)
                lblState.Text = "你还未投票";
            else
                lblState.Text = "你已经投过票了";
            getVote();
        }

        //定义读取文件的方法
        protected void getVote()
        {
            string filePath = Server.MapPath("vote.txt");
            StreamReader sr = File.OpenText(filePath);
            while(sr.Peek()!=-1)
            {
                string str = sr.ReadLine();
                string[] strVote = str.Split('|');
                foreach (string ss in strVote)
                    count.Add(int.Parse(ss));
            }
            sr.Close();
        }

        //定义写文件的方法
        protected void putVote()
        {
            string filepath = Server.MapPath("vote.txt");
            StreamWriter sw = new StreamWriter(filepath, false);
            string str = count[0].ToString();
            for (int i = 1; i < count.Count; i++)
                str += "|" + count[i].ToString();
            sw.WriteLine(str);
            sw.Close();

        }
        protected void btnVote_Click(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedIndex != -1)
            {
                HttpCookie getCookie = Request.Cookies["vote"];
                if (getCookie != null)
                {
                    Response.Write("<script>alert('你已经投过票了，不能重复投！');location='javascript:history.go(-1)'</script>");
                }
                else
                {
                    int k = RadioButtonList1.SelectedIndex;
                    count[k] = int.Parse(count[k].ToString() + 1);
                    putVote();
                    HttpCookie vCookie = new HttpCookie("Vote");
                    vCookie.Value = "vote";
                    vCookie.Expires = DateTime.Now.AddDays(1);
                    Response.Cookies.Add(vCookie);
                    Response.Write("<script>alert(投票成功！);</script>");
                }
            }
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            lblView.Text = "各候选人票数：<br/>";
            for (int i = 0; i < RadioButtonList1.Items.Count; i++)
                lblView.Text += RadioButtonList1.Items[i].Value + "： " + count[i] + "票" + "<br/>";
        }
    }
}