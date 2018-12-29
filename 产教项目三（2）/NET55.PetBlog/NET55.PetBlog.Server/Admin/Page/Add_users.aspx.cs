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
    public partial class Add_users : BaseCheck
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string name = Request["uname"];
                string phone = Request["phone"];
                string pwd = Request["pwd1"];
                string age = Request["age"];
                string sex = Request["sex"];
                string address = Request["address"];
                string eamil = Request["eamil"];
                var file = Request.Files[0];
                string path = "/Admin/Img/" + Guid.NewGuid().ToString().ToLower() + ".jpg";
                file.SaveAs(Server.MapPath(path));

                Users model = new Users()
                {
                    UserName=name,
                    Phone=phone,
                    Pwd=pwd,
                    Age = Convert.ToInt32(age),
                    Sex=sex,
                    Address=address,
                    Eamil=eamil,
                    HeadImg=path,
                    CreateTime=DateTime.Now,
                    IsDelete=false,
                };
                var db = MyContext.Create();
                db.Users.Add(model);//添加
                db.SaveChanges(); //改变数据库
                //跳转页面
                Response.Redirect("/Admin/Page/UsersManger.aspx");
                    
            }
        }
    }
}