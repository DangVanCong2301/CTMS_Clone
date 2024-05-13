using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CTMS_Clone.Server.cms.Models;

namespace CTMS_Clone.Server.cms.BangDiem.QuanLyMonHoc
{
    public partial class MonHoc_ChinhSua : System.Web.UI.UserControl
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
                layKhoiKienThuc();
                layThongTinMonHoc(id);
            }
        }

        private void layKhoiKienThuc()
        {
            DataTable table = new DataTable();
            table = KhoiKienThuc.thongTinKhoiKT();
            ddlKhoiKT.Items.Clear();
            for (int i = 0; i < table.Rows.Count; i++)
            {
                ddlKhoiKT.Items.Add(new ListItem(table.Rows[i]["sTenKhoi"].ToString(), table.Rows[i]["PK_iKhoiKienThucID"].ToString()));
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            if (thaoTac == "chinhSua")
            {
                MonHoc.updateMonHoc(
                    id, 
                    Convert.ToInt32(ddlKhoiKT.SelectedValue), 
                    txtName.Value.Trim(), 
                    Convert.ToInt32(txtSoTC.Value.Trim())
                );
                Response.Redirect("Admin.aspx?modul=bangDiem&modulPhu=monHoc");
            }
        }

        private void layThongTinMonHoc(string id)
        {
            if (thaoTac == "chinhSua")
            {
                DataTable table = new DataTable();
                table = MonHoc.thongTinMonHocByID(id);
                if (table.Rows.Count > 0)
                {
                    ddlKhoiKT.SelectedValue = table.Rows[0]["FK_iKhoiKienThucID"].ToString();
                    txtName.Value = table.Rows[0]["sTenMonHoc"].ToString();
                    txtSoTC.Value = table.Rows[0]["iSoTinChi"].ToString();
                }
            }
        }
    }
}