using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CTMS_Clone.Server.cms.Models
{
    public class KhoiKienThuc
    {
        public static DataTable thongTinKhoiKT()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_SelectKhoiKienThuc";
            cmd.CommandType = CommandType.StoredProcedure;
            return Func.Functions.getDataToTable(cmd);
        }
    }
}