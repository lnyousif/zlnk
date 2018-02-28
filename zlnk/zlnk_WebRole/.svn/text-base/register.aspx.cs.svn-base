using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using zlnk_WebRole.data;

namespace zlnk_WebRole
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            zlnkDC svc = new zlnkDC();
            if (txtSDN.Text.EndsWith("/"))
            {
                txtSDN.Text = txtSDN.Text.Remove(txtSDN.Text.Length - 1);
            }

            if (txtODN.Text.EndsWith("/"))
            {
                txtODN.Text = txtODN.Text.Remove(txtODN.Text.Length - 1);
            }

            string PLID = "free";
            if (txtSDN.Text.Trim() != "http://zlnk.net")
            {
                PLID = "pro1";
            }


            try
            {
                usr us = (from u in svc.usrs where u.UN == txtUN.Text select u).First<usr>();
                lblMesssage.Text = "Username is already in use";
            }
            catch
            {
                usr user = new usr(txtUN.Text, CryptoHelper.Encrypt(txtPwd.Text), txtSDN.Text, txtODN.Text, txtEmail.Text, PLID);
                user.IsActive = true;

                svc.AddObject("usrs", user);
                svc.SaveChanges();

                lblMesssage.Text = "Your user account got created";
            }
        }
    }
}
