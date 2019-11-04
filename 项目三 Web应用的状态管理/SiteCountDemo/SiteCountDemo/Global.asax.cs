using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace SiteCountDemo
{
    public class Global : System.Web.HttpApplication
    {
        
        protected void Application_Start(object sender, EventArgs e)
        {
            //在应用程序粗启动时运行的代码
            int count = 0;
            string filePath = Server.MapPath("App_Data/counter.txt");
            StreamReader sr = File.OpenText(filePath);
            while (sr.Peek() != -1)
            {
                string str = sr.ReadLine();
                count = int.Parse(str);
            }
            sr.Close();
            Application.Lock();
            Application["CurNum"] = 0;
            Application["TotNum"] = (object)count;
            Application.UnLock();
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            //会话开始时，在线人数和总访问人数都加1
            Application.Lock();
            Application["CurNum"] = Convert.ToInt32(Application["CurNum"]) + 1;
            Application["TotNum"] = Convert.ToInt32(Application["TotNum"]) + 1;
            Application.UnLock();
            string filePath = Server.MapPath("App_Data/counter.txt");
            StreamWriter sw = new StreamWriter(filePath, false);
            sw.WriteLine(Convert.ToInt32(Application["TotNum"]));
            sw.Close();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            //会话结束时，在线人数减1
            Application.Lock();
            Application["CurNum"] = Convert.ToInt32(Application["CurNum"]) - 1;
            Application.UnLock();
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}