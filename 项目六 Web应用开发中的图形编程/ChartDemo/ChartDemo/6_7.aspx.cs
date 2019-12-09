using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Web.UI.DataVisualization.Charting;         //导入创建图表所需的命名空间

namespace ChartDemo
{
    public partial class _6_7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] axisLabel = new string[] { "学习工作", "娱乐", "购物", "社交" };
            int[] yValues = new int[] { 20, 8, 5, 12 };
            Chart1.BackColor = Color.WhiteSmoke;
            Chart1.ChartAreas[0].BackColor = Color.Wheat;
            Chart1.Titles.Add("你上网主要做什么？    调查结果");
            Chart1.Series[0].Points.DataBindXY(axisLabel, yValues);
            Chart1.Series[0].ChartType = SeriesChartType.Pie;          //设置图表类型为饼图
            Chart1.ChartAreas[0].Area3DStyle.Enable3D = true;       //设置三维显示图表
            Chart1.Legends.Add(new Legend());           //添加图例
        }
    }
}