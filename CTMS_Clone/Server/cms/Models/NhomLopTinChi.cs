using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CTMS_Clone.Server.cms.Models
{
    public class NhomLopTinChi
    {
        public static DataTable thongTinNhomLopTC()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_SelectNhomLopTC";
            cmd.CommandType = CommandType.StoredProcedure;
            return Func.Functions.getDataToTable(cmd);
        }

        public static DataTable thongTinBangNhomLopTC()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_SelectTblNhomLopTC";
            cmd.CommandType = CommandType.StoredProcedure;
            return Func.Functions.getDataToTable(cmd);
        }

        public static DataTable thongTinNhomLopTCByID(string id)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_SelectNhomLopTCByID";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PK_iNhomLopID", id);
            return Func.Functions.getDataToTable(cmd);
        }
    }
}