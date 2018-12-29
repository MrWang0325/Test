using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;

namespace NET55.PetBlog.Server.Model
{
    public class MyContext
    {
        public static PetBlogEntities4 Create()
        {
            PetBlogEntities4 db = CallContext.GetData("db") as PetBlogEntities4; 
            if(db==null)
            {
                db = new PetBlogEntities4();
                CallContext.SetData("db", db);
            }
            return db;
        } 
    }
}