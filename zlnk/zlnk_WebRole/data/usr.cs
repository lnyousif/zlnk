using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.Samples.ServiceHosting.StorageClient;

namespace zlnk_WebRole.data
{
    public class usr: TableStorageEntity
    {
        public string UN { get; set; }
        public string Pwd { get; set; }
        public string LongDN { get; set; }
        public string ShortDN { get; set; }
        public string email { get; set; }
        public DateTime LastUpdateDate { get; set; }
        public Boolean IsActive { get; set; }
        public string PlanID { get; set; }


        public usr(string sUN, string sPwd, string sShortDN, string sLongDN, string semail, string sPlanID)
            : base("zlnkers", string.Format("{0:d10}", DateTime.Now.Ticks))
        {
            this.UN = sUN;
            this.Pwd = sPwd;
            this.ShortDN = sShortDN;
            this.LongDN = sLongDN;
            this.email = semail;
            this.IsActive = true;
            this.LastUpdateDate = DateTime.Now;
            this.PlanID = sPlanID;
        }


        public usr()
            : base("zlnkers", string.Format("{0:d10}", DateTime.Now.Ticks))
        {
            this.IsActive = true;
            this.LastUpdateDate = DateTime.Now;
            this.PlanID = "free";
        }


    }
}

