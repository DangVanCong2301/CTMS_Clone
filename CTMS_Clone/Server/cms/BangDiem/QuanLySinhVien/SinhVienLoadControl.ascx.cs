using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CTMS_Clone.Server.cms.BangDiem.QuanLySinhVien
{
    public partial class SinhVienLoadControl : System.Web.UI.UserControl
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
                    plSinhVienLoadControl.Controls.Add(LoadControl("SinhVien_HienThi.ascx"));
                    break;
                case "themMoi":
                    plSinhVienLoadControl.Controls.Add(LoadControl("SinhVien_ThemMoi.ascx"));
                    break;
                default:
                    plSinhVienLoadControl.Controls.Add(LoadControl("../QuanLyLopHanhChinh/LopHanhChinh_HienThi.ascx"));
                    break;
            }
        }
    }
}