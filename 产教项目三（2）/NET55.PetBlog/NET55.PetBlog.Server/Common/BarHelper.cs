using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NET55.PetBlog.Server.Common
{
    public class BarHelper
    {
        public static string GetPagaBar(int pageIndex, int pageCount, params int[] id)
        {
            int num = 0;
            if (id.Length > 0)
            {
                num = id[0];
            }
            if (pageCount == 1)
            {
                return string.Empty;
            }
            int start = pageIndex - 5;//计算起始位置.要求页面上显示10个数字页码.
            if (start < 1)
            {
                start = 1;
            }
            int end = start + 9;//计算终止位置.
            if (end > pageCount)
            {
                end = pageCount;
                //重新计算一下Start值.
                start = end - 9 < 1 ? 1 : end - 9;
            }
            StringBuilder sb = new StringBuilder();
            if (pageIndex > 1)
            {
                if (num == 0)
                {
                    sb.AppendFormat("<li ><a href='?index={0}'>&laquo;</a></li>", pageIndex - 1);
                }
                else
                {
                    sb.AppendFormat("<li ><a href='?id={1}&index={0}'>&laquo;</a></li>", pageIndex - 1, num);

                }
            }
            for (int i = start; i <= end; i++)
            {
                if (i == pageIndex)
                {

                    if (num == 0)
                    {
                        sb.AppendFormat("<li class='am-active'><a href='?index={0}'>{0}</a></li>", i);
                    }
                    else
                    {
                        sb.AppendFormat("<li class='am-active'><a href='?id={1}&index={0}'>{0}</a></li>", i, num);

                    }
                }
                else
                {
                    if (num == 0)
                    {
                        sb.AppendFormat("<li><a href='?index={0}'>{1}</a></li>", i, i);
                    }
                    else
                    {
                        sb.AppendFormat("<li><a href='?id={1}&index={0}'>{0}</a></li>", i, num);

                    }

                }
            }
            if (pageIndex < pageCount)
            {

                if (num == 0)
                {
                    sb.AppendFormat("<li><a href='?index={0}'>&raquo;</a></li>", pageIndex + 1);
                }
                else
                {
                    sb.AppendFormat("<li><a href='?id={1}&index={0}'>&raquo;</a></li>", pageIndex + 1, num);

                }
            }

            return sb.ToString();
        }
    }
}
