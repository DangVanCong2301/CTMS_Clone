using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CTMS_Clone.Server.cms.BangDiem
{
    public partial class BangDiemLoadControl : System.Web.UI.UserControl
    {
        string modulPhu = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["modulPhu"] != null)
            {
                modulPhu = Request.QueryString["modulPhu"];
            }
            switch (modulPhu)
            {
                case "giangVien":
                    plBangDiemLoadControl.Controls.Add(LoadControl("QuanLyGiangVien/GiangVienLoadControl.ascx"));
                    break;
                case "monHoc":
                    plBangDiemLoadControl.Controls.Add(LoadControl("QuanLyMonHoc/MonHocLoadControl.ascx"));
                    break;
                case "lopTinChi":
                    plBangDiemLoadControl.Controls.Add(LoadControl("QuanLyLopTinChi/LopTinChiLoadControl.ascx"));
                    break;
                case "lopHanhChinh":
                    plBangDiemLoadControl.Controls.Add(LoadControl("QuanLyLopHanhChinh/LopHanhChinh_HienThi.ascx"));
                    break;
                case "nhomLop":
                    plBangDiemLoadControl.Controls.Add(LoadControl("QuanLyNhomLopTinChi/NhomLop_HienThi.ascx"));
                    break;
                case "sinhVien":
                    plBangDiemLoadControl.Controls.Add(LoadControl("QuanLySinhVien/SinhVienLoadControl.ascx"));
                    break;
                default:
                    plBangDiemLoadControl.Controls.Add(LoadControl("QuanLyGiangVien/GiangVienLoadControl.ascx"));
                    break;
            }
        }
    }
}