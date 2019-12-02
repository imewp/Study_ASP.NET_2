using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBSDemo
{
    public partial class BBSAnswerList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uID"] == null)
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('请先登录!');location.href='Login.aspx';</script>");
            if (Request["id"] == null)
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('请选择留言主题!');location.href='BBSNoteList.aspx';</script>");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            BBSDataContext lq = new BBSDataContext();
            BBSAnswer ba = new BBSAnswer();
            ba.uID = Convert.ToInt32(Session["uID"]);
            ba.bnID = Convert.ToInt32(Request["id"]);
            ba.baContent = txtbaContent.Text;
            ba.baAddTime = System.DateTime.Now;
            lq.BBSAnswer.InsertOnSubmit(ba);
            lq.SubmitChanges();
            Response.Redirect("BBSAnswerList.aspx");
        }
    }
}