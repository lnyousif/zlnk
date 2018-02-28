using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using Microsoft.ServiceHosting.ServiceRuntime;
using zlnk_WebRole.data;

namespace zlnk_WebRole
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }


        protected void btnShort_Click(object sender, EventArgs e)
        {
            string UN = txtUserName.Text!="" ? txtUserName.Text.ToLower() : "free";
            string ShortCode = string.Empty;
            string ShortDN = string.Empty;
            string LongDN = string.Empty;

            if (zapp.GetUserDomain(UN, out ShortDN, out LongDN))
            {
                if (txtURL.Text.ToLower().IndexOf(LongDN.ToLower()) >= 0 || UN == "free" || ShortDN.ToLower().Trim() == "http://zlnk.net")
                {
                    ShortCode = zapp.CreateShortLink(txtURL.Text, UN);
                }
                else
                {
                    lblMesssage.Text = "Invalid Original Url [you have not registered that domain name]";
                    lblMesssage.Visible = true;
                }
            }
            else
            {
                lblMesssage.Text = "invalid user name";
                lblMesssage.Visible = true;
            }
            hlkShort.NavigateUrl = ShortDN + "/" + ShortCode; ;
            hlkShort.Text = ShortDN + "/" + ShortCode;
        }


    }
}
