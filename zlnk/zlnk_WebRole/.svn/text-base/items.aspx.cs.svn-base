using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using zlnk_WebRole.data;
using System.Data.Services.Client;
using Microsoft.Samples.ServiceHosting.StorageClient;

namespace zlnk_WebRole
{
    public partial class items : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void ActivateUserButton_Click(object sender, EventArgs e)
        {
            LinkButton button = sender as LinkButton;
            string[] p = button.CommandArgument.Split(new char[] { '|' });
            string partitionKey = p[0];
            string rowKey = p[1];

            zlnkDC svc = new zlnkDC();
            usr us = (from u in svc.usrs where u.PartitionKey == partitionKey && u.RowKey== rowKey select u).FirstOrDefault<usr>();

            us.IsActive = us.IsActive ? false : true;

            svc.UpdateObject(us);
            svc.SaveChanges();

        }

        protected void deleteUserButton_Click(object sender, EventArgs e)
        {
            LinkButton button = sender as LinkButton;
            string[] p = button.CommandArgument.Split(new char[] { '|' });
            string partitionKey = p[0];
            string rowKey = p[1];

            usr u = new usr()
            {
                PartitionKey = partitionKey,
                RowKey = rowKey
            };


            zlnkDC svc = new zlnkDC();

            svc.AttachTo("usrs", u, "*");
            svc.DeleteObject(u);

            try
            {
                svc.SaveChanges();
            }
            catch (DataServiceRequestException e2)
            {
            }

        }


        protected void deletezlinkButton_Click(object sender, EventArgs e)
        {
            LinkButton button = sender as LinkButton;
            string[] p = button.CommandArgument.Split(new char[] { '|' });
            string partitionKey = p[0];
            string rowKey = p[1];

            zlnk z= new zlnk()
            {
                PartitionKey = partitionKey,
                RowKey = rowKey
            };

            zlnkDC svc = new zlnkDC();

            svc.AttachTo("zlnks", z, "*");
            svc.DeleteObject(z);

            try
            {
                svc.SaveChanges();
            }
            catch (DataServiceRequestException e2)
            {
            }

        }


        public static string BuildKey(object dataItem)
        {
            TableStorageEntity SE = dataItem as TableStorageEntity;
            return string.Format("{0}|{1}", SE.PartitionKey, SE.RowKey);
        }

        protected void btnDastor_Click(object sender, EventArgs e)
        {
            if (txte7em.Text == "akeel")
            {
                var gUsers = from  u in new zlnkDC().usrs  
                             select u;

                UsersGrid.DataSource = gUsers ;
                UsersGrid.DataBind();

                var gZlinks = from z in new zlnkDC().zlnks
                              select z;

                zlinksGrid.DataSource = gZlinks;
                zlinksGrid.DataBind();
            }
        }


    }
}
