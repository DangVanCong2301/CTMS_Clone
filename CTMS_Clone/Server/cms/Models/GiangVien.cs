using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using CTMS_Clone.Server.cms.Func;

namespace CTMS_Clone.Server.cms.Models
{
    public class GiangVien
    {
        public static DataTable thongTinGiangVien()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_SelectGiangVien";
            cmd.CommandType = CommandType.StoredProcedure;
            return Functions.getDataToTable(cmd);
        }

        public static DataTable thongTinGiangVienByID(string id)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_SelectGiangVienByID";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PK_iGiangVienID", id);
            return Functions.getDataToTable(cmd);
        }

        public static DataTable thongTinGiangVienDayMonByID(string id)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_SelectGiangVienDayMonByID";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PK_iGiangVienID", id);
            return Functions.getDataToTable(cmd);
        }

        public static DataTable thongTinLopDayByNhomID(string id, string nhomID)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_SelectGiangVienDayLopByNhomID";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PK_iGiangVienID", id);
            cmd.Parameters.AddWithValue("@FK_iNhomLopID", nhomID);
            return Functions.getDataToTable(cmd);
        }

        public static void insertGiangVien(string hoTen, string gioiTinh, DateTime ngaySinh, string diaChi, string email)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_InsertGiangVien";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@sHoTen", hoTen);
            cmd.Parameters.AddWithValue("@sGioiTinh", gioiTinh);
            cmd.Parameters.AddWithValue("@dNgaySinh", ngaySinh);
            cmd.Parameters.AddWithValue("@sDiaChi", diaChi);
            cmd.Parameters.AddWithValue("@sEmail", email);
            Functions.executeNonQuery(cmd);
        }

        public static void updateGiangVien(string id, string hoTen, string gioiTinh, DateTime ngaySinh, string diaChi, string email)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_UpdateGiangVien";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PK_iGiangVienID", id);
            cmd.Parameters.AddWithValue("@sHoTen", hoTen);
            cmd.Parameters.AddWithValue("@sGioiTinh", gioiTinh);
            cmd.Parameters.AddWithValue("@dNgaySinh", ngaySinh);
            cmd.Parameters.AddWithValue("@sDiaChi", diaChi);
            cmd.Parameters.AddWithValue("@sEmail", email);
            Functions.executeNonQuery(cmd);
        }

        public static void deleteGiangVien(string id)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_DeleteGiangVien";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PK_iGiangVienID", id);
            Functions.executeNonQuery(cmd);
        }

        public static DataTable timGiangVien(string tuKhoa)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_TimGiangVien";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@sTuKhoa", tuKhoa);
            return Functions.getDataToTable(cmd);
        }
    }
}