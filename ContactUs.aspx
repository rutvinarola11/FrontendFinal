<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Authentication.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<section class="container py-5 text-center">
    <h6 class="text-uppercase text-muted mb-2">Contact EventSphere</h6>
    <h2 class="fw-bold">Send Us Your Event Management Queries</h2>

    <div class="row mt-5 text-start">
        <div class="col-md-4 mb-4">
            <h6 class="text-uppercase fw-bold">Location</h6>
            <p>EventSphere HQ, EduTech Park, Bengaluru, Karnataka</p>
        </div>
        <div class="col-md-4 mb-4">
            <h6 class="text-uppercase fw-bold">Email</h6>
            <p><a href="mailto:eventsphere.support@contact.com" class="text-warning">eventsphere.support@contact.com</a></p>
        </div>
        <div class="col-md-4 mb-4">
            <h6 class="text-uppercase fw-bold">Phone</h6>
            <p>+91-9876543210</p>
        </div>
    </div>

    <!-- Contact Form -->
    <div class="row justify-content-center mt-4">
        <div class="col-md-10">
            <asp:Label ID="lblMessage" runat="server" CssClass="text-success fw-bold" Visible="false" />
            <div class="row g-3">
                <div class="col-md-4">
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" Placeholder="Name *" ValidationGroup="Contact" />
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required" CssClass="text-danger" Display="Dynamic" ValidationGroup="Contact" />
                </div>
                <div class="col-md-4">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Placeholder="Email *" TextMode="Email" ValidationGroup="Contact" />
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" CssClass="text-danger" Display="Dynamic" ValidationGroup="Contact" />
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                        ValidationExpression="^\S+@\S+\.\S+$" ErrorMessage="Invalid email format" CssClass="text-danger" Display="Dynamic" ValidationGroup="Contact" />
                </div>
                <div class="col-md-4">
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" Placeholder="Phone Number" ValidationGroup="Contact" />
                    <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone"
                        ValidationExpression="^\d{10}$" ErrorMessage="Enter a valid 10-digit phone number" CssClass="text-danger" Display="Dynamic" ValidationGroup="Contact" />
                </div>
                <div class="col-12">
                    <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" Placeholder="Message" ValidationGroup="Contact" />
                    <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ControlToValidate="txtMessage" ErrorMessage="Message is required" CssClass="text-danger" Display="Dynamic" ValidationGroup="Contact" />
                </div>
                <div class="col-12 text-center">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit Now" CssClass="btn btn-warning px-5 py-2 mt-3" OnClick="btnSubmit_Click" ValidationGroup="Contact" />
                </div>
            </div>
        </div>
    </div>

    <!-- Company Info Section -->
    <section class="bg-light mt-5 py-4">
        <div class="container">
            <div class="row text-center text-md-start align-items-center">
                <div class="col-md-4 mb-4 mb-md-0">
                    <img src="../Assets/logo.png" alt="EventSphere Logo" style="max-height: 80px;" />
                    <p class="mt-2 mb-0">
                        <strong>EventSphere</strong><br />
                        <small>
                            EventSphere is a platform designed to connect volunteers, participants, and organizers.<br />
                            We simplify the way events are explored, managed, and experienced.
                        </small>
                    </p>
                </div>

                <div class="col-md-4 mb-4 mb-md-0">
                    <h6 class="fw-bold" style="color: #c0b3a0;">Company</h6>
                    <ul class="list-unstyled">
                        <li><a href="About.aspx" style="color: #c0b3a0; font-weight: 600;">About Us</a></li>
                        <li><a href="Home.aspx" style="color: #c0b3a0; font-weight: 600;">Home</a></li>
                         <li><a href="ExploreEvents.aspx" style="color: #c0b3a0; font-weight: 600;">Explore</a></li>
                    </ul>
                </div>

                <div class="col-md-4">
                    <h6 class="fw-bold">Subscribe</h6>
                    <p class="mb-2">Get latest updates and offers.</p>
                    <div class="input-group">
                        <asp:TextBox ID="txtSubscribeEmail" runat="server" CssClass="form-control" Placeholder="Enter your e-mail" ValidationGroup="Subscribe" />
                        <asp:Button ID="btnSubscribe" runat="server" Text="Subscribe" CssClass="btn btn-warning" OnClick="btnSubscribe_Click" ValidationGroup="Subscribe" />
                    </div>
                    <asp:Label ID="lblSubscribeMessage" runat="server" CssClass="text-success mt-2 fw-bold" Visible="false" />
                    <asp:RegularExpressionValidator ID="revSubscribeEmail" runat="server"
                        ControlToValidate="txtSubscribeEmail"
                        ValidationExpression="^\S+@\S+\.\S+$"
                        ErrorMessage="Please enter a valid email address"
                        CssClass="text-danger mt-1"
                        Display="Dynamic"
                        ValidationGroup="Subscribe" />
                </div>
            </div>
        </div>
    </section>
</section>

</asp:Content>
