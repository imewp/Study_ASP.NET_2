using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace WebProject1
{
    public partial class _1_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = DropDownList1.SelectedItem.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ListItem list = new ListItem(TextBox1.Text);
            DropDownList1.Items.Add(list);
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label2.Text="";
            foreach(ListItem li in ListBox1.Items)
            {
                if (li.Selected)
                    Label2.Text += li.Text + " ";
            }
        }
    }
}