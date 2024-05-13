<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LopTinChi_ChinhSua.ascx.cs" Inherits="CTMS_Clone.Server.cms.BangDiem.QuanLyLopTinChi.LopTinChi_ChinhSua" %>
<style>
    .insert__select-teacher {
        padding: 0;
        z-index: 2;
    }

    .insert__select-subject {
        position: relative;
        padding: 0;
        z-index: 3;
    }

    .insert__select-group {
        position: relative;
        padding: 0;
        z-index: 1;
    }

    .insert__select-subject .select-search__subject i,
    .insert__select-teacher .select-search__teacher i,
    .insert__select-group .select-search__group i {
        line-height: 54px;
    }

     .insert__select-subject.active .select-content {
        display: block;
     }

    .insert__select-subject.active .select-btn__content i {
        transform: rotate(-180deg);
    }

    .insert__select-teacher.active .select-content {
        display: block;
     }

    .insert__select-teacher.active .select-btn__content i {
        transform: rotate(-180deg);
    }

    .insert__select-group.active .select-content {
        display: block;
     }

    .insert__select-group.active .select-btn__content i {
        transform: rotate(-180deg);
    }

    .select-btn__content input {
        font-size: var(--small-font-size);
        line-height: 50px;
    }

    .select-btn {
        position: relative;
        background-color: hsla(244, 16%, 92%, .6);
        border: 2px solid #ccc;
        height: 52px;
        padding: 0 12px;
        line-height: 52px;
        box-shadow: none;
    }

    .insert__select-subject .select-content,
    .insert__select-teacher .select-content,
    .insert__select-group .select-content {
        margin-top: 4px;
    }

