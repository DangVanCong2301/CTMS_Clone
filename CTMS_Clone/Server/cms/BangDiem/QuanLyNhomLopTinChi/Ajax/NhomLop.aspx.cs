using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CTMS_Clone.Server.cms.BangDiem.QuanLyNhomLopTinChi.Ajax
{
    public partial class NhomLop : System.Web.UI.Page
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
                    layNhomLop();
                    break;
                case "hienThiBang":
                    layBangNhomLop();
                    break;
            }
        }

        private void layNhomLop()
        {
            DataTable table = new DataTable();
            table = Models.NhomLopTinChi.thongTinNhomLopTC();
            if (table.Rows.Count > 0)
            {
                string json = Newtonsoft.Json.JsonConvert.SerializeObject(table);
                Response.Write(json);
                Response.End();
                Response.Flush();
            } else
            {
                string json = "Không có dữ liệu";
                Response.Write(json);
                Response.End();
                Response.Flush();
            }
        }

        private void layBangNhomLop()
        {
            DataTable table = new DataTable();
            table = Models.NhomLopTinChi.thongTinBangNhomLopTC();
            if (table.Rows.Count > 0)
            {
                string json = Newtonsoft.Json.JsonConvert.SerializeObject(table);
                Response.Write(json);
                Response.End();
                Response.Flush();
            }
            else
            {
                string json = "Không có dữ liệu";
                Response.Write(json);
                Response.End();
                Response.Flush();
            }
        }
    }
}