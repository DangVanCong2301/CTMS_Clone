using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CTMS_Clone.Server.cms.Models;

namespace CTMS_Clone.Server.cms.BangDiem.QuanLyMonHoc.Ajax
{
    public partial class MonHoc : System.Web.UI.Page
    {
        string thaoTac = "", id = "", idKhoi = "", tuKhoa = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Params["thaoTac"] != null)
            {
                thaoTac = Request.Params["thaoTac"];
            }
            if (Request.Params["PK_iMonHocID"] != null)
            {
                id = Request.Params["PK_iMonHocID"];
            }
            if (Request.Params["FK_iKhoiKienThucID"] != null)
            {
                idKhoi = Request.Params["FK_iKhoiKienThucID"];
            }
            if (Request.Params["tuKhoa"] != null)
            {
                tuKhoa = Request.Params["tuKhoa"];
            }
            switch (thaoTac)
            {
                case "hienThi":
                    layMonHoc();
                    break;
                case "hienThiKhoiKT":
                    layKhoiKienThuc();
                    break;
                case "xoa":
                    xoaMonHoc(id);
                    break;
                case "loc":
                    locKhoi(idKhoi);
                    break;
                case "tim":
                    timMonHoc(tuKhoa);
                    break;
            }
        }

        private void layMonHoc()
        {
            DataTable table = new DataTable();
            table = Models.MonHoc.thongTinMonHoc();
            if (table.Rows.Count > 0)
            {
                string json = Newtonsoft.Json.JsonConvert.SerializeObject(table);
                Response.Write(json);
                Response.End();
                Response.Flush();
            } else
            {
                Response.Write("No data");
                Response.End();
                Response.Flush();
            }
        }

        private void layKhoiKienThuc()
        {
            DataTable table = new DataTable();
            table = Models.MonHoc.thongTinKhoiKienThuc();
            if (table.Rows.Count > 0)
            {
                string json = Newtonsoft.Json.JsonConvert.SerializeObject(table);
                Response.Write(json);
                Response.End();
                Response.Flush();
            }
            else
            {
                Response.Write("No data");
                Response.End();
                Response.Flush();
            }
        }

        private void xoaMonHoc(string id)
        {
            if (Func.Functions.checkKey("select * from tblLopTinChi where FK_iMonHocID = " + id + ""))
            {
                Response.Write("0");
                Response.End();
                Response.Flush();
            } else
            {
                Models.MonHoc.deleteMonHoc(id);
                Response.Write("1");
                Response.End();
                Response.Flush();
            }
        }

        private void locKhoi(string idKhoi)
        {
            DataTable table = new DataTable();
            table = Models.MonHoc.thongTinMonHocByKhoiKT(idKhoi);
            if (table.Rows.Count > 0)
            {
                string json = Newtonsoft.Json.JsonConvert.SerializeObject(table);
                Response.Write(json);
                Response.End();
                Response.Flush();
            } else
            {
                Response.Write("No data");
                Response.End();
                Response.Flush();
            }
        }

        private void timMonHoc(string tuKhoa)
        {
            DataTable table = new DataTable();
            table = Models.MonHoc.timMonHoc(tuKhoa);
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