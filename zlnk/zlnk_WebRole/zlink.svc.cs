using System;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.ServiceModel.Web;
using System.Web.Script.Services;
using System.Net;
using System.Web;
using System.Text;
using System.IO;

namespace zlnk_WebRole
{
    [ServiceContract(Namespace = "")]
    [AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
    public class zlink
    {

        [OperationContract]
        [WebGet(ResponseFormat = WebMessageFormat.Json)]
        public System.IO.Stream CreateShortLink(string oUrl, string UN)
        {
            UN = UN ?? "free"; 
            string ShortCode = string.Empty;
            string ShortDN = string.Empty;
            string LongDN = string.Empty;

            if (zapp.GetUserDomain(UN, out ShortDN, out LongDN))
            {
                if (oUrl.ToLower().IndexOf(LongDN.ToLower()) >= 0 || ShortDN.ToLower().Trim() == "http://zlnk.net")
                {
                    ShortCode = zapp.CreateShortLink(oUrl, UN);
                }
                else
                {
                    throw new WebException("Invalid Original Url [you have not registered that domain name]");
                }
            }
            else
            {
                throw new WebException("invalid user name");
            }

            string result = ShortDN + "/" + ShortCode;
            byte[] resultBytes = Encoding.UTF8.GetBytes(result);
            return new MemoryStream(resultBytes);

        }


        [OperationContract]
        [WebGet(ResponseFormat = WebMessageFormat.Json)]
        public System.IO.Stream GetOriginalLink(string ShortCode, string UN)
        {
            UN = UN ?? "free";
            try
            {
                string result = zapp.GetOriginalLink(ShortCode);
                byte[] resultBytes = Encoding.UTF8.GetBytes(result);
                return new MemoryStream(resultBytes); 
            }
            catch (Exception e)
            {
                throw new WebException(e.Message);
            }
        }
    }
}
