using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CTMS_Clone.Server.cms.Models;

namespace CTMS_Clone.Server.cms.BangDiem.QuanLyLopTinChi.Ajax
{
    public partial class LopTinChi : System.Web.UI.Page
    {
        string thaoTac = "", id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Params["thaoTac"] != null)
            {
                thaoTac = Request.Params["thaoTac"];
            }
            if (Request.Params["PK_iLopTinChiID"] != null)
            {
                id = Request.Params["PK_iLopTinChiID"];
            }
            switch (thaoTac)
            {
                case "hienThi":
                    layLopTinChi();
                    break;
                case "xoa":
                    xoaLopTinChi(id);
                    break;
            }
        }

        private void layLopTinChi()
        {
            DataTable table = new DataTable();
            table = Models.LopTinChi.thongTinLopTinChi();
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
            Response.Write(html);
            Response.End();
            Response.Flush();
        }

        private void xoaLopTinChi(string id)
        {
            if (Func.Functions.checkKey("select * from tblBangDiem where PK_iLopTinChiID = " + id + ""))
            {
                Response.Write("0");
                Response.End();
                Response.Flush();
            } else
            {
                Models.LopTinChi.deleteLopTinChi(id);
                Response.Write("1");
                Response.End();
                Response.Flush();
            }
        }
    }
}