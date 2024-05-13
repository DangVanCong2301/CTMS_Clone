using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CTMS_Clone.Client.cms.TrangChu
{
    public partial class TrangChuLoadControl : System.Web.UI.UserControl
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
                case "hienThiLichHoc":
                    plTrangChuLoadControl.Controls.Add(LoadControl("TrangChu_LichHoc.ascx"));
                    break;
                default:
                    plTrangChuLoadControl.Controls.Add(LoadControl("TrangChu_MacDinh.ascx"));
                    break;
            }
        }
    }
}