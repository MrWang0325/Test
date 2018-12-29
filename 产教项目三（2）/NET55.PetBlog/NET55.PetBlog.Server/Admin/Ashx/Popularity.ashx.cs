using NET55.PetBlog.Server.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NET55.PetBlog.Server.Admin.Ashx
{
    /// <summary>
    /// Popularity 的摘要说明
    /// </summary>
    public class Popularity : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            var db = MyContext.Create();
            var list = db.PetInfo.OrderByDescending(a => a.Count).Where(p => true).Select(u => new { u.UserInfo.UserName, u.Count, u.CreateTime, u.Det, u.ID, img = "http://192.168.52.194:5744" + u.ImgUrl, u.PetType.Type, head = "http://192.168.52.194:5744" + u.UserInfo.HeadUrl });
      
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