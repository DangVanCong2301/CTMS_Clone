using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CTMS_Clone.Server.cms.BangDiem.QuanLyLopHanhChinh
{
    public partial class LopHanhChinhLoadControl : System.Web.UI.UserControl
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
                    break;
                case "themMoi":
                    break;
                case "chinhSua":
                    break;
                default:
                    plLopHanhChinhLoadControl.Controls.Add(LoadControl("../"));
                    break;
            }
        }
    }
}