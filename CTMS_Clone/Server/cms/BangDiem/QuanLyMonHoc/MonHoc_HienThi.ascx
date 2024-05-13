<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MonHoc_HienThi.ascx.cs" Inherits="CTMS_Clone.Server.cms.BangDiem.QuanLyMonHoc.MonHoc_HienThi" %>
<style> 
    .select-container {
        display: flex;
        justify-content: center;
        position: relative;
        min-width: 250px;
        height: 38px;
    }

    .select-box {
        border: none;
        outline: none;
        /*appearance: none;*/
        padding: 4.8px 12px;
        color: var(--text-color);
        background-color: var(--first-color-light);
        font-size: var(--normal-font-size);
        border-radius: 6px;
    }

    .select-container .icon-container {
        width: 50px;
        height: 100%;
        position: absolute;
        display: flex;
        right: 0;
        align-items: center;
        justify-content: center;
    }

    .icon-container i {
        font-size: 20px;
        color: var(--text-color);
    }
</style>
<div class="table">
    <section class="table__header">
        <h1>Danh sách môn học</h1>
        <a href="Admin.aspx?modul=bangDiem&modulPhu=monHoc&thaoTac=themMoi" class="btn-tool btn-tool-add" title="Thêm mới môn học"><i class="uil uil-plus-circle"></i></a>
    </section>
    <section class="table__body">
        <div class="table__top-field">
            <div class="table__top-field-select">
                <span>Hiển thị</span>
                <select class="table__item-per-page">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                </select>
                <span>mỗi trang</span>
            </div>
            <div class="table__top-field-select-search">
                <div class="select-container">
                    <select class="select-box" onchange="locKhoi()">
                        <option value="1">Chọn khối kiến thức</option>
                        <option value="2">Khối kiến thức chuyên ngành</option>
                        <option value="3">Kiến thức giáo dục đại cương</option>
                        <option value="4">Khối kiến thức tốt nghiệp</option>
                    </select>
                    <%--<div class="icon-container">
                        <i class="uil uil-angle-down"></i>
                    </div>--%>
                </div>
            </div>
            <div class="table__top-field-search">
                <input type="text" name="name" value="" onkeyup="timMonHoc(this)" placeholder="Tìm" />
                <i class="uil uil-search"></i>
            </div>
        </div>
        <div class="table__content">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Tên môn</th>
                        <th>Số tín chỉ</th>
                        <th>Công cụ</th>
                    </tr>
                </thead>
                <tbody id="display">
                    <tr>
                        <td>1</td>
                        <td>
                            Quản trị mạng
                        </td>
                        <td>3</td>
                        <td>
                            <div class="btn-tools">
                                <%--<a class="btn-tool btn-tool-more" href="#"><i class="uil uil-eye"></i></a>--%>
                                <a class="btn-tool btn-tool-edit" href="#"><i class="uil uil-edit"></i></a>
                                <a class="btn-tool btn-tool-del" href="#"><i class="uil uil-trash"></i></a>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="bottom-field">
            <ul class="pagination">
                <li class="prev"><a href="#" id="prev"><i class="uil uil-angle-left"></i></a></li>
                <li class="list"><a href="#">1</a></li>
                <li class="list"><a href="#">2</a></li>
                <li class="list"><a href="#">3</a></li>
                <li class="next"><a href="#" id="next"><i class="uil uil-angle-right"></i></a></li>
            </ul>
        </div>
    </section>
