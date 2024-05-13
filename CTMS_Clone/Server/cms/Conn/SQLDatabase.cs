using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CTMS_Clone.Server.cms.Conn
{
    public class SQLDatabase
    {
        public static string strConnection = ConfigurationManager.ConnectionStrings["ctmsclone"].ConnectionString;
        public static SqlConnection getConnection()
        {
            return new SqlConnection(strConnection);
        }
    }
}