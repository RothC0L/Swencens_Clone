<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="Swensens_Clone.UserLogin" %>
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
                                                <h2 class="card-title">ยินดีต้อนรับ</h2>
                                                <p class="card-text">เข้าสู่ระบบเพื่อใช้งาน</p>
                                            </div>
                                        </div>
                                    </center>
                                </div>
                            </div>
                        </div>
                        <div class="box-body">
                            <div class="row">
                                <div class="col">
                                    <label>อีเมล</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1"
                                            runat="server" placeholder="กรอกอีเมล">
                                        </asp:TextBox>
                                    </div>
                                    <label>รหัสผ่าน</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2"
                                            runat="server" placeholder="กรอกรหัสผ่าน" TextMode="Password">
                                        </asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:Button class="btn btn-danger btn-block btn-login btn-lg" ID="Button1" runat="server" Text="เข้าสู่ระบบ" OnClick="Button1_Click" />
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
