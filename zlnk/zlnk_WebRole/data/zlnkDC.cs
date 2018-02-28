using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.Samples.ServiceHosting.StorageClient;
using System.Data.Services.Client;

namespace zlnk_WebRole.data
{
    public class zlnkDC : TableStorageDataServiceContext
    {
        public zlnkDC() :
                base(StorageAccountInfo.GetDefaultTableStorageAccountFromConfiguration())
            {
            }

        public DataServiceQuery<zlnk> zlnks
            {
                get
                {
                    return CreateQuery<zlnk>("zlnks");
                }
            }

        public DataServiceQuery<usr> usrs
        {
            get
            {
                return CreateQuery<usr>("usrs");
            }
        }

    }
}
