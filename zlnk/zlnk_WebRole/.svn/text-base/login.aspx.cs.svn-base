using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using zlnk_WebRole.data;

namespace zlnk_WebRole
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            zlnkDC svc = new zlnkDC();
            
            try
            {
                usr us = (from u in svc.usrs where u.UN == txtUN0.Text && u.Pwd == CryptoHelper.Encrypt(txtPwd0.Text) select u).First<usr>();

                if (us.IsActive)
                {
                    LoadLinks();
                }
            }
            catch
            {
                lblMesssage.Text = "your account info is wrong";
            }
        }

        private void LoadLinks()
        {
            var gZlinks = from z in new zlnkDC().zlnks
                          where z.UN == txtUN0.Text
                          select z;

            zlinksGrid.DataSource = gZlinks;
            zlinksGrid.DataBind();

        }

    }
}
