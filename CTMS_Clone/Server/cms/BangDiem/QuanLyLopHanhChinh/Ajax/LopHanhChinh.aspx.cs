using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CTMS_Clone.Server.cms.BangDiem.QuanLyLopHanhChinh.Ajax
{
    public partial class LopHanhChinh : System.Web.UI.Page
    {
        string thaoTac = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Params["thaoTac"] != null)
            {
                thaoTac = Request.Params["thaoTac"];
            }
            switch (thaoTac)
            {
                case "hienThi":
                    layLopHanhChinh();
                    break;
            }
        }

        private void layLopHanhChinh()
        {
            DataTable table = new DataTable();
            table = Models.LopHanhChinh.thongTinLopHanhChinh();
            if (table.Rows.Count > 0)
            {
                string json = Newtonsoft.Json.JsonConvert.SerializeObject(table);
                Response.Write(json);
                Response.End();
                Response.Flush();
            } else
            {
                Response.Write("Không có dữ liệu");
                Response.End();
                Response.Flush();
            }
        }
    }
}