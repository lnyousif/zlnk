using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using Microsoft.Samples.ServiceHosting.StorageClient;
using zlnk_WebRole.data;

namespace zlnk_WebRole
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            HttpApplication app = (HttpApplication)sender;
            HttpContext context = app.Context;
            FirstRequestInitialization.Initialize(context);



        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }



        internal class FirstRequestInitialization
        {
            private static bool s_InitializedAlready = false;
            private static Object s_lock = new Object();


            // Initialize only on the first request
            public static void Initialize(HttpContext context)
            {
                if (s_InitializedAlready)
                {
                    return;
                }

                lock (s_lock)
                {
                    if (s_InitializedAlready)
                    {
                        return;
                    }

                    ApplicationStartUponFirstRequest(context);
                    s_InitializedAlready = true;
                }
            }

            private static void ApplicationStartUponFirstRequest(HttpContext context)
            {
                // This is where you put initialization logic for the site.
                // RoleManager is properly initialized at this point.

                // Create the tables on first request initialization as there is a performance impact
                // if you call CreateTablesFromModel() when the tables already exist. This limits the exposure of
                // creating tables multiple times.

                // Get the settings from the Service Configuration file
                StorageAccountInfo account = StorageAccountInfo.GetDefaultTableStorageAccountFromConfiguration();

                // Create the tables
                // In this case, just a single table.  
                // This will create tables for all public properties that are IQueryable (collections)
                TableStorage.CreateTablesFromModel(typeof(zlnkDC), account);
            }
        }
    }
}