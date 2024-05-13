<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DangKy_Load.ascx.cs" Inherits="CTMS_Clone.Client.cms.DangKyLopTinChi.DangKy_Load" %>
<div class="schedule">
    <section class="schedule__title">
        Đăng ký lớp tín chỉ
    </section>
    <section class="progress">
        <div class="fill a"></div>
    </section>
</div>
<script type="text/javascript">
    setTimeout(function () {
        const url = "Default.aspx?modul=dangKy&modulPhu=hienThi"
        window.location.assign(url);
    }, 1 * 1000);
</script>
