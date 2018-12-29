using NET55.PetBlog.Server.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NET55.PetBlog.Server.Admin.Ashx
{
    /// <summary>
    /// Login 的摘要说明
    /// </summary>
    public class Login : IHttpHandler,System.Web.SessionState.IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
           //获取数据
            var uid=context.Request["uid"];
            var pid=context.Request["pid"];
            var db = MyContext.Create();
            UserInfo model=db.UserInfo.FirstOrDefault(u=>u.UserName==uid&&u.UserPass==pid);
            if (model == null)
            {
                context.Response.Write("no");
            }
            else {
                context.Session["admin"] = model;
                context.Response.Write("ok");
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}