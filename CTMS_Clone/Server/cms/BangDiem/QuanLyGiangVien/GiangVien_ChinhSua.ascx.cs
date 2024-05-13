using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CTMS_Clone.Server.cms.Models;

namespace CTMS_Clone.Server.cms.BangDiem.QuanLyGiangVien
{
    public partial class GiangVien_ChinhSua : System.Web.UI.UserControl
    {
        string id = "", thaoTac = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                id = Request.QueryString["id"];
            }
            if (Request.QueryString["thaoTac"] != null)
            {
                thaoTac = Request.QueryString["thaoTac"];
            }
            layThongTinGiangVien(id);
        }

        private void layThongTinGiangVien(string id)
        {
            DataTable table = new DataTable();
            table = GiangVien.thongTinGiangVienByID(id);
            if (table.Rows.Count > 0)
            {
                txtName.Value = table.Rows[0]["sHoTen"].ToString();
                txtBirth.Value = Convert.ToDateTime(table.Rows[0]["dNgaySinh"]).ToString("dd/MM/yyyy");
                if (table.Rows[0]["sGioiTinh"].ToString() == "Nam")
                {
                    rbMale.Checked = true;
                } else 
                {
                    rbFemale.Checked = true;
                }
                txtAddress.Value = table.Rows[0]["sDiaChi"].ToString();
                txtEmail.Value = table.Rows[0]["sEmail"].ToString();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string gioiTinh = "";
            if (rbMale.Checked)
            {
                gioiTinh = "Nam"; 
            } else
            {
                gioiTinh = "Nữ";
            }
            if (thaoTac == "chinhSua")
            {
                GiangVien.updateGiangVien(
                    id, 
                    txtName.Value.Trim(), 
                    gioiTinh, 
                    Convert.ToDateTime(txtBirth.Value.Trim()), 
                    txtAddress.Value.Trim(), 
                    txtEmail.Value.Trim()
                );
                Response.Redirect("Admin.aspx?modul=bangDiem&modulPhu=giangVien");
            }
        }
    }
}