using NET55.PetBlog.Server.Common;
using NET55.PetBlog.Server.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NET55.PetBlog.Server.Admin.Page
{
    public partial class Add_News : BaseCheck
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                var d = ((NET55.PetBlog.Server.Model.UserInfo)Session["admin"]).ID;
                string title = Request["title"];
                string des = Request["Des"];
                var file = Request.Files[0];
                string path = "/Admin/Img/News/" + Guid.NewGuid().ToString().ToLower() + ".jpg";
                file.SaveAs(Server.MapPath(path));
                News nmodel = new News()
                {
                    Title = title,
                    Det = des,
                    ImgUrl = path,
                    CreateTime = DateTime.Now,
                    Count = 0,
                    IsDelete = false,
                    UserInfoID = d,
                };
                var db = MyContext.Create();
                db.News.Add(nmodel);//添加
                db.SaveChanges(); //改变数据库
                //跳转页面
                Response.Redirect("/Admin/Page/NewsManager.aspx");
            }
        }
    }
}