using NET55.PetBlog.Server.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NET55.PetBlog.Server.Admin.Ashx
{
    /// <summary>
    /// NewsTest 的摘要说明
    /// </summary>
    public class NewsTest : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            var db = MyContext.Create();
            var list = db.News.Where(p => true).Select(u => new { u.CreateTime, img = "http://192.168.52.194:5744" + u.ImgUrl, u.UserInfo.UserName, head = "http://192.168.52.194:5744" + u.UserInfo.HeadUrl, u.Title, u.Det });

            context.Response.AddHeader("Access-Control-Allow-Origin", "*");
            string json = JsonConvert.SerializeObject(list);

            context.Response.Write(json);
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