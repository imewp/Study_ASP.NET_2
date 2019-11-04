using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProject1
{
    public partial class _2_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            Color color = Color.White;
            switch (btn.CommandName)
            {
                case "red": color = Color.Red; break;
                case "green": color = Color.Green; break;
                case "blue": color = Color.Blue; break;
            }
            Label1.ForeColor = color;
        }

        protected void Button_Click(object sender, CommandEventArgs e)
        {
            Color color = Color.White;
            switch (e.CommandName)
            {
                case "red": color = Color.Red; break;
                case "green": color = Color.Green; break;
                case "blue": color = Color.Blue; break;
            }
            Label1.ForeColor = color;
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label2.Text = RadioButtonList1.SelectedItem.Value;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Label3.Text = "你的兴趣有：";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                    Label3.Text += " " + CheckBoxList1.Items[i].Value;
            }
        }
    }
}