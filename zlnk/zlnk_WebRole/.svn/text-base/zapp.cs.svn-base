using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using zlnk_WebRole.data;

namespace zlnk_WebRole
{
    public static class zapp
    {
        public static string CreateShortLink(string sOUrl,string sUN)
        {
            zlnkDC svc = new zlnkDC();            
            try
            {
                zlnk zl = (from z in svc.zlnks where z.oURL == sOUrl && z.IsActive.Equals(true) select z).FirstOrDefault<zlnk>();
                return zl.sCd;
            }
            catch
            {
                zlnk z = new zlnk(sUN, helper.GetUnuiqeScd(), sOUrl);
                svc.AddObject("zlnks", z);
                svc.SaveChanges();
                return z.sCd; 
            }
        }



        public static string GetOriginalLink(string sSCD)
        {
            zlnkDC svc = new zlnkDC();
            zlnk zl = (from z in svc.zlnks where z.IsActive.Equals(true) && z.sCd == sSCD select z).FirstOrDefault<zlnk>();
            return zl.oURL;
        }

        public static bool GetUserDomain(string sUN, out string sShortDN, out string sLongDN)
        {
            try
            {
                zlnkDC svc = new zlnkDC();
                usr us = (from u in svc.usrs where u.UN == sUN && u.IsActive.Equals(true) select u).First<usr>();
                sShortDN = us.ShortDN;
                sLongDN = us.LongDN;
                return true;
            }
            catch
            {
                sShortDN = "";
                sLongDN = "";
                return false;
            }
        }

    }
}