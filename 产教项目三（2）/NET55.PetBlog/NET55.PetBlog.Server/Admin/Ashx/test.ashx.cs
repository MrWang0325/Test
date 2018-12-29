using NET55.PetBlog.Server.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NET55.PetBlog.Server.Admin.Ashx
{
    /// <summary>
    /// test 的摘要说明
    /// </summary>
    public class test : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            var db = MyContext.Create();
            var list = db.PetInfo.Where(p => true).Select(u => new {u.UserInfo.UserName,u.Count,u.CreateTime,u.Det,u.ID,img="http://192.168.52.194:5744"+u.ImgUrl,u.PetType.Type,head="http://192.168.52.194:5744"+u.UserInfo.HeadUrl });
            //序列化
            //System.Web.Script.Serialization.JavaScriptSerializer jss = new System.Web.Script.Serialization.JavaScriptSerializer();
            //string json = jss.Serialize(list);
            //json.net 序列化 效率比JavaScriptSerializer高
            //db.Configuration.ProxyCreationEnabled = false;
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