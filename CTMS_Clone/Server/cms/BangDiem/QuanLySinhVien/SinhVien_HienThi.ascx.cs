using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CTMS_Clone.Server.cms.BangDiem.QuanLySinhVien
{
    public partial class SinhVien_HienThi : System.Web.UI.UserControl
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
                    laySinhVien(id);
                    break;
            }
        }

        private void laySinhVien(string id)
        {
            DataTable table = new DataTable();
            table = Models.SinhVien.thongTinSinhVienByLopHanhChinhId(id);
            string html = "";
            for (int i = 0; i < table.Rows.Count; i++)
            {
                html += $"<tr>";
                html += $"  <td>{table.Rows[i]["PK_iSinhVienID"]}</td>";
                html += $"  <td>";
                html += $"      <img src = 'Server/assets/pic/no_user.jpg' alt = 'Img' />";
                html += $"      {table.Rows[i]["sHoTen"]}";
                html += $"  </td>";
                html += $"  <td>{table.Rows[i]["sGioiTinh"]}</td>";
                html += $"  <td>{Convert.ToDateTime(table.Rows[i]["dNgaySinh"]).ToString("dd/MM/yyyy")}</td>";
                html += $"  <td>{table.Rows[i]["sDiaChi"]}</td>";
                html += $"  <td>{table.Rows[i]["sEmail"]}</td>";
                html += $"  <td>";
                html += $"      <div class='btn-tools'>";
                html += $"          <a class='btn-tool btn-tool-edit' href='#'><i class='uil uil-edit'></i></a>";
                html += $"          <a class='btn-tool btn-tool-del' href='#'><i class='uil uil-trash'></i></a>";
                html += $"      </div>";
                html += $"  </td>";
                html += $"</tr>";
            }
            display.InnerHtml = html;
        }
    }
}