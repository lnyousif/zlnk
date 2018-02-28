using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;

namespace zlnk_WebRole
{
    //public static class zlnkREST
    //{
    //    static string CONST_UN = "LNY";
    //    static string CONST_Service = "http://zlnk.net/zlink.svc/";
    //    static string CONST_GetOriginalURL = "GetOriginalLink?ShortCode={0}&UN={1}";
    //    static string CONST_Shorten = "CreateShortLink?oUrl={0}&UN={1}";
    //    static string CONST_Default = "http://zlnk.net/";

    //    public static string ShortenURL(string strUrl)
    //    {
    //        System.Net.ServicePointManager.Expect100Continue = false;

    //        // return empty strings if not valid
    //        if( !IsValidURL( strUrl ))
    //        {
    //            return "";
    //        }

    //        string requestUrl = string.Format(CONST_Service + CONST_Shorten, strUrl, CONST_UN);
    //        WebRequest request = HttpWebRequest.Create(requestUrl);
    //        request.Proxy = null;
    //        string strResult = null;
    //        try
    //        {
    //            using (Stream responseStream = request.GetResponse().GetResponseStream())
    //            {
    //                StreamReader reader = new StreamReader(responseStream, Encoding.ASCII);
    //                strResult =  Fix(reader.ReadToEnd());
    //                if( !IsValidURL(strResult))
    //                {
    //                    WebException w = new WebException(strResult);

    //                    throw w;
    //                }
    //            }
    //        }
    //        catch( Exception )
    //        {
    //            return strUrl; // eat it and return original url
    //        }

    //        // if converted is longer than original, return original
    //        if ( strResult.Length > strUrl.Length)
    //            strResult = strUrl;

    //        return strResult;
    //    }



    //    public static string GetOriginalURL(string strCode)
    //    {
    //        System.Net.ServicePointManager.Expect100Continue = false;
    //        string requestUrl = string.Format(CONST_Service + CONST_GetOriginalURL, strCode, CONST_UN);
    //        WebRequest request = HttpWebRequest.Create(requestUrl);
    //        request.Proxy = null;
    //        string strResult = null;
    //        try
    //        {
    //            using (Stream responseStream = request.GetResponse().GetResponseStream())
    //            {
    //                StreamReader reader = new StreamReader(responseStream, Encoding.ASCII);
    //                strResult = Fix(reader.ReadToEnd());
    //                if (!IsValidURL(strResult))
    //                {
    //                    WebException w = new WebException(strResult);
    //                    throw w;
    //                }
    //            }
    //        }
    //        catch (Exception)
    //        {
    //            return CONST_Default; 
    //        }
    //        return strResult;
    //    }

    //    private static String Fix(string input)
    //    {

    //        input = input.Replace("\"", "");
    //        input = input.Replace("\n", "");
    //        input = input.Replace("\r", "");
    //        input = input.Replace("\\/", "/");
    //        return input;

    //    }

    //    /* Validate URL */
    //    private static bool IsValidURL(string strurl)
    //    {
    //        // Validate the URL
    //        if (true == strurl.ToLower().StartsWith("http://") || true == strurl.StartsWith("https://"))
    //        {
    //            return true;
    //        }
    //        return false;
    //    }


    //}
}
