﻿<%@ Page Language="C#" %>

<%@ Import Namespace="System" %>
<%@ Import Namespace="System.Collections.Generic" %>
<%@ Import Namespace="System.Linq" %>
<%@ Import Namespace="System.Web" %>
<%@ Import Namespace="System.Web.UI" %>
<%@ Import Namespace="System.Web.UI.WebControls" %>
<%@ Import Namespace="System.Net" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Text" %>


<script runat="server">
       protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnShort_Click(object sender, EventArgs e)
        {
            txtShortUrl.Text = zlnkREST.ShortenURL(txtURL.Text); 
        }

        protected void btnCode_Click(object sender, EventArgs e)
        {
            txtOURL.Text = zlnkREST.GetOriginalURL(txtCode.Text);
        }

        public static class zlnkREST
        {
            static string CONST_UN = "free"; // User your own UserName in Case you wanna track all your posts,
            static string CONST_Service = "http://zlnk.net/zlink.svc/";
            static string CONST_GetOriginalURL = "GetOriginalLink?ShortCode={0}&UN={1}";
            static string CONST_Shorten = "CreateShortLink?oUrl={0}&UN={1}";
            static string CONST_Default = "http://zlnk.net/";

            public static string ShortenURL(string strUrl)
            {
                System.Net.ServicePointManager.Expect100Continue = false;

                // return empty strings if not valid
                if (!IsValidURL(strUrl))
                {
                    return "";
                }

                string requestUrl = string.Format(CONST_Service + CONST_Shorten, strUrl, CONST_UN);
                WebRequest request = HttpWebRequest.Create(requestUrl);
                request.Proxy = null;
                string strResult = null;
                try
                {
                    using (Stream responseStream = request.GetResponse().GetResponseStream())
                    {
                        StreamReader reader = new StreamReader(responseStream, Encoding.ASCII);
                        strResult = Fix(reader.ReadToEnd());
                        if (!IsValidURL(strResult))
                        {
                            WebException w = new WebException(strResult);

                            throw w;
                        }
                    }
                }
                catch (Exception e)
                {
                    return strUrl; // eat it and return original url
                }

                // if converted is longer than original, return original
                if (strResult.Length > strUrl.Length)
                    strResult = strUrl;

                return strResult;
            }



            public static string GetOriginalURL(string strCode)
            {
                System.Net.ServicePointManager.Expect100Continue = false;
                string requestUrl = string.Format(CONST_Service + CONST_GetOriginalURL, strCode, CONST_UN);
                WebRequest request = HttpWebRequest.Create(requestUrl);
                request.Proxy = null;
                string strResult = null;
                try
                {
                    using (Stream responseStream = request.GetResponse().GetResponseStream())
                    {
                        StreamReader reader = new StreamReader(responseStream, Encoding.ASCII);
                        strResult = Fix(reader.ReadToEnd());
                        if (!IsValidURL(strResult))
                        {
                            WebException w = new WebException(strResult);
                            throw w;
                        }
                    }
                }
                catch (Exception e)
                {
                    return "";
                }
                return strResult;
            }

            private static String Fix(string input)
            {

                input = input.Replace("\"", "");
                input = input.Replace("\n", "");
                input = input.Replace("\r", "");
                input = input.Replace("\\/", "/");
                return input;

            }

            /* Validate URL */
            private static bool IsValidURL(string strurl)
            {
                // Validate the URL
                if (true == strurl.ToLower().StartsWith("http://") || true == strurl.StartsWith("https://"))
                {
                    return true;
                }
                return false;
            }
        }
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p>  Optional User Name [if you want to track it]<br />
    <asp:TextBox ID="txtUserName" 
            runat="server" Width="100"></asp:TextBox>
    <br />
        <asp:TextBox ID="txtURL" runat="server" Width="346px"></asp:TextBox>
        <asp:Button ID="btnShort" runat="server" Text="Shorten" Width="104px" 
            ValidationGroup="shortVG" onclick="btnShort_Click" />
        <br />
        <asp:TextBox ID="txtShortUrl" runat="server" ReadOnly="True"
            Width="253px"></asp:TextBox>
    </p>
    <hr />
        <p> Get Original Link<br />
    <asp:TextBox ID="txtCode" runat="server" Width="100"></asp:TextBox>
        <asp:Button ID="btnCode" runat="server" Text="Get Original URL" Width="151px" 
                ValidationGroup="shortVG" onclick="btnCode_Click" />
        <br />
        <asp:TextBox ID="txtOURL" runat="server" ReadOnly="True" Width="253px"></asp:TextBox>
    </p>    
    </div>
    </form>
</body>
</html>
