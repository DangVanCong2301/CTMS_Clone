using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CTMS_Clone.Client.cms.DangKyLopTinChi
{
    public partial class DangKy_LoadControl : System.Web.UI.UserControl
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
                case "macDinh":
                    plDangKyLoadControl.Controls.Add(LoadControl("DangKy_MacDinh.ascx"));
                    break;
                case "hienThi":
                    plDangKyLoadControl.Controls.Add(LoadControl("DangKy_HienThi.ascx"));
                    break;
                case "load":
                    plDangKyLoadControl.Controls.Add(LoadControl("DangKy_Load.ascx"));
                    break;
                default:
                    plDangKyLoadControl.Controls.Add(LoadControl("DangKy_MacDinh.ascx"));
                    break;
            }
        }
    }
}