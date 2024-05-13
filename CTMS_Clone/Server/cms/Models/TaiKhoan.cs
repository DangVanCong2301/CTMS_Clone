using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CTMS_Clone.Server.cms.Models
{
    public class TaiKhoan
    {
        public static DataTable thongTinTaiKhoanByEmail_MK(string email, string matKhau)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_SelectTaiKhoanByEmail_MK";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@sEmail", email);
            cmd.Parameters.AddWithValue("@sMatKhau", matKhau);
            return Func.Functions.getDataToTable(cmd);
        }
    }
}