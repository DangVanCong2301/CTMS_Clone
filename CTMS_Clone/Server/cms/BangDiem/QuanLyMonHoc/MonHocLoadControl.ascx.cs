using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CTMS_Clone.Server.cms.BangDiem.QuanLyMonHoc
{
    public partial class MonHoc_LoadControl : System.Web.UI.UserControl
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
                    plMonHocLoadControl.Controls.Add(LoadControl("MonHoc_ThemMoi.ascx"));
                    break;
                case "chinhSua":
                    plMonHocLoadControl.Controls.Add(LoadControl("MonHoc_ChinhSua.ascx"));
                    break;
                default:
                    plMonHocLoadControl.Controls.Add(LoadControl("MonHoc_HienThi.ascx"));
                    break;
            }
        }
    }
}