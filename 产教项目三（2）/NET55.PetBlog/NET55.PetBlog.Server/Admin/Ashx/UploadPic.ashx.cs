using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NET55.PetBlog.Server.Admin.Ashx
{
    /// <summary>
    /// UploadPic 的摘要说明
    /// </summary>
    public class UploadPic : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            //base64
            string img = context.Request["img"];
            ////base64-byte[]数组
            byte[] bys = Convert.FromBase64String(img.Substring(23));
            var client = new Baidu.Aip.ImageClassify.ImageClassify("rkIOxVwUQ9HAtwvxC45fSbqB", "GghZpqOKI0CV6zpGBcrfRrQSGHl3Akv3");

            var result = client.AnimalDetect(bys);

            if(result.ToString().Contains("非动物")){
            
            }
            string h = "<ul>";

            foreach (var item in result["result"])
            {
                h += "<li>" + item["name"].ToString() + "</li>";
                h += "<li>" + item["score"].ToString() + "</li>";
            }
            h += "</ul>";

            context.Response.Write(h);
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