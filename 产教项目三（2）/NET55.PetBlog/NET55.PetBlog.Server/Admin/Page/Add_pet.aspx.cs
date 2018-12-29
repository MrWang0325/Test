using NET55.PetBlog.Server.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NET55.PetBlog.Server.Admin.Page
{
    public partial class Add_pet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {

                string title = Request["title"];
                string type = Request["type"];
                var file = Request.Files[0];
                string path = "/Admin/Img/News/" + Guid.NewGuid().ToString().ToLower() + ".jpg";
                file.SaveAs(Server.MapPath(path));
                PetInfo nmodel = new PetInfo()
                {
                    Det = title,
                    PetTypeID = Convert.ToInt32(type),
                    CreateTime = DateTime.Now,
                    ImgUrl = path,
                    Count = 0,
                    IsDelete = false,
                    UserInfoID = ((NET55.PetBlog.Server.Model.UserInfo)Session["admin"]).ID,
                };
                var db = MyContext.Create();
                db.PetInfo.Add(nmodel);//添加
                db.SaveChanges(); //改变数据库
                //跳转页面
                Response.Redirect("/Admin/Page/PetManager.aspx");
            }
        }
    }
}