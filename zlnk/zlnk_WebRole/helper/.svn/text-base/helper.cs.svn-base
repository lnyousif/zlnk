using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using Microsoft.ServiceHosting.ServiceRuntime;
using System.Diagnostics;
using System.Security.Cryptography;
using System.IO;
using System.Configuration;

using zlnk_WebRole.data;

namespace zlnk_WebRole
{
    public static class helper
    {
        private static string GenerateRandomCode(int length) 
        { 
            string charPool = "ABCDEFGOPQRSTUVWXY1234567890ZabcdefghijklmHIJKLMNnopqrstuvwxyz"; 
            StringBuilder rs = new StringBuilder(); 
            Random random = new Random(); 
            for (int i = 0; i < length; i++) 
            { 
                rs.Append(charPool[(int) (random.NextDouble() * charPool.Length)]); 
            } 
            return rs.ToString(); 
        }

        public static string GetUnuiqeScd()
        {

            string SCD = string.Empty; 
            bool exist = true;

            while (exist)
            {
                try
                {
                    SCD = GenerateRandomCode(int.Parse(RoleManager.GetConfigurationSetting("rndlength")));
                    zlnk zl = (from z in new zlnkDC().zlnks where z.sCd == SCD select z).FirstOrDefault<zlnk>();
                    zl.UN = zl.UN;
                    exist = true;
                }
                catch 
                {
                    exist = false;
                }
            }


            return SCD;
        }
    }

    public class CryptoHelper
    {
        private static byte[] KEY_64 = { 222, 3, 89, 50, 100, 4, 2, 32 };
        private static byte[] IV_64 = { 55, 29, 246, 176, 87, 99, 167, 3 };
        private static byte[] KEY_192 = { 45, 16, 93, 26, 78, 4, 89, 32, 15, 167, 44, 80, 26, 250, 11, 112, 2, 35, 11, 204, 119, 35, 184, 197 };
        private static byte[] IV_192 = { 55, 76, 246, 79, 36, 99, 1, 65, 42, 5, 62, 83, 184, 7, 209, 13, 145, 84, 200, 58, 173, 10, 33, 222 };

        public static string Encrypt(string value)
        {
            //switch ("64")
            //{

            //    case "64":
                    return Encrypt64(value);

            //    case "192":
            //        return EncryptTripleDES(value);

            //    default:
            //        return value;

            //}


        }

        public static string Decrypt(string value)
        {
            //switch ("64")
            //{

            //    case "64":
                    return Decrypt64(value);

            //    case "192":
            //        return DecryptTripleDES(value);

            //    default:
            //        return value;

            //}


        }


        private static string Encrypt64(string value)
        {
            if (value != "")
            {
                DESCryptoServiceProvider cryptoProvider = new DESCryptoServiceProvider();
                MemoryStream ms = new MemoryStream();
                CryptoStream cs = new CryptoStream(ms, cryptoProvider.CreateEncryptor(KEY_64, IV_64), CryptoStreamMode.Write);
                StreamWriter sw = new StreamWriter(cs);
                sw.Write(value);
                sw.Flush();
                cs.FlushFinalBlock();
                ms.Flush();
                return Convert.ToBase64String(ms.GetBuffer(), 0, (int)ms.Length);
            }
            else
            {
                return "";
            }
        }

        private static string Decrypt64(string value)
        {
            if (value != "")
            {
                DESCryptoServiceProvider cryptoProvider = new DESCryptoServiceProvider();
                byte[] buffer = Convert.FromBase64String(value);
                MemoryStream ms = new MemoryStream(buffer);
                CryptoStream cs = new CryptoStream(ms, cryptoProvider.CreateDecryptor(KEY_64, IV_64), CryptoStreamMode.Read);
                StreamReader sr = new StreamReader(cs);
                return sr.ReadToEnd();
            }
            else
            {
                return "";
            }
        }

        private static string EncryptTripleDES(string value)
        {
            if (value != "")
            {
                TripleDESCryptoServiceProvider cryptoProvider = new TripleDESCryptoServiceProvider();
                MemoryStream ms = new MemoryStream();
                CryptoStream cs = new CryptoStream(ms, cryptoProvider.CreateEncryptor(KEY_192, IV_192), CryptoStreamMode.Write);
                StreamWriter sw = new StreamWriter(cs);
                sw.Write(value);
                sw.Flush();
                cs.FlushFinalBlock();
                ms.Flush();
                return Convert.ToBase64String(ms.GetBuffer(), 0, (int)ms.Length);
            }
            else
            {
                return "";
            }
        }

        private static string DecryptTripleDES(string value)
        {
            if (value != "")
            {
                TripleDESCryptoServiceProvider cryptoProvider = new TripleDESCryptoServiceProvider();
                byte[] buffer = Convert.FromBase64String(value);
                MemoryStream ms = new MemoryStream(buffer);
                CryptoStream cs = new CryptoStream(ms, cryptoProvider.CreateDecryptor(KEY_192, IV_192), CryptoStreamMode.Read);
                StreamReader sr = new StreamReader(cs);
                return sr.ReadToEnd();
            }
            else
            {
                return "";
            }
        }
    }
}
