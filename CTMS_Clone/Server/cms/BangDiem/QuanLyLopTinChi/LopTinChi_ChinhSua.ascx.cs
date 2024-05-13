using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CTMS_Clone.Server.cms.BangDiem.QuanLyLopTinChi
{
    public partial class LopTinChi_ChinhSua : System.Web.UI.UserControl
    {
        string thaoTac = "", id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["thaoTac"] != null)
            {
                thaoTac = Request.QueryString["thaoTac"];
            }
            if (Request.QueryString["id"] != null)
            {
                id = Request.QueryString["id"];
            }
            if (!IsPostBack)
            {
                layThongTinLopTC(id);
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            if (thaoTac == "chinhSua")
            {
                string monHocId = Func.Functions.getFieldValues("select PK_iMonHocID from tblMonHoc where sTenMonHoc = N'" + txtSubject.Value.Trim() + "'");
                string giangVienId = Func.Functions.getFieldValues("select PK_iGiangVienID from tblGiangVien where sHoTen = N'" + txtTeacher.Value.Trim() + "'");
                string nhomLopId = Func.Functions.getFieldValues("select PK_iNhomLopID from tblNhomLopTinChi where sTenNhom = N'" + txtGroup.Value.Trim() + "'");
                Models.LopTinChi.updateLopTinChi(
                    id, 
                    Convert.ToInt32(monHocId), 
                    Convert.ToInt32(giangVienId), 
                    Convert.ToInt32(nhomLopId),
                    txtTenLop.Value.Trim(), 
                    Convert.ToInt32(txtSoSV.Value.Trim())
                );
                Response.Redirect("Admin.aspx?modul=bangDiem&modulPhu=lopTinChi&thaoTac=hienThi&id=" + nhomLopId + "");
            }
        }

        private void layThongTinLopTC(string id)
        {
            if (thaoTac == "chinhSua")
            {
                DataTable table = new DataTable();
                table = Models.LopTinChi.thongTinLopTinChiByID(id);
                if (table.Rows.Count > 0)
                {
                    txtSubject.Value = Func.Functions.getFieldValues("select sTenMonHoc from tblMonHoc where PK_iMonHocID = " + table.Rows[0]["FK_iMonHocID"].ToString() + "");
                    txtTeacher.Value = Func.Functions.getFieldValues("select sHoTen from tblGiangVien where PK_iGiangVienID = " + table.Rows[0]["FK_iGiangVienID"].ToString() + "");
                    txtGroup.Value = Func.Functions.getFieldValues("select sTenNhom from tblNhomLopTinChi where PK_iNhomLopID = " + table.Rows[0]["FK_iNhomLopID"].ToString() + "");
                    txtTenLop.Value = table.Rows[0]["sTenLopTC"].ToString();
                    txtSoSV.Value = table.Rows[0]["iSoLuongSV"].ToString();
                }
            }
        }
    }
}