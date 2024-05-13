using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CTMS_Clone.Server.cms;

namespace CTMS_Clone.Server.cms.BangDiem.QuanLyGiangVien
{
    public partial class GiangVien_ThemMoi : System.Web.UI.UserControl
    {
        string thaoTac = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["thaoTac"] != null)
            {
                thaoTac = Request.QueryString["thaoTac"];
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            if (thaoTac == "themMoi")
            {
                string gioiTinh = "";
                if (rbMale.Checked)
                {
                    gioiTinh = "Nam";
                } else
                {
                    gioiTinh = "Nữ";
                }
                Models.GiangVien.insertGiangVien(
                    txtName.Value, 
                    gioiTinh, 
                    Convert.ToDateTime(txtBirth.Value), 
                    txtAddress.Value, 
                    txtEmail.Value
                );
                ltrNotice.Text = "<label class='.insert__notice-text'>Đã thêm thành công giảng viên " + txtName.Value + "</label>";
                if (chkMore.Checked)
                {
                    resetValues();
                }
                else
                {
                    Response.Redirect("Admin.aspx?modul=bangDiem&modulPhu=giangVien");
                }
            }
        }

        private void resetValues()
        {
            txtName.Value = "";
            txtAddress.Value = "";
            txtEmail.Value = "";
        }

        protected void btnDestroy_Click(object sender, EventArgs e)
        {
            resetValues();
        }
    }
}