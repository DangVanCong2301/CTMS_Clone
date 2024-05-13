using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CTMS_Clone.Client.cms
{
    public partial class UserLoadControl : System.Web.UI.UserControl
    {
        string modul = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["modul"] != null)
            {
                modul = Request.QueryString["modul"];
            }
            switch (modul)
            {
                case "lichHoc":
                    plUserLoadControl.Controls.Add(LoadControl("LichHoc/LichHoc_HienThi.ascx"));
                    break;
                case "lichThi":
                    plUserLoadControl.Controls.Add(LoadControl("LichThi/LichThi_HienThi.ascx"));
                    break;
                case "trangChu":
                    plUserLoadControl.Controls.Add(LoadControl("TrangChu/TrangChuLoadControl.ascx"));
                    break;
                case "dangKy":
                    plUserLoadControl.Controls.Add(LoadControl("DangKyLopTinChi/DangKy_LoadControl.ascx"));
                    break;
                case "ketQua":
                    plUserLoadControl.Controls.Add(LoadControl("KetQua/KetQua_HienThi.ascx"));
                    break;
                case "hoaDon":
                    plUserLoadControl.Controls.Add(LoadControl("HocPhi/HocPhi_HienThi.ascx"));
                    break;
                default:
                    plUserLoadControl.Controls.Add(LoadControl("TrangChu/TrangChuLoadControl.ascx"));
                    break;
            }
        }
    }
}