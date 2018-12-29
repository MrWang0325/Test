using NET55.PetBlog.Server.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NET55.PetBlog.Server.Admin.Page
{
    public partial class NewsManger : System.Web.UI.Page
    {
        public IEnumerable<News> Result;
        public int PageSize = 4;
        public int PageCount;
        public int PageIndex;
        protected void Page_Load(object sender, EventArgs e)
        {
            //获取当前页]
            string index = Request["index"];
            if (string.IsNullOrEmpty(index))
            {
                PageIndex = 1;
            }
            else
            {
                PageIndex = Convert.ToInt32(index);
            }

            int total = MyContext.Create().News.Count(p => true);
            PageCount = Convert.ToInt32(Math.Ceiling((double)total / PageSize));

            var db = MyContext.Create().News;
            Result = db.Where(m => true).OrderByDescending(m => m.ID).Skip(((PageIndex - 1) * PageSize)).Take(PageSize).ToList();
        }
    }
}