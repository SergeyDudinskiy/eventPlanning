using System;
using System.Web.UI;

namespace eventPlanning
{
    public partial class Main : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((int)Page.Session["role"] == 2)
            {
                SiteMapDataSource1.SiteMapProvider = "SiteMap1";                
            }
            else
            {
               SiteMapDataSource1.SiteMapProvider = "SiteMap2";            
            }
        }
    }
}