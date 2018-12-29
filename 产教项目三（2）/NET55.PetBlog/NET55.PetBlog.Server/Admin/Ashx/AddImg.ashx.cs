using NET55.PetBlog.Server.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NET55.PetBlog.Server.Admin.Ashx
{
    /// <summary>
    /// AddImg 的摘要说明
    /// </summary>
    public class AddImg : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            //获取字段
            int nei = Convert.ToInt32(context.Request["nei"]);
            var file = context.Request.Files[0];
            string path = "/Admin/Img/News/" + Guid.NewGuid().ToString().ToLower() + ".jpg";
            file.SaveAs(context.Server.MapPath(path));
            //创建实体
            ImgList imglist = new ImgList()
            {
                IngUrl = path,
                IsDelete = false,
                NewsID = nei
            };
            var db = MyContext.Create();
            //添加
            db.ImgList.Add(imglist);
            //改变状态
            int row = db.SaveChanges();
            if (row > 0)
            {
                context.Response.Redirect("/Admin/Page/ImgListManager.aspx");
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