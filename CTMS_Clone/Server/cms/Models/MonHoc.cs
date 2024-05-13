using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CTMS_Clone.Server.cms.Models
{
    public class MonHoc
    {
        public static DataTable thongTinMonHoc()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_SelectMonHoc";
            cmd.CommandType = CommandType.StoredProcedure;
            return Func.Functions.getDataToTable(cmd);
        }

        public static DataTable thongTinKhoiKienThuc()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_SelectKhoiKienThuc";
            cmd.CommandType = CommandType.StoredProcedure;
            return Func.Functions.getDataToTable(cmd);
        }
        public static DataTable thongTinMonHocByID(string id)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_SelectMonHocByID";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PK_iMonHocID", id);
            return Func.Functions.getDataToTable(cmd);
        }

        public static DataTable thongTinMonHocByKhoiKT(string id)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_SelectMonHocByKhoiKT";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@FK_iKhoiKienThucID", id);
            return Func.Functions.getDataToTable(cmd);
        }

        public static void insertMonHoc(int khoiKienThuc, string tenMon, int soTC)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_InsertMonHoc";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@FK_iKhoiKienThucID", khoiKienThuc);
            cmd.Parameters.AddWithValue("@sTenMonHoc", tenMon);
            cmd.Parameters.AddWithValue("@iSoTinChi", soTC);
            Func.Functions.executeNonQuery(cmd);
        }

        public static void updateMonHoc(string id, int khoiKienThuc, string tenMon, int soTC)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_UpdateMonHoc";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PK_iMonHocID", id);
            cmd.Parameters.AddWithValue("@FK_iKhoiKienThucID", khoiKienThuc);
            cmd.Parameters.AddWithValue("@sTenMonHoc", tenMon);
            cmd.Parameters.AddWithValue("@iSoTinChi", soTC);
            Func.Functions.executeNonQuery(cmd);
        }

        public static void deleteMonHoc(string id)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_DeleteMonHoc";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PK_iMonHocID", id);
            Func.Functions.executeNonQuery(cmd);
        }

        public static DataTable timMonHoc(string tuKhoa)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_TimMonHoc";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@sTuKhoa", tuKhoa);
            return Func.Functions.getDataToTable(cmd);
        }
    }
}