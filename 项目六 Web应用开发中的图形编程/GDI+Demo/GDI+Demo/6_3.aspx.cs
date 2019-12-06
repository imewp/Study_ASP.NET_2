using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Imaging;

namespace GDI_Demo
{
    public partial class _6_3 : System.Web.UI.Page
    {
        //绘制图片
        protected void Page_Load(object sender, EventArgs e)
        {
            Bitmap image = new Bitmap(600, 600);
            Graphics gr = Graphics.FromImage(image);
            gr.FillRectangle(Brushes.WhiteSmoke, 1, 1, 600, 600);
            Font font = new Font("宋体", 12, FontStyle.Regular);
            gr.DrawString("显示现有图片", font, Brushes.Blue, 10, 5);
            string filepath = Server.MapPath("Images/1.jpg");
            System.Drawing.Image img = System.Drawing.Image.FromFile(filepath);
            gr.DrawImage(img, 10, 30, 250, 335);
            image.Save(Response.OutputStream, ImageFormat.Gif);
            gr.Dispose();               //释放绘画对象
            image.Dispose();          //释放图像对象
        }
    }
}