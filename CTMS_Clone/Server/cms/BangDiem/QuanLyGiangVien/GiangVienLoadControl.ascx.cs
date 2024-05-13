using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CTMS_Clone.Server.cms.BangDiem.QuanLyGiangVien
{
    public partial class GiangVienLoadControl : System.Web.UI.UserControl
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
                case "themMoi":
                    plGiangVienLoadControl.Controls.Add(LoadControl("GiangVien_ThemMoi.ascx"));
                    break;
                case "chinhSua":
                    plGiangVienLoadControl.Controls.Add(LoadControl("GiangVien_ChinhSua.ascx"));
                    break;
                default:
                    plGiangVienLoadControl.Controls.Add(LoadControl("GiangVien_HienThi.ascx"));
                    break;
            }
        }
    }
}