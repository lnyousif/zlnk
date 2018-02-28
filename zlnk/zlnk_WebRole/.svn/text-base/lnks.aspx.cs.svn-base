using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zlnk_WebRole
{
    public partial class lnks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["SCD"]!= null )
            {
                Response.Redirect(zapp.GetOriginalLink(Request.QueryString["SCD"]));
            }
            else
            {
                Response.Redirect("default.aspx");
            }
        }
    }
}
