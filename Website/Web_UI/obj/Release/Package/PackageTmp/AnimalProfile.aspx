﻿<%@ Page Title="" Language="C#" MasterPageFile="~/VetMaster.Master" AutoEventWireup="true" CodeBehind="AnimalProfile.aspx.cs" Inherits="Farmacy_App.AnimalProfile" Async="true"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <main id="main" class="main">

  <div class="pagetitle">
    <h1>Animal Profile</h1>
    <nav>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="VetDashboard.aspx">Vet Dashboard</a></li>
        <li class="breadcrumb-item active">Animal Profile</li>
      </ol>
    </nav>
  </div><!-- End Page Title -->

  <section class="section profile">
    <div class="row">
      <div class="col-xl-4">

        <div class="card">
          <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">

            <img src="assets/img/cow.jpeg" alt="Profile" class="rounded-circle">
              <!--Put manager name here-->
              <h2><asp:Label ID="AnimalName" runat="server"></asp:Label></h2>
            <h3>Tag: <asp:Label ID="lblAnimal" runat="server"></asp:Label></h3>
          </div>
        </div>

      </div>

      <div class="col-xl-8">

        <div class="card">
          <div class="card-body pt-3">
            <!-- Bordered Tabs -->
            <ul class="nav nav-tabs nav-tabs-bordered">

              <a class="nav-item">
                <href class="nav-link active" data-bs-toggle="tab" data-bs-target="#profile-overview">Overview</href>
              </a>

              <a class="nav-item">
                <href class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-edit">Health Information</href>
              </a>

            </ul>
            <div class="tab-content pt-2">

              <div class="tab-pane fade show active profile-overview" id="profile-overview">
               
                <h5 class="card-title">Profile Details</h5>

                <div class="row">
                  <div class="col-lg-3 col-md-4 label ">Animal Tag</div>
                    <!--Manager name again-->
                  <div class="col-lg-9 col-md-8">Tag: <asp:Label ID="aTag" runat="server"></asp:Label></div>
                </div>

                <div class="row">
                  <div class="col-lg-3 col-md-4 label">Kraal</div>
                  <div class="col-lg-9 col-md-8"><asp:Label ID="kraal" runat="server"></asp:Label></div>
                </div>

                <div class="row">
                  <div class="col-lg-3 col-md-4 label">Breed</div>
                  <div class="col-lg-9 col-md-8"><asp:Label ID="breed" runat="server"></asp:Label></div>
                </div>

                <div class="row">
                  <div class="col-lg-3 col-md-4 label">Age</div>
                  <div class="col-lg-9 col-md-8"><asp:Label ID="age" runat="server"></asp:Label> Months</div>
                </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">Colour</div>
                    <div class="col-lg-9 col-md-8"><asp:Label ID="color" runat="server"></asp:Label></div>
                  </div>

              </div>

              <div class="tab-pane fade profile-edit pt-3" id="profile-edit">

                <!-- Profile Edit Form -->
                <form>

                  <div class="row mb-3">
                    <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Health Status</label>
                    <div class="col-md-8 col-lg-9">
                      <asp:Label ID="healthstatus" runat="server"></asp:Label>
                    </div>
                  </div>
                    
                  <div class="row mb-3">
                      <label for="Phone" class="col-form-label"><h4>Medical History:</h4></label>
                    <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Medication Administered:</label>
                    <div class="col-md-8 col-lg-9">
                      <asp:Label ID="MedName" runat="server"></asp:Label>
                    </div>
                  </div>

                  <div class="row mb-3">
                    <label for="Email" class="col-md-4 col-lg-3 col-form-label">Medication Notes</label>
                    <div class="col-md-8 col-lg-9">
                      <textarea id="txtMedNotes" cols="50" rows="5" runat="server"></textarea>
                    </div>
                  </div>

                  <div class="text-center">
                    <button type="submit" class="btn btn-primary">Save Changes</button>
                  </div>
                </form><!-- End Profile Edit Form -->

              </div>

              <div class="tab-pane fade pt-3" id="profile-settings">

                <!-- Settings Form -->
                <form>

                  <div class="row mb-3">
                    <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Email Notifications</label>
                    <div class="col-md-8 col-lg-9">
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="changesMade" checked>
                        <label class="form-check-label" for="changesMade">
                          Changes made to your account
                        </label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="newProducts" checked>
                        <label class="form-check-label" for="newProducts">
                          Information on new products and services
                        </label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="proOffers">
                        <label class="form-check-label" for="proOffers">
                          Marketing and promo offers
                        </label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="securityNotify" checked disabled>
                        <label class="form-check-label" for="securityNotify">
                          Security alerts
                        </label>
                      </div>
                    </div>
                  </div>

                  <div class="text-center">
                    <button type="submit" class="btn btn-primary">Save Changes</button>
                  </div>
                </form><!-- End settings Form -->

              </div>

              <div class="tab-pane fade pt-3" id="profile-change-password">
                <!-- Change Password Form -->
                <form>

                  <div class="row mb-3">
                    <label for="currentPassword" class="col-md-4 col-lg-3 col-form-label">Current Password</label>
                    <div class="col-md-8 col-lg-9">
                      <input name="password" type="password" class="form-control" id="currentPassword">
                    </div>
                  </div>

                  <div class="row mb-3">
                    <label for="newPassword" class="col-md-4 col-lg-3 col-form-label">New Password</label>
                    <div class="col-md-8 col-lg-9">
                      <input name="newpassword" type="password" class="form-control" id="newPassword">
                    </div>
                  </div>

                  <div class="row mb-3">
                    <label for="renewPassword" class="col-md-4 col-lg-3 col-form-label">Re-enter New Password</label>
                    <div class="col-md-8 col-lg-9">
                      <input name="renewpassword" type="password" class="form-control" id="renewPassword">
                    </div>
                  </div>

                  <div class="text-center">
                    <button type="submit" class="btn btn-primary">Change Password</button>
                      <p id="P1" runat="server"></p>
                  </div>
                </form><!-- End Change Password Form -->

              </div>

            </div><!-- End Bordered Tabs -->

          </div>
        </div>

      </div>
    </div>
  </section>

</main><!-- End #main -->

<!-- ======= Footer ======= -->
<footer id="footer" class="footer">
  <div class="copyright">
    &copy; Copyright <strong><span>NiceAdmin</span></strong>. All Rights Reserved
  </div>
  <div class="credits">
    <!-- All the links in the footer should remain intact. -->
    <!-- You can delete the links only if you purchased the pro version. -->
    <!-- Licensing information: https://bootstrapmade.com/license/ -->
    <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
    Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
  </div>
</footer><!-- End Footer -->

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/chart.js/chart.umd.js"></script>
<script src="assets/vendor/echarts/echarts.min.js"></script>
<script src="assets/vendor/quill/quill.js"></script>
<script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
<script src="assets/vendor/tinymce/tinymce.min.js"></script>
<script src="assets/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="assets/js/main.js"></script>
</asp:Content>
