using NET55.PetBlog.Server.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NET55.PetBlog.Server.Admin.Page
{
    public partial class Update_pet : System.Web.UI.Page
    {
        public PetInfo pmodel;
        protected void Page_Load(object sender, EventArgs e)
        {
            var db = MyContext.Create();
            if (IsPostBack)
            {
                int pId = Convert.ToInt32(Request["pId"]);
                //查询
                PetInfo model = db.PetInfo.FirstOrDefault(p => p.ID == pId);
                model.Det = Request["title"];
                model.PetTypeID = Convert.ToInt32(Request["type"]);
                if (!string.IsNullOrEmpty(Request.Files[0].FileName))
                {
                    //上传文件
                    var file = Request.Files[0];
                    string path = "/Admin/Img/" + Guid.NewGuid().ToString().ToLower() + ".jpg";
                    file.SaveAs(Server.MapPath(path));
                    model.ImgUrl = path;
                }
                //修改
                db.Entry(model).State = System.Data.EntityState.Modified;
                //改变数据库
                db.SaveChanges();
                Response.Redirect("./PetManager.aspx");

            }
            else
            {
                //用户编号ID 
                int id = Convert.ToInt32(Request["id"]);
                pmodel = db.PetInfo.FirstOrDefault(u => u.ID == id);
            }
        }
    }
}