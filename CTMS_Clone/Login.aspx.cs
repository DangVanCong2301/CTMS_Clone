using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CTMS_Clone.Server.cms.Models;

namespace CTMS_Clone
{
    public partial class Login : System.Web.UI.Page
    {
        string email = "", password = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                email = Request.Form.Get("input-username");
                password = Request.Form.Get("input-password");
                layTaiKhoan(email, password);
            }
        }

        private void layTaiKhoan(string username, string password)
        {
            DataTable table = new DataTable();
            table = TaiKhoan.thongTinTaiKhoanByEmail_MK(username, password);
            if (table.Rows.Count > 0)
            {
                Session["DangNhap"] = "1";
                Session["TenDangNhap"] = table.Rows[0]["sEmail"].ToString();
                if (Convert.ToInt32(table.Rows[0]["iQuyenDangNhap"].ToString()) == 0) {
                    Response.Redirect("Admin.aspx?id=" + table.Rows[0]["PK_iTaiKhoanID"] + "");
                } else
                {
                    Response.Redirect("Default.aspx?id=" + table.Rows[0]["PK_iTaiKhoanID"] + "");
                }
            } else
            {
                notice.InnerText = "Sai tên đăng nhập hoặc mật khẩu";
            }
        }
    }
}