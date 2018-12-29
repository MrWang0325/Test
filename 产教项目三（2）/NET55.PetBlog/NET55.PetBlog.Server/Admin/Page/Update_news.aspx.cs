using NET55.PetBlog.Server.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NET55.PetBlog.Server.Admin.Page
{
    public partial class Update_news : System.Web.UI.Page
    {
        public News nmodel;
        protected void Page_Load(object sender, EventArgs e)
        {
            var db = MyContext.Create();
            if (IsPostBack)
            {
                int UId = Convert.ToInt32(Request["aa"]);
                //查询
                News model = db.News.FirstOrDefault(p => p.ID == UId);
                //修改
                model.Det = Request["Des"];
                model.Title = Request["title"];

                if (!string.IsNullOrEmpty(Request.Files[0].FileName))
                {
                    //上传文件
                    var file = Request.Files[0];
                    string path = "/Admin/Img/News/" + Guid.NewGuid().ToString().ToLower() + ".jpg";
                    file.SaveAs(Server.MapPath(path));
                    model.ImgUrl = path;

                }
                //修改
                db.Entry(model).State = System.Data.EntityState.Modified;
                //改变数据库
                db.SaveChanges();
                Response.Redirect("./NewsManager.aspx");

            }
            else
            {
                //用户编号ID 
                int id = Convert.ToInt32(Request["id"]);


                nmodel = db.News.FirstOrDefault(u => u.ID == id);
            }
        }
    }
}