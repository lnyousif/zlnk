using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.Samples.ServiceHosting.StorageClient;

namespace zlnk_WebRole.data
{
    public class zlnk: TableStorageEntity
    {
        public string UN { get; set; }
        public string sCd { get; set; }
        public string oURL { get; set; }
        public Boolean IsActive { get; set; }


        public zlnk(string sUN, string sSCD, string soURL)
            : base(sUN, string.Format("{0:d10}", DateTime.Now.Ticks))
        {
            this.UN = sUN;
            this.sCd = sSCD;
            this.oURL = soURL;
            this.IsActive = true;
        }

        public zlnk()
            : base("non", string.Format("{0:d10}", DateTime.Now.Ticks))
        {
        }
    }
}

