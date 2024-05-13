<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LichHoc_HienThi.ascx.cs" Inherits="CTMS_Clone.Client.cms.LichHoc.LichHoc_HienThi" %>
<div class="container schedule">
    <section class="schedule__title">
        Lịch học của Đặng Văn Công
    </section>
    <section class="schedule__content">
        <div class="schedule__calendar">
            Tuần từ
                    <input type="date" class="schedule__calendar-datetime" name="name" />
            <input type="button" class="schedule__calendar-btn" value="Xem lịch" />
        </div>
    </section>
    <section class="schedule__timetable">
        <div class="schedule__timetable-item">
            <div class="schedule__timetable-day">Thứ hai 6/3/2023</div>
            <div class="schedule__timetable-table">
                <div class="schedule__timetable-table-content">
                    <table>
                        <thead>
                            <tr>
                                <th>STT</th>
                                <th>Giờ</th>
                                <th>Phòng</th>
                                <th>Môn học</th>
                                <th>Giảng viên</th>
                                <th>Lớp/DS thi</th>
                                <th>Trạng thái</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>7:30 -> 11:15
                                </td>
                                <td>23</td>
                                <td>Lập trình hướng sự kiện</td>
                                <td>Nguyễn Thị Tâm</td>
                                <td>AAS7182022.013</td>
                                <td>
                                    <div class="btn-tools">
                                        <a class="btn-tool btn-tool-more" href="UI/UIHoSoGiangVien.html" title="Xem chi tiết">Học</a>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>13:00 -> 16:45
                                </td>
                                <td>42</td>
                                <td>Phân tích thiết kế hệ thống TT</td>
                                <td>Lê Hữu Dũng</td>
                                <td>AAS7182022.013</td>
                                <td>
                                    <div class="btn-tools">
                                        <a class="btn-tool btn-tool-more" href="UI/UIHoSoGiangVien.html" title="Xem chi tiết">Học</a>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="schedule__timetable-item">
            <div class="schedule__timetable-day">Thứ hai 6/3/2023</div>
            <div class="schedule__timetable-table">
                <div class="schedule__timetable-table-content">
                    <table>
                        <thead>
                            <tr>
                                <th>STT</th>
                                <th>Giờ</th>
                                <th>Phòng</th>
                                <th>Môn học</th>
                                <th>Giảng viên</th>
                                <th>Lớp/DS thi</th>
                                <th>Trạng thái</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>7:30 -> 11:15
                                </td>
                                <td>23</td>
                                <td>Lập trình hướng sự kiện</td>
                                <td>Chưa phân công</td>
                                <td>DS#7684</td>
                                <td>
                                    <div class="btn-tools">
                                        <a class="btn-tool btn-tool-exam" href="#">Thi</a>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>13:00 -> 16:45
                                </td>
                                <td>42</td>
                                <td>Phân tích thiết kế hệ thống TT</td>
                                <td>Lê Hữu Dũng</td>
                                <td>AAS7182022.013</td>
                                <td>
                                    <div class="btn-tools">
                                        <a class="btn-tool btn-tool-more" href="UI/UIHoSoGiangVien.html" title="Xem chi tiết">Học</a>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="schedule__timetable-item">
            <div class="schedule__timetable-day">Thứ hai 6/3/2023</div>
            <div class="schedule__timetable-table">
                <div class="schedule__timetable-table-content">
                    <table>
                        <thead>
                            <tr>
                                <th>STT</th>
                                <th>Giờ</th>
                                <th>Phòng</th>
                                <th>Môn học</th>
                                <th>Giảng viên</th>
                                <th>Lớp/DS thi</th>
                                <th>Trạng thái</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>7:30 -> 11:15
                                </td>
                                <td>23</td>
                                <td>Lập trình hướng sự kiện</td>
                                <td>Nguyễn Thị Tâm</td>
                                <td>AAS7182022.013</td>
                                <td>
                                    <div class="btn-tools">
                                        <a class="btn-tool btn-tool-more" href="UI/UIHoSoGiangVien.html" title="Xem chi tiết">Học</a>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>13:00 -> 16:45
                                </td>
                                <td>42</td>
                                <td>Phân tích thiết kế hệ thống TT</td>
                                <td>Lê Hữu Dũng</td>
                                <td>AAS7182022.013</td>
                                <td>
                                    <div class="btn-tools">
                                        <a class="btn-tool btn-tool-more" href="UI/UIHoSoGiangVien.html" title="Xem chi tiết">Học</a>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="schedule__timetable-item">
            <div class="schedule__timetable-day">Thứ hai 6/3/2023</div>
            <div class="schedule__timetable-table">
                <div class="schedule__timetable-table-content">
                    <table>
                        <thead>
                            <tr>
                                <th>STT</th>
                                <th>Giờ</th>
                                <th>Phòng</th>
                                <th>Môn học</th>
                                <th>Giảng viên</th>
                                <th>Lớp/DS thi</th>
                                <th>Trạng thái</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>7:30 -> 11:15
                                </td>
                                <td>23</td>
                                <td>Lập trình hướng sự kiện</td>
                                <td>Nguyễn Thị Tâm</td>
                                <td>AAS7182022.013</td>
                                <td>
                                    <div class="btn-tools">
                                        <a class="btn-tool btn-tool-more" href="UI/UIHoSoGiangVien.html" title="Xem chi tiết">Học</a>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>13:00 -> 16:45
                                </td>
                                <td>42</td>
                                <td>Phân tích thiết kế hệ thống TT</td>
                                <td>Lê Hữu Dũng</td>
                                <td>AAS7182022.013</td>
                                <td>
                                    <div class="btn-tools">
                                        <a class="btn-tool btn-tool-more" href="UI/UIHoSoGiangVien.html" title="Xem chi tiết">Học</a>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
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
        getDay();
</script>