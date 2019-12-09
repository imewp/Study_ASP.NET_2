using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Caching;       //导入缓冲所需的命名空间

namespace CacheDemo
{
    public partial class _7_2 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public static void setCache(string cacheKey,object value,SqlCacheDependency scDep)
        {
            HttpRuntime.Cache.Insert(cacheKey, value, scDep, Cache.NoAbsoluteExpiration, Cache.NoAbsoluteExpiration);
        }
    }
}