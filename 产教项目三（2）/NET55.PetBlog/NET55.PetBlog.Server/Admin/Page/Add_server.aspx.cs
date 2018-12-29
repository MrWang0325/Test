using NET55.PetBlog.Server.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NET55.PetBlog.Server.Admin.Page
{
    public partial class Add_server : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {

                string name = Request["name"];
                string phone = Request["phone"];
                string address = Request["address"];
                string eamil = Request["eamil"];
                string time = Request["time"];
                string classify = Request["classify"];
                var file = Request.Files[0];
                string path = "/Admin/Img/" + Guid.NewGuid().ToString().ToLower() + ".jpg";
                file.SaveAs(Server.MapPath(path));

                PetServer pmodel = new PetServer()
                {
                    Name = name,
                    Phone = phone,
                    Address = address,
                    Eamil = eamil,
                    BusinessTime = time,
                    Classify = classify,
                    ImgUrl = path,
                    IsDelete=false,
                    LocalX=10,
                    LocalY=20,
                };
                var db = MyContext.Create();
                db.PetServer.Add(pmodel);//添加
                db.SaveChanges(); //改变数据库
                //跳转页面
                Response.Redirect("/Admin/Page/ServerManager.aspx");

            }
        }
    }
}