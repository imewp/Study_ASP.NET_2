using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Drawing;
using System.Web.UI.WebControls;

namespace GDI_Demo
{
    public partial class _6_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Bitmap myImage = new Bitmap(800, 800);          //创建Bitmap对象
            Graphics gr = Graphics.FromImage(myImage);      //创建绘画对象
            Pen pen = new Pen(Color.Red, 2);                //创建画笔对象
            gr.Clear(Color.WhiteSmoke);                     //格式化画布
            gr.DrawLine(pen, 0, 50, 400, 50);               //绘制直线

            gr.DrawRectangle(pen, 60, 60, 90, 50);          //绘制矩形

            gr.DrawRectangle(pen,160, 60,100,100);          //绘制正方形

            gr.DrawEllipse(pen, 30, 30, 150, 100);          //绘制椭圆

            gr.DrawEllipse(pen, 210, 30, 100, 100);         //绘制圆

            Point pt = new Point(20, 20);   //创建起点
            Point[] pts = new Point[]{        //创建顶点集合
                new Point(100,100),
                new Point(130,120),
                new Point(100,140),
                new Point(70,140),
                new Point(40,120),
                new Point(70,100),
            };
            gr.DrawPolygon(pen,pts);            //绘制多边形

            Font font = new Font("黑体", 20);         //创建文字格式
            Brush brush = new SolidBrush(Color.Blue);                   //创建笔刷
            gr.DrawString("ASP.NET 程序设计", font, brush, 20, 250);     //绘制文字


            Font font1 = new Font("黑体", 20);         //创建文字格式
            Brush brush1 = new SolidBrush(Color.Blue);                   //创建笔刷
            int width = 300;
            string str = "ASP.NET 程序设计";
            gr.DrawString(str, font1,brush1, width / 2 - gr.MeasureString(str, font1).Width / 2, 300);     //绘制文字
            myImage.Save(Response.OutputStream, System.Drawing.Imaging.ImageFormat.Gif);        
            pen.Dispose();              //释放画笔对象
            gr.Dispose();               //释放绘画对象
            myImage.Dispose();          //释放图像对象

        }
    }
}