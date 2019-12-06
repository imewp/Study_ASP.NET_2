using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GDI_Demo
{
    public partial class _6_4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int maxValue = 20;
            int minValue = 1;
            int count = 20;
            Random rand = new Random();     //定义随机变量rand
            int length = maxValue - minValue + 1;   //设置随机数变化范围
            byte[] keys = new byte[length];
            rand.NextBytes(keys);       //用随机数填充keys数组的元素
            //产生1~20范围内的20个数
            int[] items = new int[length];
            for (int i = 0; i < length; i++)
                items[i] = i + minValue;
            Array.Sort(keys, items);
            int[] result = new int[count];
            Array.Copy(items, result, count);
            for (int i = 0; i < result.Length; i++)
                Label1.Text += "  " + result[i].ToString();
        }
    }
}