using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CTMS_Clone.Server.cms.BangDiem.QuanLyLopTinChi
{
    public partial class LopTinChi_HienThi : System.Web.UI.UserControl
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
            switch (thaoTac)
            {
                case "hienThi":
                    layDanhSachLop(id);
                    break;
            }
        }

        private void layDanhSachLop(string id)
        {
            DataTable table = new DataTable();
            table = Models.NhomLopTinChi.thongTinNhomLopTCByID(id);
            txtSubject.InnerText = "Các lớp tín chỉ của " + table.Rows[0]["sTenMonHoc"] + "(" + table.Rows[0]["sTenNhom"] + ")";
            string html = "";
            for (int i = 0; i < table.Rows.Count; i++)
            {
                html += "<tr class='line_" + table.Rows[i]["PK_iLopTinChiID"] + "'>";
                html += "  <td>" + table.Rows[i]["PK_iLopTinChiID"] + "</td>";
                html += "  <td>" + table.Rows[i]["sTenMonHoc"] + "(" + table.Rows[i]["sTenNhom"] + ")</td>";
                html += "  <td>" + table.Rows[i]["sHoTen"] + "</td>";
                html += "  <td>" + table.Rows[i]["sTenLopTC"] + "</td>";
                html += "  <td>" + table.Rows[i]["iSoLuongSV"] + "</td>";
                html += "  <td>";
                html += "      <div class='btn-tools'>";
                html += "          <a class='btn-tool btn-tool-edit' href='Admin.aspx?modul=bangDiem&modulPhu=lopTinChi&thaoTac=chinhSua&id=" + table.Rows[i]["PK_iLopTinChiID"] + "' title='Chỉnh sửa'><i class='uil uil-edit'></i></a>";
                html += "          <a class='btn-tool btn-tool-del' href='javascript:xoaLopTC(" + table.Rows[i]["PK_iLopTinChiID"] + ")'><i class='uil uil-trash'></i></a>";
                html += "      </div>";
                html += "  </td>";
                html += "</tr>";
            }
            display.InnerHtml = html;
        }
    }
}