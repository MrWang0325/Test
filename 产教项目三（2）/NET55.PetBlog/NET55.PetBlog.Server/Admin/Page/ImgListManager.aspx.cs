using NET55.PetBlog.Server.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NET55.PetBlog.Server.Admin.Page
{
    public partial class ImgListManager : System.Web.UI.Page
    {
        //当前显示条数
        public int PageSize = 5;
        //总条数
        public int PageCount;
        //当前页数
        public int PageIndex;
        public IEnumerable<ImgList> img;
        public IEnumerable<News> news;
        protected void Page_Load(object sender, EventArgs e)
        {
            var db = MyContext.Create();
            //获取当前页
            string index = Request["index"];
            if (string.IsNullOrEmpty(index))
            {
                PageIndex = 1;
            }
            else
            {
                PageIndex = Convert.ToInt32(index);
            }

            //获取总页数
            int total = db.ImgList.Count(c => true);
            PageCount = Convert.ToInt32(Math.Ceiling((double)total / PageSize));
            //分页查询
            img = db.ImgList.OrderByDescending(i => i.ID).Skip(((PageIndex - 1) * PageSize)).Take(PageSize).ToList();
            news = db.News.OrderBy(o => o.ID).Where(u => true);
        }
    }
}