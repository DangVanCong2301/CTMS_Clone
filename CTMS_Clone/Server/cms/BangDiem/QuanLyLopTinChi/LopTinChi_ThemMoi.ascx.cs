using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CTMS_Clone.Server.cms.Models;

namespace CTMS_Clone.Server.cms.BangDiem.QuanLyLopTinChi
{
    public partial class LopTinChi_ThemMoi : System.Web.UI.UserControl
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
                string monHocId = Func.Functions.getFieldValues("select PK_iMonHocID from tblMonHoc where sTenMonHoc = N'" + txtSubject.Value.Trim() + "'");
                string giangVienId = Func.Functions.getFieldValues("select PK_iGiangVienID from tblGiangVien where sHoTen = N'" + txtTeacher.Value.Trim() + "'");
                string nhomLopId = Func.Functions.getFieldValues("select PK_iNhomLopID from tblNhomLopTinChi where sTenNhom = N'" + txtGroup.Value.Trim() + "'");
                LopTinChi.insertLopTinChi(
                    monHocId,
                    giangVienId,
                    nhomLopId,
                    txtTenLop.Value.Trim(),
                    Convert.ToInt32(txtSoSV.Value.Trim())
                );
                ltrNotice.Text = "<label class='.insert__notice-text'>Đã thêm thành công lớp tín chỉ: " + txtTenLop.Value + "</label>";
                if (chkMore.Checked)
                {
                    resetValues();
                }
                else
                {
                    Response.Redirect("Admin.aspx?modul=bangDiem&modulPhu=lopTinChi");
                }
            }
        }

        private void resetValues()
        {
            txtTenLop.Value = "";
            txtSoSV.Value = "";
        }
    }
}