using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CTMS_Clone.Server.cms
{
    public partial class AdminLoadControl : System.Web.UI.UserControl
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
                case "bangDiem":
                    plAdminLoadControl.Controls.Add(LoadControl("BangDiem/BangDiemLoadControl.ascx"));
                    break;
                case "lichHoc":
                    plAdminLoadControl.Controls.Add(LoadControl("LichHoc/LichHocLoadControl.ascx"));
                    break;
                case "hoSo":
                    plAdminLoadControl.Controls.Add(LoadControl("HoSo/HoSo_GiangVien.ascx"));
                    break;   
                default:
                    plAdminLoadControl.Controls.Add(LoadControl("BangDiem/BangDiemLoadControl.ascx"));
                    break;
            }
        }
    }
}