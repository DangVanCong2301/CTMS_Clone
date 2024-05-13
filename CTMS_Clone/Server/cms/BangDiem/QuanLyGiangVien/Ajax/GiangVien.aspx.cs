using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CTMS_Clone.Server.cms.Conn;

namespace CTMS_Clone.Server.cms.BangDiem.QuanLyGiangVien.Ajax
{
    public partial class GiangVien : System.Web.UI.Page
    {
        string thaoTac = "", id = "", tuKhoa = "", nhomLopId = "", monHocId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Params["thaoTac"] != null)
            {
                thaoTac = Request.Params["thaoTac"];
            }
            if (Request.Params["PK_iGiangVienID"] != null)
            {
                id = Request.Params["PK_iGiangVienID"];
            }
            if (Request.Params["tuKhoa"] != null)
            {
                tuKhoa = Request.Params["tuKhoa"];
            }
            if (Request.Params["FK_iNhomID"] != null)
            {
                nhomLopId = Request.Params["FK_iNhomID"];
            }
            if (Request.Params["PK_iMonHocID"] != null)
            {
                monHocId = Request.Params["PK_iMonHocID"];
            }
            switch (thaoTac)
            {
                case "hienThi":
                    layGiangVien();
                    break;
                case "xoa":
                    xoaGiangVien(id);
                    break;
                case "tim":
                    timGiangVien(tuKhoa);
                    break;
                case "hienThiLop":
                    hienThiDanhSachLop(id, nhomLopId, monHocId);
                    break;
            }
        }

        private void layGiangVien()
        {
            DataTable table = new DataTable();
            table = Models.GiangVien.thongTinGiangVien();
            if (table.Rows.Count > 0)
            {
                string json = Newtonsoft.Json.JsonConvert.SerializeObject(table);
                Response.Write(json);
                Response.End();
                Response.Flush();
            } else
            {
                Response.Write("Không có dữ liệu");
                Response.End();
                Response.Flush();
            }
        }

        private void xoaGiangVien(string id)
        {
            if (Func.Functions.checkKey("select * from tblLopTinChi where FK_iGiangVienID = " + id + ""))
            {
                Response.Write("0");
                Response.End();
                Response.Flush();
            }
            else
            {
                Models.GiangVien.deleteGiangVien(id);
                Response.Write("1");
                Response.End();
                Response.Flush();
            }
        }

        private void timGiangVien(string tuKhoa)
        {
            DataTable table = new DataTable();
            table = Models.GiangVien.timGiangVien(tuKhoa);
            if (table.Rows.Count > 0)
            {
                string json = Newtonsoft.Json.JsonConvert.SerializeObject(table);
                Response.Write(json);
                Response.End();
                Response.Flush();
            } else
            {
                string json = "Không có dữ liệu";
                Response.Write(json);
                Response.End();
                Response.Flush();
            }
        }

        private void hienThiDanhSachLop(string id, string nhomLopId, string monHocId)
        {
            DataTable table = new DataTable();
            table = Models.GiangVien.thongTinLopDayByNhomID(id, nhomLopId);
            // Func.Functions.getFieldValues("select sTenMonHoc from tblMonHoc where PK_iMonHocID = " + monHocId + "")
            string html = "";
            html += "<div class='detail__modal-content'>";
            html += "   <i class='uil uil-times detail__modal-close'></i>";
            html += "   <section class='table__header'>";
            html += "       <h1>Lớp đã dạy thuộc môn " + Func.Functions.getFieldValues("select sTenMonHoc from tblMonHoc where PK_iMonHocID = " + monHocId + "") + "</h1>";
            html += "   </section>";
            html += "   <section class='table__body'>";
            html += "       <div class='table__content'>";
            html += "           <table>";
            html += "               <thead>";
            html += "                   <tr>";
            html += "                       <th>STT</th>";
            html += "                       <th>Lớp</th>";
            html += "                       <th>Ngày mở lớp</th>";
            html += "                       <th>Sĩ số</th>";
            html += "                   </tr>";
            html += "               </thead>";
            html += "               <tbody>";
            for (int i = 0; i < table.Rows.Count; i++)
            {
                html += "               <tr>";
                html += "                   <td>" + (i + 1) + "</td>";
                html += "                   <td>" + table.Rows[i]["sTenLopTC"] + "</td>";
                html += "                   <td>23/" + (i + 1) + "/2023</td>";
                html += "                   <td>" + table.Rows[0]["iSoLuongSV"] + "</td>";
                html += "               </tr>";
            }
            html += "               </tbody>";
            html += "           </table>";
            html += "       </div>";
            html += "   </section>";
            html += "</div>";
            Response.Write(html);
            Response.End();
            Response.Flush();
        }
    }
}