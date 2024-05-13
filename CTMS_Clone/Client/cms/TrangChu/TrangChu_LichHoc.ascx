<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TrangChu_LichHoc.ascx.cs" Inherits="CTMS_Clone.Client.cms.TrangChu.TrangChu_LichHoc" %>
<div class="schedule">
    <section class="schedule__title">
        Thời khoá biểu
    </section>
    <section class="timetable">
        <div class="timetable__criteria timetable__criteria-facility">
            <div class="timetable__criteria-name">Cở sở đào tạo </div>
            <div class="timetable__select">
                <select class="timetable__select-box" onchange="locKhoi()">
                    <option value="1">Tất cả</option>
                    <option value="2">Khu giảng đường khoa CNTT</option>
                    <option value="3">Số 193 - Vĩnh Hưng</option>
                    <option value="4">Cơ sở ĐHM tại Văn Giang</option>
                </select>
            </div>
        </div>
        <div class="timetable__criteria timetable__criteria-facility">
            <div class="timetable__criteria-name">Chế độ xem theo</div>
            <div class="timetable__select">
                <select class="timetable__select-box" onchange="locKhoi()">
                    <option value="1">Tất cả</option>
                    <option value="2">Phòng học</option>
                    <option value="3">Số 193 - Vĩnh Hưng</option>
                    <option value="4">Cơ sở ĐHM tại Văn Giang</option>
                </select>
            </div>
        </div>
        <div class="timetable__criteria timetable__criteria-facility">
            <div class="timetable__criteria-name">Khung giờ</div>
            <div class="timetable__select">
                <select class="timetable__select-box" onchange="locKhoi()">
                    <option value="1">Toàn bộ</option>
                    <option value="2">7:00 -> 11:15</option>
                    <option value="3">13:00 -> 16:15</option>
                    <option value="4">17:15 -> 20:30</option>
                </select>
            </div>
        </div>
        <div class="timetable__criteria timetable__criteria-facility">
            <div class="timetable__criteria-name">Tuần từ</div>
            <div class="timetable__select">
                <input type="date" name="name" class="schedule__calendar-datetime" value="" />
            </div>
        </div>
        <div class="timetable__criteria timetable__criteria-facility">
            <br />
            <div class="timetable__select">
                <input type="button" name="name" class="schedule__calendar-btn" value="Xem danh sách" />
            </div>
        </div>
        <!--Từ <input type="date" name="name" class="schedule__calendar-datetime" value="" /> đến <input type="date" class="schedule__calendar-datetime" name="name" value="" />-->
    </section>
    <section class="transcript__table bill__table timetable__table-home" style="font-size: 10px">
        <div class="transcript__table-content">
            <table>
                <thead>
                    <tr>
                        <th>Phòng học</th>
                        <th>Thứ 2
                            <br />
                            24/07/2023
                        </th>
                        <th>Thứ 3
                            <br />
                            25/07/2023
                        </th>
                        <th>Thứ 4
                            <br />
                            26/07/2023
                        </th>
                        <th>Thứ 5
                            <br />
                            27/07/2023
                        </th>
                        <th>Thứ 6
                            <br />
                            28/07/2023
                        </th>
                        <th>Thứ 7
                            <br />
                            29/07/2023
                        </th>
                        <th>Chủ nhật
                            <br />
                            30/07/2023
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="timetable__row">
                        <td>202</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr class="timetable__row">
                        <td>203</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr class="timetable__row">
                        <td>301</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr class="timetable__row">
                        <td>B102</td>
                        <td>
                            <div class="timetable__item">
                                <table>
                                    <tr>
                                        <td>7:30 -> 11:15</td>
                                    </tr>
                                    <tr>
                                        <td>CSDL</td>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Thị Tâm</td>
                                    </tr>
                                    <tr>
                                        <td>AAB4022023.003</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="btn-tools">
                                                <a class="btn-tool btn-tool-more webkit-box-table" href="UI/UIHoSoGiangVien.html" title="Xem chi tiết">Học trực tuyến</a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td>
                            <div class="timetable__item">
                                <table>
                                    <tr>
                                        <td>7:30 -> 11:15</td>
                                    </tr>
                                    <tr>
                                        <td>CSDL</td>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Thị Tâm</td>
                                    </tr>
                                    <tr>
                                        <td>AAB4022023.003</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="btn-tools">
                                                <a class="btn-tool btn-tool-more" href="UI/UIHoSoGiangVien.html" title="Xem chi tiết">Học</a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="timetable__item">
                                <table>
                                    <tr>
                                        <td>7:30 -> 11:15</td>
                                    </tr>
                                    <tr>
                                        <td>CSDL</td>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Thị Tâm</td>
                                    </tr>
                                    <tr>
                                        <td>AAB4022023.003</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="btn-tools">
                                                <a class="btn-tool btn-tool-more" href="UI/UIHoSoGiangVien.html" title="Xem chi tiết">Học</a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="timetable__item">
                                <table>
                                    <tr>
                                        <td>7:30 -> 11:15</td>
                                    </tr>
                                    <tr>
                                        <td>CSDL</td>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Thị Tâm</td>
                                    </tr>
                                    <tr>
                                        <td>AAB4022023.003</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="btn-tools">
                                                <a class="btn-tool btn-tool-rest" href="UI/UIHoSoGiangVien.html">Nghỉ</a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr class="timetable__row">
                        <td>P21</td>
                        <td></td>
                        <td>
                            <div class="timetable__item">
                                <table>
                                    <tr>
                                        <td>7:30 -> 11:15</td>
                                    </tr>
                                    <tr>
                                        <td>LTDĐ</td>
                                    </tr>
                                    <tr>
                                        <td>Chưa phân công</td>
                                    </tr>
                                    <tr>
                                        <td>DS#6815</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="btn-tools">
                                                <a class="btn-tool btn-tool-exam" href="#">Thi</a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr class="timetable__row">
                        <td>P22</td>
                        <td>
                            <div class="timetable__item">
                                <table>
                                    <tr>
                                        <td>7:30 -> 11:15</td>
                                    </tr>
                                    <tr>
                                        <td>CSDL</td>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Thị Tâm</td>
                                    </tr>
                                    <tr>
                                        <td>AAB4022023.003</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="btn-tools">
                                                <a class="btn-tool btn-tool-more" href="UI/UIHoSoGiangVien.html" title="Xem chi tiết">Học</a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td>
                            <div class="timetable__item">
                                <table>
                                    <tr>
                                        <td>7:30 -> 11:15</td>
                                    </tr>
                                    <tr>
                                        <td>PTTK</td>
                                    </tr>
                                    <tr>
                                        <td>Chưa phân công</td>
                                    </tr>
                                    <tr>
                                        <td>DS#7229</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="btn-tools">
                                                <a class="btn-tool btn-tool-exam" href="UI/UIHoSoGiangVien.html">Thi</a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="timetable__item">
                                <table>
                                    <tr>
                                        <td>13:00 -> 16:15</td>
                                    </tr>
                                    <tr>
                                        <td title="Lập trình hướng sư kiện">LTHSK</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div style="" class="webkit-box-table">

                                            Nguyễn Đắc Phương Thảo
                                            </div>
                                            </td>
                                    </tr>
                                    <tr>
                                        <td>AAB4022023.003</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="btn-tools">
                                                <a class="btn-tool btn-tool-more" href="UI/UIHoSoGiangVien.html" title="Xem chi tiết">Học</a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td>
                            <div class="timetable__item">
                                <table>
                                    <tr>
                                        <td>7:30 -> 11:15</td>
                                    </tr>
                                    <tr>
                                        <td>CSDL</td>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Thị Tâm</td>
                                    </tr>
                                    <tr>
                                        <td>AAB4022023.003</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="btn-tools">
                                                <a class="btn-tool btn-tool-more" href="UI/UIHoSoGiangVien.html" title="Xem chi tiết">Học</a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td>
                            <div class="timetable__item">
                                <table>
                                    <tr>
                                        <td>7:30 -> 11:15</td>
                                    </tr>
                                    <tr>
                                        <td>CSDL</td>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Thị Tâm</td>
                                    </tr>
                                    <tr>
                                        <td>AAB4022023.003</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="btn-tools">
                                                <a class="btn-tool btn-tool-more" href="UI/UIHoSoGiangVien.html" title="Xem chi tiết">Học</a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td>
                            <div class="timetable__item">
                                <table>
                                    <tr>
                                        <td>7:30 -> 11:15</td>
                                    </tr>
                                    <tr>
                                        <td>CSDL</td>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Thị Tâm</td>
                                    </tr>
                                    <tr>
                                        <td>AAB4022023.003</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="btn-tools">
                                                <a class="btn-tool btn-tool-more" href="UI/UIHoSoGiangVien.html" title="Xem chi tiết">Học</a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td>
                            <div class="timetable__item">
                                <table>
                                    <tr>
                                        <td>7:30 -> 11:15</td>
                                    </tr>
                                    <tr>
                                        <td>CSDL</td>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Thị Tâm</td>
                                    </tr>
                                    <tr>
                                        <td>AAB4022023.003</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="btn-tools">
                                                <a class="btn-tool btn-tool-more" href="UI/UIHoSoGiangVien.html" title="Xem chi tiết">Học</a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td>
                            <div class="timetable__item">
                                <table>
                                    <tr>
                                        <td>7:30 -> 11:15</td>
                                    </tr>
                                    <tr>
                                        <td>CSDL</td>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Thị Tâm</td>
                                    </tr>
                                    <tr>
                                        <td>AAB4022023.003</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="btn-tools">
                                                <a class="btn-tool btn-tool-more" href="UI/UIHoSoGiangVien.html" title="Xem chi tiết">Học</a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                    <tr class="timetable__row">
                        <td>P23</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>
                            <div class="timetable__item">
                                <table>
                                    <tr>
                                        <td>17:15 -> 20:00</td>
                                    </tr>
                                    <tr>
                                        <td><a style="" class="webkit-box-table" title="Hỏi thi phối hợp TT Đà Nẵng" href="#">Hỏi thi phối hợp TT Đà Nẵng</a></td>
                                    </tr>
                                    <tr>
                                        <td>Lê Hữu Dũng</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="btn-tools">
                                                <a class="btn-tool btn-tool-event" href="UI/UIHoSoGiangVien.html" title="Xem chi tiết">Sự kiện</a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr class="timetable__row">
                        <td>P24</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>
                            <div class="timetable__item">
                                <table>
                                    <tr>
                                        <td>7:30 -> 11:15</td>
                                    </tr>
                                    <tr>
                                        <td>CSDL</td>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Thị Tâm</td>
                                    </tr>
                                    <tr>
                                        <td>AAB4022023.003</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="btn-tools">
                                                <a class="btn-tool btn-tool-more" href="UI/UIHoSoGiangVien.html" title="Xem chi tiết">Học</a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td></td>
                    </tr>
                    <tr class="timetable__row">
                        <td>P31</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>
                            <div class="timetable__item">
                                <table>
                                    <tr>
                                        <td>7:30 -> 11:15</td>
                                    </tr>
                                    <tr>
                                        <td>CSDL</td>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Thị Tâm</td>
                                    </tr>
                                    <tr>
                                        <td>AAB4022023.003</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="btn-tools">
                                                <a class="btn-tool btn-tool-more" href="UI/UIHoSoGiangVien.html" title="Xem chi tiết">Học</a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr class="timetable__row">
                        <td>P32</td>
                        <td></td>
                        <td></td>
                        <td>
                            <div class="timetable__item">
                                <table>
                                    <tr>
                                        <td>7:30 -> 11:15</td>
                                    </tr>
                                    <tr>
                                        <td>CSDL</td>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Thị Tâm</td>
                                    </tr>
                                    <tr>
                                        <td>AAB4022023.003</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="btn-tools">
                                                <a class="btn-tool btn-tool-more" href="UI/UIHoSoGiangVien.html" title="Xem chi tiết">Học</a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr class="timetable__row">
                        <td>P33</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>
                            <div class="timetable__item">
                                <table>
                                    <tr>
                                        <td>7:30 -> 11:15</td>
                                    </tr>
                                    <tr>
                                        <td>CSDL</td>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Thị Tâm</td>
                                    </tr>
                                    <tr>
                                        <td>AAB4022023.003</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="btn-tools">
                                                <a class="btn-tool btn-tool-more" href="UI/UIHoSoGiangVien.html" title="Xem chi tiết">Học</a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr class="timetable__row">
                        <td>P34</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>
                            <div class="timetable__item">
                                <table>
                                    <tr>
                                        <td>7:30 -> 11:15</td>
                                    </tr>
                                    <tr>
                                        <td>CSDL</td>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Thị Tâm</td>
                                    </tr>
                                    <tr>
                                        <td>AAB4022023.003</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="btn-tools">
                                                <a class="btn-tool btn-tool-more" href="UI/UIHoSoGiangVien.html" title="Xem chi tiết">Học</a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr class="timetable__row">
                        <td>P41</td>
                        <td></td>
                        <td></td>
                        <td>
                            <div class="timetable__item">
                                <table>
                                    <tr>
                                        <td>7:30 -> 11:15</td>
                                    </tr>
                                    <tr>
                                        <td>CSDL</td>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Thị Tâm</td>
                                    </tr>
                                    <tr>
                                        <td>AAB4022023.003</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="btn-tools">
                                                <a class="btn-tool btn-tool-more" href="UI/UIHoSoGiangVien.html" title="Xem chi tiết">Học</a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr class="timetable__row">
                        <td>P42</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>
                            <div class="timetable__item">
                                <table>
                                    <tr>
                                        <td>7:30 -> 11:15</td>
                                    </tr>
                                    <tr>
                                        <td>CSDL</td>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Thị Tâm</td>
                                    </tr>
                                    <tr>
                                        <td>AAB4022023.003</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="btn-tools">
                                                <a class="btn-tool btn-tool-more" href="UI/UIHoSoGiangVien.html" title="Xem chi tiết">Học</a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr class="timetable__row">
                        <td>P43</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>
                            <div class="timetable__item">
                                <table>
                                    <tr>
                                        <td>7:30 -> 11:15</td>
                                    </tr>
                                    <tr>
                                        <td>CSDL</td>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Thị Tâm</td>
                                    </tr>
                                    <tr>
                                        <td>AAB4022023.003</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="btn-tools">
                                                <a class="btn-tool btn-tool-more" href="UI/UIHoSoGiangVien.html" title="Xem chi tiết">Học</a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr class="timetable__row">
                        <td>P44</td>
                        <td>
                            <div class="timetable__item">
                                <table>
                                    <tr>
                                        <td>7:30 -> 11:15</td>
                                    </tr>
                                    <tr>
                                        <td>CSDL</td>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Thị Tâm</td>
                                    </tr>
                                    <tr>
                                        <td>AAB4022023.003</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="btn-tools">
                                                <a class="btn-tool btn-tool-more" href="UI/UIHoSoGiangVien.html" title="Xem chi tiết">Học</a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr class="timetable__row">
                        <td>P51</td>
                        <td>
                            <div class="timetable__item">
                                <table>
                                    <tr>
                                        <td>7:30 -> 11:15</td>
                                    </tr>
                                    <tr>
                                        <td>CSDL</td>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Thị Tâm</td>
                                    </tr>
                                    <tr>
                                        <td>AAB4022023.003</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="btn-tools">
                                                <a class="btn-tool btn-tool-more" href="UI/UIHoSoGiangVien.html" title="Xem chi tiết">Học</a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr class="timetable__row">
                        <td>P52</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>
                            <div class="timetable__item">
                                <table>
                                    <tr>
                                        <td>7:30 -> 11:15</td>
                                    </tr>
                                    <tr>
                                        <td>CSDL</td>
                                    </tr>
                                    <tr>
                                        <td>Nguyễn Thị Tâm</td>
                                    </tr>
                                    <tr>
                                        <td>AAB4022023.003</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="btn-tools">
                                                <a class="btn-tool btn-tool-more" href="UI/UIHoSoGiangVien.html" title="Xem chi tiết">Học</a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </section>
</div>
<script type="text/javascript">
    function getDay() {
        var day = new Date();
        var yyyy = day.getFullYear();
        var MM = day.getMonth() + 1;
        if (MM < 10) {
            MM = '0' + MM
        }
        var dd = day.getDate();
        if (dd < 10) {
            dd = '0' + dd;
        }
        var currDay = yyyy + '-' + MM + '-' + dd;
        console.log(currDay);
        document.querySelector(".schedule__calendar-datetime").value = currDay;
    }
    getDay()
    const countdown = document.getElementById("countdown");

    let countdownValue = 10;
    countdown.textContent = countdownValue;
    const url = "UILichHoc.html";

    setInterval(function () {
        countdownValue--;
        countdown.textContent = countdownValue;
    }, 1000);

    setTimeout(function () {
        window.location.replace(url);
    }, 10 * 1000);
</script>