</div>
<script type="text/javascript">

    function loadMonHoc() {
        const formData = new FormData();
        formData.append("thaoTac", "hienThi");
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'Server/cms/BangDiem/QuanLyMonHoc/Ajax/MonHoc.aspx', false);
        xhr.onreadystatechange = () => {
            if (xhr.readyState == 4 && xhr.status == 200) {
                const data = JSON.parse(xhr.responseText);
                thongTinMonHoc(data);
            } else {
                alert(`Error: ${xhr.status}`);
            }
        }
        xhr.send(formData);
    }
    loadMonHoc();

    function loadKhoiKT() {
        const formData = new FormData();
        formData.append("thaoTac", "hienThiKhoiKT");
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'Server/cms/BangDiem/QuanLyMonHoc/Ajax/MonHoc.aspx', false)
    }

    function thongTinMonHoc(data) {
        const display = document.getElementById("display");
        let html = ""; // Không được đặt là const vì chuỗi là string
        html += data.map(record => // Không đặt dấu ngoặc nhọn
            `
                    <tr class='line__${record.PK_iMonHocID}'>
                        <td>${record.PK_iMonHocID}</td>
                        <td style="text-align: left">${record.sTenMonHoc}</td>
                        <td>${record.iSoTinChi}</td>
                        <td>
                            <div class="btn-tools">
                                <a class="btn-tool btn-tool-edit" href="Admin.aspx?modul=bangDiem&modulPhu=monHoc&thaoTac=chinhSua&id=${record.PK_iMonHocID}"><i class="uil uil-edit"></i></a>
                                <a class="btn-tool btn-tool-del" href="javascript:xoaMonHoc(${record.PK_iMonHocID})"><i class="uil uil-trash"></i></a>
                            </div>
                        </td>
                    </tr>
            `
        ).join('');
        display.innerHTML = html;
    }

    function locKhoi() {
        const id = document.querySelector(".select-box").value;
        const formData = new FormData();
        formData.append("FK_iKhoiKienThucID", id);
        formData.append("thaoTac", "loc");
        var xhr = new XMLHttpRequest();
        xhr.open("post", "Server/cms/BangDiem/QuanLyMonHoc/Ajax/MonHoc.aspx", false);
        xhr.onreadystatechange = () => {
            if (xhr.readyState == 4 && xhr.status == 200) {
                const data = JSON.parse(xhr.responseText);
                let html = "";
                for (let i = 0; i < data.length; i++) {
                    html += `
                    <tr class='line__${data[i].PK_iMonHocID}'>
                        <td>${data[i].PK_iMonHocID}</td>
                        <td style="text-align: left">${data[i].sTenMonHoc}</td>
                        <td>${data[i].iSoTinChi}</td>
                        <td>
                            <div class="btn-tools">
                                <a class="btn-tool btn-tool-edit" href="Admin.aspx?modul=bangDiem&modulPhu=monHoc&thaoTac=chinhSua&id=${data[i].PK_iMonHocID}"><i class="uil uil-edit"></i></a>
                                <a class="btn-tool btn-tool-del" href="javascript:xoaMonHoc(${data[i].PK_iMonHocID})"><i class="uil uil-trash"></i></a>
                            </div>
                        </td>
                    </tr>
                    `;
                }
                document.getElementById("display").innerHTML = html;
            } else {
                alert(`Error: ${xhr.status}`);
            }
        }
        xhr.send(formData);
    }

    function xoaMonHoc(id) {
        if (confirm("Bạn có chắc muốn xoá môn học này không?")) {
            const formData = new FormData();
            formData.append("PK_iMonHocID", id);
            formData.append("thaoTac", "xoa");
            var xhr = new XMLHttpRequest();
            xhr.open('post', 'Server/cms/BangDiem/QuanLyMonHoc/Ajax/MonHoc.aspx', false);
            xhr.onreadystatechange = () => {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    if (xhr.responseText == "0") {
                        alert("Môn học này đang bị ràng buộc, bạn không thể xoá!");
                    } else {
                        alert("Xoá thành công!");
                        document.querySelector(".line__" + id).style.display = 'none';
                    }
                } else {
                    alert(`Error: ${xhr.status}`);
                }
            }
            xhr.send(formData);
        }
    }

    function timMonHoc(keyword) {
        const formData = new FormData();
        formData.append("tuKhoa", keyword.value);
        formData.append("thaoTac", "tim");
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'Server/cms/BangDiem/QuanLyMonHoc/Ajax/MonHoc.aspx', false);
        xhr.onreadystatechange = () => {
            if (xhr.readyState == 4 && xhr.status == 200) {
                const data = JSON.parse(xhr.responseText);
                // console.log(data);
                let html = "";
                for (let i = 0; i < data.length; i++) {
                    html += `
                    <tr>
                        <td>${data[i].PK_iMonHocID}</td>
                        <td class='text-left'>
                            ${data[i].sTenMonHoc}
                        </td>
                        <td>${data[i].iSoTinChi}</td>
                        <td>
                            <div class="btn-tools">
                                <a class="btn-tool btn-tool-edit" href="#"><i class="uil uil-edit"></i></a>
                                <a class="btn-tool btn-tool-del" href="#"><i class="uil uil-trash"></i></a>
                            </div>
                        </td>
                    </tr>`;
                }
                document.getElementById("display").innerHTML = html;
            } else {
                alert(`Error: ${xhr.status}`);
            }
        }
        xhr.send(formData);
    }
</script>
