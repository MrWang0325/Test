using GeetestSDK;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NET55.PetBlog.Server.Admin.Ashx
{
    /// <summary>
    /// CreateVali 的摘要说明
    /// </summary>
    public class CreateVali : IHttpHandler,System.Web.SessionState.IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "application/json";
            context.Response.Write(GetCaptcha(context));
        }

        private string GetCaptcha(HttpContext context)
        {
            var geetest = new GeetestLib("7f8cfbad6525535e637bcb59a20550f8", "ae62d001e558b9dfca3e4c4f40032fcd");
            var gtServerStatus = geetest.preProcess();
            context.Session[GeetestLib.gtServerStatusSessionKey] = gtServerStatus;
            return geetest.getResponseStr();
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