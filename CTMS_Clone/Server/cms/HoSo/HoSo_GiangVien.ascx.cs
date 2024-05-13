using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CTMS_Clone.Server.cms.HoSo
{
    public partial class HoSo_GiangVien : System.Web.UI.UserControl
    {
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                id = Request.QueryString["id"];
            }
            if (!IsPostBack)
            {
                layTenGiangVien(id);
                layLopDay(id);
            }
        }

        private void layTenGiangVien(string id)
        {
            DataTable table = new DataTable();
            table = Models.GiangVien.thongTinGiangVienByID(id);
            if (table.Rows.Count > 0)
            {
                name.InnerText = "Giảng viên " + table.Rows[0]["sHoTen"].ToString();
            }
        }

        private void layLopDay(string id)
        {
            DataTable table = new DataTable();
            table = Models.GiangVien.thongTinGiangVienDayMonByID(id);
            //" + Func.Functions.getFieldValues("select PK_iNhomLopID from tblNhomLopTinChi where sTenNhom = '" + table.Rows[i]["sTenNhom"] + "'") + "
            string html = "";
            for (int i = 0; i < table.Rows.Count; i++)
            {
                html += "<li class='detail-left__item'>" + table.Rows[i]["sTenMonHoc"] + "(" + table.Rows[i]["sTenNhom"] + ")";
                html += $"   <a class='detail-left__link' href='javascript:showModal(" + id + ", " + Func.Functions.getFieldValues("select PK_iNhomLopID from tblNhomLopTinChi where sTenNhom = '" + table.Rows[i]["sTenNhom"] + "'") + ", " + table.Rows[i]["PK_iMonHocID"] + ");'>" + table.Rows[i]["iSoLop"] + " lớp</a>";
                html += "</li>";
            }
            lstSubject.InnerHtml = html;
        }
    }
}