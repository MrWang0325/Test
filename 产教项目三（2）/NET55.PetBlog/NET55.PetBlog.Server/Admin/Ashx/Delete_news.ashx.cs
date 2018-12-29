using NET55.PetBlog.Server.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NET55.PetBlog.Server.Admin.Ashx
{
    /// <summary>
    /// Delete_news 的摘要说明
    /// </summary>
    public class Delete_news : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            //接收id
            int id = Convert.ToInt32(context.Request["id"]);
            var db = MyContext.Create();
            News model = db.News.FirstOrDefault(u => u.ID == id);
            //删除
            db.Entry(model).State = System.Data.EntityState.Deleted;
            //改变数据库
            int r = db.SaveChanges();
            if (r > 0)
            {
                context.Response.Write("ok");
            }
            else
            {
                context.Response.Write("no");
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