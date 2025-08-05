<%@ Page Title="Event Details" Language="C#" MasterPageFile="~/MasterPage.Master"
    AutoEventWireup="true" CodeBehind="EventDetails.aspx.cs"
    Inherits="Authentication.User.EventDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<style>

    .banner-section {
        position: relative;
        width: 100%;
        max-height: 350px;
        overflow: hidden;
        border-radius: 12px;
        box-shadow: 0 5px 20px rgba(0, 0, 0, 0.15);
    }

    .banner-section img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        filter: brightness(60%);
    }

    .banner-overlay {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        color: #ffffff;
        text-align: center;
        text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.7);
    }

    .banner-overlay h1 {
        font-size: 2.8rem;
        font-weight: 700;
        margin: 0;
    }

    .section-title {
        font-size: 1.5rem;
        font-weight: 600;
        margin-bottom: 1rem;
        color: #343a40;
    }

    .card {
         background: linear-gradient(180deg, #f5f5dc 0%, #ffffff 100%);
         border-radius: 10px;
    }

    .btn-lg {
        padding: 0.75rem 1.5rem;
        font-size: 1.1rem;
    }
</style>

<div class="container mt-5">

    <!-- 🔷 Banner -->
    <div class="banner-section mb-5">
        <asp:Image ID="imgBanner" runat="server" CssClass="img-fluid" />
        <div class="banner-overlay">
            <h1><asp:Label ID="lblTitle" runat="server" /></h1>
        </div>
    </div>

    <div class="row g-4">
        <!-- 📝 Event Details -->
        <div class="col-lg-8">
            <div class="card shadow-sm border-0">
                <div class="card-body">
                    <div class="section-title"><h2>Event Details</h2></div>
                    <dl class="row">
                        <dt class="col-sm-4">Description</dt>
                        <dd class="col-sm-8"><asp:Label ID="lblDescription" runat="server" /></dd>

                        <dt class="col-sm-4">Date</dt>
                        <dd class="col-sm-8"><asp:Label ID="lblDate" runat="server" /></dd>

                        <dt class="col-sm-4">Time</dt>
                        <dd class="col-sm-8">
                            <asp:Label ID="lblStartTime" runat="server" /> to 
                            <asp:Label ID="lblEndTime" runat="server" />
                        </dd>

                        <dt class="col-sm-4">Location</dt>
                        <dd class="col-sm-8"><asp:Label ID="lblLocation" runat="server" /></dd>

                        <dt class="col-sm-4">Mode</dt>
                        <dd class="col-sm-8"><asp:Label ID="lblMode" runat="server" /></dd>

                        <dt class="col-sm-4">Category</dt>
                        <dd class="col-sm-8"><asp:Label ID="lblCategory" runat="server" /></dd>

                        <dt class="col-sm-4">Registration Fee</dt>
                        <dd class="col-sm-8"><asp:Label ID="lblFee" runat="server" /></dd>

                        <dt class="col-sm-4">Registration Deadline</dt>
                        <dd class="col-sm-8"><asp:Label ID="lblDeadline" runat="server" /></dd>

                        <dt class="col-sm-4">Terms Accepted</dt>
                        <dd class="col-sm-8"><asp:Label ID="lblTerms" runat="server" /></dd>

                        <dt class="col-sm-4">Status</dt>
                        <dd class="col-sm-8"><asp:Label ID="lblStatus" runat="server" /></dd>
                    </dl>
                </div>
            </div>
        </div>

        <!-- 🧑‍💼 Organizer Info -->
        <div class="col-lg-4">
            <div class="card shadow-sm border-0">
                <div class="card-body">
                    <div class="section-title"><h2>Organizer</h2></div>
                    <p><strong>Name:</strong> <asp:Label ID="lblOrganizer" runat="server" /></p>
                    <p><strong>Email:</strong> <asp:Label ID="lblEmail" runat="server" /></p>
                    <p><strong>Phone:</strong> <asp:Label ID="lblPhone" runat="server" /></p>
                </div>
            </div>
        </div>
    </div>

    <!-- 🔹 Volunteer Categories -->
    <asp:Panel ID="pnlVolunteerCategories" runat="server" Visible="false" CssClass="my-5">
        <h4 class="mb-3 fw-semibold">Available Volunteer Categories</h4>
        <asp:Repeater ID="rptVolunteerCategories" runat="server">
            <HeaderTemplate>
                <table class="table table-striped table-bordered shadow-sm">
                    <thead class="table-dark">
                        <tr>
                            <th>Category</th>
                            <th>Required</th>
                            <th>Allocated</th>
                            <th>Remaining</th>
                        </tr>
                    </thead>
                    <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%# Eval("CategoryName") %></td>
                    <td><%# Eval("RequiredVolunteers") %></td>
                    <td><%# Eval("AllocatedVolunteers") %></td>
                    <td><%# Eval("RemainingVolunteers") %></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                    </tbody>
                </table>
            </FooterTemplate>
        </asp:Repeater>

        <div class="d-flex justify-content-between mt-4">
            <asp:Button ID="btnBackToDashboard" runat="server" CssClass="btn btn-outline-secondary"
                Text="← Back to Dashboard" OnClick="btnBackToDashboard_Click" />
            <asp:Button ID="btnApplyVolunteerRedirect" runat="server" CssClass="btn submit-button text-light"
                Text="Apply as Volunteer" OnClick="btnApplyVolunteerRedirect_Click" />
        </div>
    </asp:Panel>

    <!-- 👥 Participant Registration -->
    <asp:Panel ID="pnlParticipant" runat="server" Visible="false" CssClass="mt-4">
        <asp:Button ID="btnRegisterParticipant" runat="server"
            CssClass="btn btn-primary btn-lg"
            Text="Register as Participant"
            OnClick="btnRegisterParticipant_Click" />
    </asp:Panel>

    <!-- ⚙️ Organizer Controls -->
    <div class="mt-4">
        <asp:Button ID="btnEdit" runat="server" Text="Edit Event"
            CssClass="btn btn-warning me-2" OnClick="btnEdit_Click" Visible="false" />
        <asp:Button ID="btnDelete" runat="server" Text="Delete Event"
            CssClass="btn btn-danger" OnClick="btnDelete_Click" Visible="false"
            OnClientClick="return confirm('Are you sure you want to delete this event?');" />
    </div>

    <!-- ✅ Status Message -->
    <asp:Label ID="lblMessage" runat="server" CssClass="text-danger mt-3 d-block" Visible="false"></asp:Label>

</div>

</asp:Content>
