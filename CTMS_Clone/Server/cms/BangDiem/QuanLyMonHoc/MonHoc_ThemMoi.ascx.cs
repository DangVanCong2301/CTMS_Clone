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
    public partial class MonHoc_ThemMoi : System.Web.UI.UserControl
    {
        string thaoTac = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["thaoTac"] != null)
            {
                thaoTac = Request.QueryString["thaoTac"];
            }
            if (!IsPostBack)
            {
                layKhoiKienThuc();
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
            if (thaoTac == "themMoi")
            {
                MonHoc.insertMonHoc(
                    Convert.ToInt32(ddlKhoiKT.SelectedValue), 
                    txtName.Value.Trim(), 
                    Convert.ToInt32(txtSoTC.Value.Trim())
                );
                ltrNotice.Text = "<label class='.insert__notice-text'>Đã thêm thành công môn học: " + txtName.Value + "</label>";
                if (chkMore.Checked)
                {
                    resetValues();
                } else
                {
                    Response.Redirect("Admin.aspx?modul=bangDiem&modulPhu=monHoc");
                }
            }
        }

        private void resetValues()
        {
            txtName.Value = "";
            txtSoTC.Value = "";
        }
    }
}