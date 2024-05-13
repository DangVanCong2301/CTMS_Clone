using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CTMS_Clone.Server.cms.Models
{
    public class SinhVien
    {
        public static DataTable thongTinSinhVienByLopHanhChinhId(string id)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_SelectSinhVienByLopHanhChinhID";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@FK_iLopHanhChinhID", id);
            return Func.Functions.getDataToTable(cmd);
        }
    }
}