</style>
<div class="insert">
    <section class="insert__header">
        <h1>Chỉnh sửa lớp tín chỉ</h1>
    </section>
    <section class="insert__body">
        <div class="insert__content">
            <div class="insert__form">
                <div class="">
                    <div class="insert__inputs">
                        <div>
                            <label class="insert__label">Môn học</label>
                            <div class="table__top-field-select-search insert__select-subject">
                                <div class="select-btn">
                                    <div class="select-btn__content select-btn__content-subject">
                                        <input type="text" placeholder="Chọn môn học" id="txtSubject" runat="server"/>
                                        <i class="uil uil-angle-down"></i>
                                    </div>
                                    <div class="select-content">
                                        <div class="select-search select-search__subject">
                                            <input type="text" name="name" value="" placeholder="Tìm môn..." />
                                            <i class="uil uil-search"></i>
                                        </div>
                                        <ul class="select-options select-options__subject">
                                            
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div>
                            <label class="insert__label">Giảng viên</label>
                            <div class="table__top-field-select-search insert__select-teacher">
                                <div class="select-btn">
                                    <div class="select-btn__content select-btn__content-teacher">
                                        <input type="text" placeholder="Chọn giảng viên" id="txtTeacher" runat="server" />
                                        <i class="uil uil-angle-down"></i>
                                    </div>
                                    <div class="select-content">
                                        <div class="select-search select-search__teacher">
                                            <input type="text" name="name" value="" placeholder="Tìm giảng viên..." />
                                            <i class="uil uil-search"></i>
                                        </div>
                                        <ul class="select-options select-options__teacher">
                                            
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div>
                            <label class="insert__label">Nhóm lớp</label>
                            <div class="table__top-field-select-search insert__select-group">
                                <div class="select-btn">
                                    <div class="select-btn__content select-btn__content-group">
                                        <input type="text" placeholder="Chọn nhóm lớp" id="txtGroup" runat="server" />
                                        <i class="uil uil-angle-down"></i>
                                    </div>
                                    <div class="select-content">
                                        <div class="select-search select-search__group">
                                            <input type="text" name="name" value="" placeholder="Tìm nhóm lớp..." />
                                            <i class="uil uil-search"></i>
                                        </div>
                                        <ul class="select-options select-options__group">
                                            
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div>
                            <label class="insert__label">Tên lớp tín chỉ</label>
                            <input type="text" placeholder="Nhập tên lớp tín chi" class="insert__input" name="name" value="" id="txtTenLop" runat="server" />
                        </div>
                        <div>
                            <label class="insert__label">Số sinh viên</label>
                            <input type="text" placeholder="Nhập số sinh viên" class="insert__input" name="name" value="" id="txtSoSV" runat="server" />
                        </div>
                    </div>
                    <div class="insert__check">
                       
                    </div>
                </div>
                <div>
                    <div class="insert__buttons">
                        <asp:Button ID="btnInsert" CssClass="insert__button insert__button-insert" runat="server" Text="Chỉnh sửa" OnClick="btnInsert_Click" />
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<script type="text/javascript">
    const wrapperSub = document.querySelector(".insert__select-subject"),
        wrapperTer = document.querySelector(".insert__select-teacher"),
        wrapperGr = document.querySelector(".insert__select-group"),
        selectSearchSubBtn = document.querySelector(".select-btn__content-subject"),
        selectSearchTerBtn = document.querySelector(".select-btn__content-teacher"),
        selectSearchGrBtn = document.querySelector(".select-btn__content-group"),
        searchSubInput = document.querySelector(".select-search__subject input"),
        searchTerInput = document.querySelector(".select-search__teacher input"),
        searchGrInput = document.querySelector(".select-search__group input"),
        optionsSub = document.querySelector('.select-options__subject'),
        optionsTer = document.querySelector('.select-options__teacher');
        optionsGr = document.querySelector('.select-options__group');

    function addSubjects(selectedSubject) {
        optionsSub.innerHTML = "";
        const formData = new FormData();
        formData.append("thaoTac", "hienThi");
        var xhr = new XMLHttpRequest();
        xhr.open("post", "Server/cms/BangDiem/QuanLyMonHoc/Ajax/MonHoc.aspx", false);
        xhr.onreadystatechange = () => {
            if (xhr.readyState == 4 && xhr.status == 200) {
                let subjects = JSON.parse(xhr.responseText);
                subjects.forEach(subject => {
                    let isSelected = subject.sTenMonHoc == selectedSubject ? "selected" : "";
                    let li = `<li onclick="updateNameSub(this)" class="${isSelected}">${subject.sTenMonHoc}</li>`;
                    optionsSub.insertAdjacentHTML("beforeend", li);
                })
            } else {
                alert(`Error: ${xhr.status}`);
            }
        }
        xhr.send(formData);
    }
    addSubjects();

    function addTeachers(selectedTeacher) {
        optionsTer.innerHTML = "";
        const formData = new FormData();
        formData.append("thaoTac", "hienThi");
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'Server/cms/BangDiem/QuanLyGiangVien/Ajax/GiangVien.aspx', false);
        xhr.onreadystatechange = () => {
            if (xhr.readyState == 4 && xhr.status == 200) {
                let teachers = JSON.parse(xhr.responseText);
                teachers.forEach(teacher => {
                    let isSelected = teacher.sHoTen == selectedTeacher ? "selected" : "";
                    let li = `<li onclick="updateNameTer(this)" class="${isSelected}">${teacher.sHoTen}</li>`;
                    optionsTer.insertAdjacentHTML("beforeend", li);
                })
            } else {
                alert(`Error: ${xhr.status}`);
            }
        }
        xhr.send(formData);
    }
    addTeachers();

    function addGroups(selectedGroup) {
        optionsGr.innerHTML = "";
        const formData = new FormData();
        formData.append('thaoTac', 'hienThiBang');
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'Server/cms/BangDiem/QuanLyNhomLopTinChi/Ajax/NhomLop.aspx', false);
        xhr.onreadystatechange = () => {
            if (xhr.readyState == 4 && xhr.status == 200) {
                let groups = JSON.parse(xhr.responseText);
                groups.forEach(group => {
                    let isSelected = group.sTenNhom == selectedGroup ? "selected" : "";
                    let li = `<li onclick="updateNameGr(this)" class="${isSelected}">${group.sTenNhom}</li>`;
                    optionsGr.insertAdjacentHTML("beforeend", li);
                });
            } else {
                alert(`Error: ${xhr.status}`);
            }
        }
        xhr.send(formData);
    }
    addGroups();

    function updateNameSub(selectedLi) {
        searchSubInput.value = "";
        addSubjects(selectedLi.innerText);
        wrapperSub.classList.remove('active');
        selectSearchSubBtn.firstElementChild.value = selectedLi.innerText;
    }

    function updateNameTer(selectedLi) {
        searchTerInput.value = "";
        addTeachers(selectedLi.innerText);
        wrapperTer.classList.remove('active');
        selectSearchTerBtn.firstElementChild.value = selectedLi.innerText;
    }

    function updateNameGr(selectedLi) {
        searchGrInput.value = "";
        addGroups(selectedLi.innerText);
        wrapperGr.classList.remove('active');
        selectSearchGrBtn.firstElementChild.value = selectedLi.innerText;
    }

    selectSearchSubBtn.addEventListener('click', () => {
        wrapperSub.classList.toggle('active');
    });

    selectSearchTerBtn.addEventListener('click', () => {
        wrapperTer.classList.toggle('active');
    });

    selectSearchGrBtn.addEventListener('click', () => {
        wrapperGr.classList.toggle('active');
    });

    searchSubInput.addEventListener('keyup', () => {
        let arr = [];
        let searchedVal = searchSubInput.value.toLowerCase();
        const formData = new FormData();
        formData.append("tuKhoa", searchedVal);
        formData.append("thaoTac", "tim");
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'Server/cms/BangDiem/QuanLyMonHoc/Ajax/MonHoc.aspx', false);
        xhr.onreadystatechange = () => {
            if (xhr.readyState == 4 && xhr.status == 200) {
                let subjects = JSON.parse(xhr.responseText);
                arr = subjects.map(data => `<li onclick="updateNameSub(this)">${data.sTenMonHoc}</li>`).join("");
                optionsSub.innerHTML = arr ? arr : `<p>Không tìm thấy!</p>`;
            } else {
                alert(`Error: ${xhr.status}`);
            }
        }
        xhr.send(formData);
    });

    searchTerInput.addEventListener('keyup', () => {
        let arr = [];
        let searchedVal = searchTerInput.value.toLowerCase();
        const formData = new FormData();
        formData.append("thaoTac", "tim");
        formData.append("tuKhoa", searchedVal);
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'Server/cms/BangDiem/QuanLyGiangVien/Ajax/GiangVien.aspx', false);
        xhr.onreadystatechange = () => {
            if (xhr.readyState == 4 && xhr.status == 200) {
                let teachers = JSON.parse(xhr.responseText);
                arr = teachers.map(data => `<li onclick="updateNameTer(this)">${data.sHoTen}</li>`).join("");
                optionsTer.innerHTML = arr ? arr : `<p>Không có dữ liệu</p>`;
            } else {
                alert(`Error: ${xhr.status}`);
            }
        }
        xhr.send(formData);
    });
</script>
