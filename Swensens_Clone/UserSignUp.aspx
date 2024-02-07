<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserSignUp.aspx.cs" Inherits="Swensens_Clone.UserSignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <div class="box-login">
                                    <center>
                                        <div class="card text-bg-dark">
                                            <img src="Imgs/card-head.png" class="card-img" alt="...">
                                            <div class="card-img-overlay">
                                                <h2 class="card-title">สร้างบัญชี</h2>
                                                <p class="card-text">สมัครสมาชิกและเริ่มใช้งาน</p>
                                            </div>
                                        </div>
                                    </center>
                                </div>
                            </div>
                        </div>
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <label>ชื่อ</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1"
                                            runat="server" placeholder="กรอกชื่อ"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>นามสกุล</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2"
                                            runat="server" placeholder="กรอกนามสกุล"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <label>เบอร์โทรศัพท์</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox3"
                                                runat="server" placeholder="กรอกเบอร์โทรศัพท์" TextMode="Number"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <label>อีเมล</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox4"
                                                runat="server" placeholder="กรอกอีเมล" TextMode="Email"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <label>รหัสผ่าน</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox5"
                                                runat="server" placeholder="กรอกรหัสผ่าน" TextMode="Password"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <label>เพศ (ไม่ระบุได้)</label>
                                        <div class="form-group">
                                            <div class="btn-group" role="group" aria-label="Basic radio toggle button group">
                                                <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
                                                <label class="btn btn-outline-danger" for="btnradio1">ชาย</label>
                                            </div>
                                            <div class="btn-group" role="group" aria-label="Basic radio toggle button group">
                                                <input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off">
                                                <label class="btn btn-outline-danger" for="btnradio2">หญิง</label>
                                            </div>

                                            <div class="btn-group" role="group" aria-label="Basic radio toggle button group">
                                                <input type="radio" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off">
                                                <label class="btn btn-outline-danger" for="btnradio3">ไม่ระบุ</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <label>ของขวัญวันเกิดรอคุณอยู่</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox6"
                                                runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                                            <label class="form-check-label" for="defaultCheck1">
                                                ฉันได้อ่านและยอมรับ ข้อกำหนดการใช้งาน และ นโยบายความเป็นส่วนตัว ของสเวนเซ่นส์
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                                            <label class="form-check-label form-check-label-color:danger" for="defaultCheck1">
                                                ฉันยินยอมรับข้อมูลข่าวสาร กิจกรรมส่งเสริมการขายต่างๆ จากสเวนเซ่นส์และบริษัทในเครือ โดยเราจะเก็บข้อมูลของท่านไว้เป็นความลับ สามารถศึกษาเงื่อนไขหรือข้อตกลง นโยบายความเป็นส่วนตัว เพิ่มเติมได้ที่เว็บไซต์ของบริษัทฯ
                                            </label>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <asp:Button class="btn btn-danger btn-block btn-login btn-lg" ID="Button1" runat="server"
                                                Text="สมัครสมาชิก" OnClick="Button1_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
