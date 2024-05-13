using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CTMS_Clone.Server.cms.Models
{
    public class LopTinChi
    {
        public static DataTable thongTinLopTinChi()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_SelectLopTinChi";
            cmd.CommandType = CommandType.StoredProcedure;
            return Func.Functions.getDataToTable(cmd);
        }

        public static DataTable thongTinNhomLopTinChi()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_SelectNhomLopTC"; 
            cmd.CommandType = CommandType.StoredProcedure;
            return Func.Functions.getDataToTable(cmd);
        }

        public static DataTable thongTinLopTinChiByID(string id)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_SelectLopTinChiByID";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PK_iLopTinChiID", id);
            return Func.Functions.getDataToTable(cmd);
        }

        public static void insertLopTinChi(string monId, string giangVienId, string nhomLopId, string tenLop, int soLuongSV)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_InsertLopTC";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@FK_iMonHocID", monId);
            cmd.Parameters.AddWithValue("@FK_iGiangVienID", giangVienId);
            cmd.Parameters.AddWithValue("@FK_iNhomLopID", nhomLopId);
            cmd.Parameters.AddWithValue("@sTenLopTC", tenLop);
            cmd.Parameters.AddWithValue("@iSoLuongSV", soLuongSV);
            Func.Functions.executeNonQuery(cmd);
        }

        public static void updateLopTinChi(string id, int monId, int giangVienId, int nhomLopId, string tenLop, int soLuongSV)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_UpdateLopTC";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PK_iLopTinChiID", id);
            cmd.Parameters.AddWithValue("@FK_iMonHocID", monId);
            cmd.Parameters.AddWithValue("@FK_iGiangVienID", giangVienId);
            cmd.Parameters.AddWithValue("@FK_iNhomLopID", nhomLopId);
            cmd.Parameters.AddWithValue("@sTenLopTC", tenLop);
            cmd.Parameters.AddWithValue("@iSoLuongSV", soLuongSV);
            Func.Functions.executeNonQuery(cmd);
        }

        public static void deleteLopTinChi(string id)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_DeleteLopTC";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PK_iLopTinChiID", id);
            Func.Functions.executeNonQuery(cmd);
        }
    }
}