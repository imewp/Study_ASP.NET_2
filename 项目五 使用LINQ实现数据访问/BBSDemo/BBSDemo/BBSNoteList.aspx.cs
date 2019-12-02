using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBSDemo
{
    public partial class BBSNoteList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uID"] == null)
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('请先登录!');location.href='Login.aspx';</script>");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            BBSDataContext lq = new BBSDataContext();
            BBSNote note = new BBSNote();
            note.bnSubject = txtbnSubject.Text;
            note.bnContent = txtbnContent.Text;
            note.uID = Convert.ToInt32(Session["uID"]);
            note.bnAddTime = System.DateTime.Now;
            lq.BBSNote.InsertOnSubmit(note);
            lq.SubmitChanges();
            Response.Redirect("BBSNoteList.aspx");
        }
    }
}