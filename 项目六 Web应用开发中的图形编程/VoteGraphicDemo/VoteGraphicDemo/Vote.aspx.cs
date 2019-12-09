using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Web.UI.DataVisualization.Charting;
using System.Data;         //导入创建图表所需的命名空间

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
            if (rbtlVote.SelectedIndex != -1)
            {
                HttpCookie getCookie = Request.Cookies["vote"];
                if (getCookie != null)
                {
                    Response.Write("<script>alert('你已经投过票了，不能重复投！');location='javascript:history.go(-1)'</script>");
                }
                else
                {
                    int k = rbtlVote.SelectedIndex;
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
            DataTable dt = new DataTable("tempVote");
            DataColumn colName = new DataColumn("name", typeof(string));
            DataColumn colVote = new DataColumn("vote", typeof(int));
            dt.Columns.Add(colName);
            dt.Columns.Add(colVote);
            for (int i = 0; i < count.Count; i++)
            {
                DataRow dr = dt.NewRow();
                dr["name"] = rbtlVote.Items[i].Value;
                dr["vote"] = count[i];
                dt.Rows.Add(dr);
            }
            DataView dw = new DataView(dt);
            Chart1.BackColor = Color.WhiteSmoke;
            Chart1.Titles.Add("新闻人物投票统计图表");
            Chart1.Series["Series1"].ChartType = SeriesChartType.Column;
            Chart1.Series["Series1"].Points.DataBindXY(dw, "name", dw, "vote");
            Chart1.Series["Series1"].IsValueShownAsLabel = true;

            Chart1.ChartAreas["ChartArea1"].AxisX.Title = "姓名";
            Chart1.ChartAreas["ChartArea1"].AxisY.Title = "票数";
            Chart1.ChartAreas["ChartArea1"].AxisX.Interval = 1;
            Chart1.ChartAreas["ChartArea1"].AxisY.Minimum = 5;
            Chart1.ChartAreas["ChartArea1"].BackColor = Color.Wheat;
        }
    }
}