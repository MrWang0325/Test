using NET55.PetBlog.Server.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NET55.PetBlog.Server.Admin.Ashx
{
    /// <summary>
    /// QueryPet 的摘要说明
    /// </summary>
    public class QueryPet : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            //接收传过来的ID
            int id = Convert.ToInt32(context.Request["id"]);
            var db = MyContext.Create();
            var list = db.PetInfo.Where(p => p.ID==id).Select(u => new { u.CreateTime, img = "http://192.168.52.194:5744" + u.ImgUrl, u.UserInfo.UserName, head = "http://192.168.52.194:5744" + u.UserInfo.HeadUrl, u.Det,u.Address }).First();

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