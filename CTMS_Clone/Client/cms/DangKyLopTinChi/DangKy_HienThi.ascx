<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DangKy_HienThi.ascx.cs" Inherits="CTMS_Clone.Client.cms.DangKyLopTinChi.DangKy_HienThi" %>
<div class="schedule">
    <section class="schedule__title">
        Đăng ký lớp tín chỉ
    </section>
    <section class="container schedule__timetable">
        <div class="schedule__timetable-title">Sinh viên 20A100377 - Đặng Văn Công</div>
        <div class="schedule__timetable-item">
            <div class="schedule__timetable-day" style="font-weight: normal">Lớp có thể đăng ký</div>
            <div class="schedule__timetable-table">
                <div class="schedule__timetable-table-content">
                    <table>
                        <thead>
                            <tr>
                                <th>Đăng ký</th>
                                <th>Tên lớp</th>
                                <th>Môn - Giảng viên</th>
                                <th>Tối thiểu</th>
                                <th>Tối đa</th>
                                <th>Đã đăng ký</th>
                                <th>Hạn đăng ký</th>
                                <th>Lịch học dự kiến</th>
                            </tr>
                        </thead>
                        <tbody id="display__regis">
                          
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="schedule__timetable-item">
            <div class="schedule__timetable-day" style="font-weight: normal">Lớp vừa đăng ký</div>
            <div class="schedule__timetable-table">
                <div class="schedule__timetable-table-content">
                    <table>
                        <thead>
                            <tr>
                                <th>Đăng ký</th>
                                <th>Tên lớp</th>
                                <th>Môn - Giảng viên</th>
                                <th>Tối thiểu</th>
                                <th>Tối đa</th>
                                <th>Đã đăng ký</th>
                                <th>Hạn đăng ký</th>
                                <th>Lịch học dự kiến</th>
                            </tr>
                        </thead>
                        <tbody id="display__registed">
                            
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
</div>
<script>
    const data = [
        {
            class: "AAS7132022.009",
            subject: "Lập trình di động (3 tc)<br />Mai Thị Thuý Hà",
            min: 45,
            max: 65,
            regis: 34,
            term: "Từ 8:00 20/8/2022<br />đến 14:00 25/8/2022<br /> Huỷ trước 14:00 24/8/2022",
            calendar: "Thứ 3 23/8/2022 7:30 - P23",
            isSelected: false
        },
        {
            class: "AAS7132022.009",
            subject: "Lập trình di động (3 tc)<br /> Lê Hữu Dũng",
            min: 45,
            max: 65,
            regis: 34,
            term: "Từ 8:00 20/8/2022<br />đến 14:00 25/8/2022<br /> Huỷ trước 14:00 24/8/2022",
            calendar: "Thứ 3 23/8/2022 7:30 - P23",
            isSelected: true
        },
        {
            class: "AAS7132022.009",
            subject: "Lập trình Web (3 tc)<br />Nguyễn Đức Tuấn",
            min: 45,
            max: 65,
            regis: 34,
            term: "Từ 8:00 20/8/2022<br />đến 14:00 25/8/2022<br /> Huỷ trước 14:00 24/8/2022",
            calendar: "Thứ 3 23/8/2022 7:30 - P23",
            isSelected: false
        },
        {
            class: "AAS7132022.009",
            subject: "Lập trình hướng sự kiện (3 tc)<br /> Nguyễn Thị Tâm",
            min: 45,
            max: 65,
            regis: 34,
            term: "Từ 8:00 20/8/2022<br />đến 14:00 25/8/2022<br /> Huỷ trước 14:00 24/8/2022",
            calendar: "Thứ 3 23/8/2022 7:30 - P23",
            isSelected: true
        }
    ]

    function loadLop() {
        let html = "";
        html += data.map(obj => `
            <tr>
                <td><a href="javascript:regis('${obj.class}', '${obj.subject}', ${obj.min}, ${obj.max}, '${obj.term}', '${obj.calendar}')"><i class="uil uil-arrow-circle-right register__icon register__icon-regis"></i></a></td>
                <td>${obj.class}
                </td>
                <td>${obj.subject}
                </td>
                <td>${obj.min}</td>
                <td>${obj.max}</td>
                <td>20</td>
                <td>${obj.term}
                </td>
                <td>${obj.term}
                </td>
            </tr>
        `).join('');
        document.getElementById("display__regis").innerHTML = html;
    }
    loadLop();

    function loadLopDK() {
        let html = "";
        for (let i = 0; i < data.length; i++) {
            if (data[i].isSelected) {
                html += `
                    <tr>
                        <td><i class="uil uil-arrow-circle-right register__icon register__icon-des"></i></td>
                        <td>${data[i].class}
                        </td>
                        <td>${data[i].subject}
                        </td>
                        <td>${data[i].min}</td>
                        <td>${data[i].max}</td>
                        <td>20</td>
                        <td>${data[i].term}
                        </td>
                        <td>${data[i].calendar}
                        </td>
                    </tr>
                `;
            }
        }
        document.getElementById("display__registed").innerHTML = html;
    }
    loadLopDK();

    function regis(cls, sub, min, max, ter, cal) {
        let html = `
            <tr>
                <td><i class="uil uil-arrow-circle-right register__icon register__icon-des"></i></td>
                <td>${cls}
                </td>
                <td>${sub}
                </td>
                <td>${min}</td>
                <td>${max}</td>
                <td>20</td>
                <td>${ter}
                </td>
                <td>${cal}
                </td>                                                                                               
            </tr>
        `;
        document.getElementById("display__registed").innerHTML = html;
    }
</script>
