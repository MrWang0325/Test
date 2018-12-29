using NET55.PetBlog.Server.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NET55.PetBlog.Server.Common
{
    public class BaseCheck : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            Session["admin"] = MyContext.Create().UserInfo.FirstOrDefault(u => u.ID == 1);
            if(Session["admin"]==null){
                Response.Redirect("/Admin/Page/Login.aspx");
            }
        }
    }
}