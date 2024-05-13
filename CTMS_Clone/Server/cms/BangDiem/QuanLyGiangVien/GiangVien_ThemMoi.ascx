<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GiangVien_ThemMoi.ascx.cs" Inherits="CTMS_Clone.Server.cms.BangDiem.QuanLyGiangVien.GiangVien_ThemMoi" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET"  TagPrefix="CKEditor" %>

<div class="insert">
    <section class="insert__header">
        <h1>Thêm mới học sinh</h1>
    </section>
    <section class="insert__body">
        <div class="insert__content">
            <div class="insert__form">
                <div class="">
                    <div class="insert__inputs">
                        <div>
                            <label class="insert__label">Họ tên</label>
                            <input type="text" placeholder="Nhập họ tên" class="insert__input" name="name" value="" id="txtName" runat="server" />
                        </div>
                        <div>
                            <label class="insert__label">Giới tính</label>
                            <div class="input__box">
                                <asp:RadioButton ID="rbMale" GroupName="gender" CssClass="" runat="server" />
                                <asp:Label Text="Nam" CssClass="input__box-label" runat="server" />
                                <%--<input type="radio" id="chkMale" runat="server" value="Nam" checked="checked" />
                                <label class="input__box-label" for="male">Nam</label>
                                <input type="radio" name="gender" runat="server" id="female" value="Nữ" />
                                <label class="input__box-label" runat="server" for="female">Nữ</label>--%>
                            </div>
                        </div>
                        <div>
                            <label class="insert__label">Ngày sinh</label>
                            <input type="date" name="birthday" value="" class="insert__input-date" id="txtBirth" runat="server" />
                        </div>
                        <div>
                            <label class="insert__label">Địa chỉ</label>
                            <input type="text" placeholder="Nhập địa" class="insert__input insert__input-address" name="address" value="" id="txtAddress" runat="server" />
                        </div>
                        <div>
                            <label class="insert__label">Email</label>
                            <input type="text" placeholder="Nhập email" class="insert__input insert__input-email" name="email" value="" id="txtEmail" runat="server" />
                        </div>
                        <div>
                            <label class="insert__label">Ghi chú</label>
                            <textarea class="insert__input"></textarea>
                            <%--<CKEditor:CKEditorControl CssClass="insert__input"  ID="txt" runat="server" ></CKEditor:CKEditorControl>--%>
                        </div>
                    </div>
                    <div class="insert__check">
                        <%--<asp:CheckBox ID="CheckBox1" CssClass="insert__checkbox-input" runat="server" />--%>
                        <input type="checkbox" id="chkMore" runat="server" class="insert__checkbox-input" />
                        <label class="insert__check-label">Thêm giảng viên khác khi thêm giảng viên này!</label>
                    </div>
                    <div class="insert__notice">
                        <asp:Literal ID="ltrNotice" runat="server"></asp:Literal>
                    </div>
                </div>
                <div>
                    <div class="insert__buttons">
                        <asp:Button ID="btnInsert" CssClass="insert__button insert__button-insert" runat="server" Text="Thêm mới" OnClick="btnInsert_Click" />
                        <asp:Button ID="btnDestroy" CssClass="insert__button insert__button-destroy" runat="server" Text="Huỷ" OnClick="btnDestroy_Click" />  
                    </div>
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
        var currDay = dd + '/' + MM + '/' + yyyy;
        console.log(currDay);
        document.getElementById('date').value = currDay;
    }
    getDay();
</script>
