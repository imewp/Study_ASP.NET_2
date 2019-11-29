using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LINQDemo
{
    public partial class _5_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadData();
        }

        private void LoadData()
        {
            GoodsTypeDataContext lq = new GoodsTypeDataContext();       //实例化LINQ类
            var mylq = from gt in lq.GoodsType select gt;       //查询数据
            gvGoodsType.DataSource = mylq;          //绑定到GridView
            gvGoodsType.DataBind();
        }


        protected void btnAdd_Click(object sender, EventArgs e)
        {
            GoodsTypeDataContext lq = new GoodsTypeDataContext();       //实例化LINQ类
            GoodsType gt = new GoodsType();         //创建一个新对象
            gt.tName = TextBox1.Text;
            lq.GoodsType.InsertOnSubmit(gt);            //执行插入数据操作
            lq.SubmitChanges();         //提交数据库
            LoadData();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            GoodsTypeDataContext lq = new GoodsTypeDataContext();       //实例化LINQ类
            var types = from gt in lq.GoodsType
                        where gt.tName == TextBox2.Text
                        select gt;
            foreach (var type in types)              //遍历集合
                type.tName = TextBox3.Text;
            lq.SubmitChanges();
            LoadData();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            GoodsTypeDataContext lq = new GoodsTypeDataContext();       //实例化LINQ类
            var types = from gt in lq.GoodsType
                       where gt.tName == TextBox4.Text
                       select gt;
            foreach (GoodsType type in types)
                lq.GoodsType.DeleteOnSubmit(type);
            lq.SubmitChanges();
            LoadData();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < 100; i++)
                btnAdd_Click(sender, e);
        }



    }
}