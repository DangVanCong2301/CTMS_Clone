using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CTMS_Clone.Server.cms.BangDiem.QuanLyLopTinChi
{
    public partial class LopTinChiLoadControl : System.Web.UI.UserControl
    {
        string thaoTac = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["thaoTac"] != null)
            {
                thaoTac = Request.QueryString["thaoTac"];
            }
            switch (thaoTac)
            {
                case "hienThi":
                    plLopTinChiLoadControl.Controls.Add(LoadControl("LopTinChi_HienThi.ascx"));
                    break;
                case "themMoi":
                    plLopTinChiLoadControl.Controls.Add(LoadControl("LopTinChi_ThemMoi.ascx"));
                    break;
                case "chinhSua":
                    plLopTinChiLoadControl.Controls.Add(LoadControl("LopTinChi_ChinhSua.ascx"));
                    break;
                default:
                    plLopTinChiLoadControl.Controls.Add(LoadControl("../QuanLyNhomLopTinChi/NhomLop_HienThi.ascx"));
                    break;
            }
        }
    }
}