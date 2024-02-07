<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Swensens_Clone.Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenPlaceHolder1" runat="server">

    <section>
        <div class="site-body">
            <div class="page-banner">
                <div class="banner-warp">
                    <div class="container">
                        <div class="banner-row-wrap">
                            <div class="colum-content col-md-20 col-lg-12">
                                <div class="banner-content">
                                    <h1>สมัครเป็นสมาชิก
                                   <br />
                                        สเวนเซ่นส์วันนี้พร้อมรับสิทธิพิเศษมากมายรอคุณอยู่ที่นี่
                                    </h1>
                                    <div class="content">
                                        <p>
                                            พิเศษสุดๆ! สำหรับสมาชิกสเวนเซ่นส์ ยิ่งกิน ยิ่งได้
                                        ยิ่งคุ้ม ใครๆ ก็สมัครได้
                                        ใช้ง่ายสะดวกสบายพร้อมสิทธิประโยชน์มากมายเพื่อคนสำคัญเช่นคุณ รอไม่ได้แล้ว
                                        สมัครเลย
                                        </p>
                                    </div>
                                    <div class="delivery-row">
                                        <div class="col col-sm-24 col-md-12 col-lg-12">
                                            <div class="action to-delivary-wrapper">
                                                <a class="wrap image-bth-th">
                                                    <img src="Imgs/TH_normal.png" />
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="colum-image col col-md-20 col-lg-12">
                                        <div class="banner-image">
                                            <img src="Imgs/banner-image.png" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="ribbon"></div>
            </div>
            <div class="page-body">
                <div class="sw-section section-deal">
                    <div class="container">
                        <div class="section-header">
                            <h2 class="section-heading has-action">
                                ดีลสุดคุ้ม
                            </h2>
                        </div>
                        <div class="deal-carousel">
                            <div class="slick-slider slick-initialized">
                                <button type="button" data-role="none" class="slick-arrow slick-prev">
                                    Previous
                                </button>
                                <div class="slick-list">
                                    <div class="slick-track">
                                        <div class="slick-slide slide-cloned" tabindex="-1" data-index="-3" aria-hidden="true">
                                            <div>
                                                <div class="deal-item" tabindex="-1">
                                                    <a>
                                                        <div class="image">
                                                            
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                            <div tabindex="-1" data-index="-2" aria-hidden="true" class="slick-slide slick-cloned">
                                                <div>
                                                    <div tabindex="-1" class="deal-item">
                                                        <a>
                                                            <div class="image" style="background-image:url('Imgs/superdeal_Bug_Banner.png');">
                                                                
                                                            </div>
                                                        </a>
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
            </div>
        </div>
    </section>

</asp:Content>
