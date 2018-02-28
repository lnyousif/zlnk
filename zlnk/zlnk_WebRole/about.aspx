<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="zlnk_WebRole.about" MasterPageFile="~/main.master" %>
<asp:Content ID="nav" runat="server" ContentPlaceHolderID="navPH">
    <ul>
<li><a href="default.aspx" >home</a></li>
<li><a href="Register.aspx">register</a></li>
<li><a href="Login.aspx">login</a></li>
<li><a href="About.aspx" class="current">help</a></li>
</ul>
</asp:Content>


<asp:Content ID="cnt" ContentPlaceHolderID="phMain" runat="server">
    <p>Our service provide simple REST interface,
you can take a look at the below example and tailor it to your own service.</p>
<p>
If you want to implemet the service on your current domain name and use our service to lookup the correct URL, then you need to configure a Mod_rewrite or what is called "URL Rewrite" on your server to intercept</p> 

We use this <a href="zlnkAccess.aspx.txt">zlnkAccess.aspx.txt</a>


track those requests on your short domain that match this "(<b>[_0-9a-z-]+)</b>" and then forward the Code to us as we did in the above sample. 

we use RESTful  service, this is the format of each JSON call

<pre>


for creating short URL

http://zlnk.net/zlink.svc/CreateShortLink?oUrl={0}&UN={1}
or 
http://zlnk.net/zlink.svc/CreateShortLink?oUrl={0}


for retriving the original url

http://zlnk.net/zlink.svc/GetOriginalLink?ShortCode={0}&UN={1}
or
http://zlnk.net/zlink.svc/GetOriginalLink?ShortCode={0}

</pre>
 
</asp:Content>