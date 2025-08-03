<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Authentication.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!-- Hero Banner -->
<section class="about-banner text-center d-flex align-items-center justify-content-center" 
         style="min-height: 420px; background: linear-gradient(rgba(34, 37, 44, 0.6), rgba(34, 37, 44, 0.6)), url('Assets/home-banner.jpg') center/cover no-repeat;">
    <div class="container text-white">
        <h1 class="display-3 fw-bold">Welcome to EventSphere</h1>
        <p class="lead mt-3" style="color: #c0b3a0;">Empowering communities through seamless event coordination</p>
       <p class="mt-4" style="color: #aaaaaa;">Discover how you can contribute as a participant, volunteer, or organizer.</p>

    </div>
</section>

<!-- Introduction -->
<section class="container py-5 text-center">
    <h2 class="fw-bold mb-4" style="color: #94b499;">Your Gateway to Purpose-Driven Events</h2>
    <p class="fs-5" style="color: #22252c;">
        <strong>EventSphere</strong> enables volunteers, participants, and organizers to come together and create real impact. From registration to recognition, we make it seamless.
    </p>
</section>

<!-- What We Offer -->
<section class="container py-5">
    <h2 class="text-center fw-bold mb-5" style="color: #94b499;">What We Offer</h2>
    <div class="row text-center">
        <div class="col-md-4 mb-4">
            <div class="card border-0 shadow h-100">
                <img src="Assets/placeholder-volunteer.jpg" class="card-img-top" alt="Volunteer Experience" />
                <div class="card-body">
                    <h5 class="fw-bold" style="color: #94b499;">Structured Volunteering</h5>
                    <p style="color: #aaaaaa;">Apply, get assigned duties, mark attendance, and earn certificates — all in one place.</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card border-0 shadow h-100">
                <img src="Assets/placeholder-organizer.jpg" class="card-img-top" alt="Event Organizer Tools" />
                <div class="card-body">
                    <h5 class="fw-bold" style="color: #94b499;">Organizer Tools</h5>
                    <p style="color: #aaaaaa;">Create and manage events, approve volunteers, assign duties, and collect feedback efficiently.</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card border-0 shadow h-100">
                <img src="Assets/placeholder-participant.jpg" class="card-img-top" alt="Participant Experience" />
                <div class="card-body">
                    <h5 class="fw-bold" style="color: #94b499;">Participant Journey</h5>
                    <p style="color: #aaaaaa;">Explore events, register easily, get reminders, and earn certificates for attending.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Impact in Action -->
<section class="py-5" style="background-color: #22252c;">
    <div class="container">
        <h2 class="text-center fw-bold mb-5 text-white">How EventSphere Makes a Difference</h2>

        <!-- First Row -->
        <div class="row align-items-center mb-5">
            <div class="col-md-6 mb-3">
                <img src="Assets/impact-community.jpg" class="img-fluid rounded shadow-sm" alt="Community Impact" />
            </div>
            <div class="col-md-6">
                <h5 class="fw-bold" style="color: #e14658;">Community-Led Change</h5>
                <p style="color: #c0b3a0;">We empower grassroots efforts by connecting individuals to real-world causes. Every event is an opportunity to contribute meaningfully to your community.</p>
            </div>
        </div>

        <!-- Second Row -->
        <div class="row align-items-center flex-md-row-reverse mb-5">
            <div class="col-md-6 mb-3">
                <img src="Assets/impact-network.jpg" class="img-fluid rounded shadow-sm" alt="Collaboration Network" />
            </div>
            <div class="col-md-6">
                <h5 class="fw-bold" style="color: #e14658;">Built on Collaboration</h5>
                <p style="color: #c0b3a0;">EventSphere brings together NGOs, colleges, corporate partners, and citizens. It’s not just a tool — it’s a network built to scale social impact.</p>
            </div>
        </div>

        <!-- Third Row -->
        <div class="row align-items-center">
            <div class="col-md-6 mb-3">
                <img src="Assets/impact-growth.jpg" class="img-fluid rounded shadow-sm" alt="Personal Growth" />
            </div>
            <div class="col-md-6">
                <h5 class="fw-bold" style="color: #e14658;">Fuel for Growth</h5>
                <p style="color: #c0b3a0;">Whether you're volunteering for the first time or organizing your tenth event, our platform helps you grow — with tools, visibility, and recognition at every step.</p>
            </div>
        </div>
    </div>
</section>
<<<<<<< HEAD
=======
  <!-- Event Categories Section -->
    <section class="py-5 bg-light rounded-3">
   <div class="container text-center">
            <h2 class="fw-bold mb-4" style="color: #e14658;">Explore Event Categories</h2>
            <p class="mb-4 text-muted">Find your fit in diverse initiatives hosted by communities, NGOs, and institutions.</p>
            <div class="row">
                <div class="col-md-3 mb-4">
                    <div class="p-3 border rounded shadow-sm bg-white h-100">
                        <h6 class="fw-bold" style="color: #e14658;">Community Service</h6>
                        <p class="small text-muted">Cleanup drives, donation camps, awareness walks, and more.</p>
                    </div>
                </div>
                <div class="col-md-3 mb-4">
                    <div class="p-3 border rounded shadow-sm bg-white h-100">
                        <h6 class="fw-bold" style="color: #e14658;">Educational Events</h6>
                        <p class="small text-muted">Workshops, seminars, hackathons, and student-led summits.</p>
                    </div>
                </div>
                <div class="col-md-3 mb-4">
                    <div class="p-3 border rounded shadow-sm bg-white h-100">
                        <h6 class="fw-bold" style="color: #e14658;">Health & Wellness</h6>
                        <p class="small text-muted">Blood donation drives, yoga sessions, health check-up camps.</p>
                    </div>
                </div>
                <div class="col-md-3 mb-4">
                    <div class="p-3 border rounded shadow-sm bg-white h-100">
                        <h6 class="fw-bold" style="color: #e14658;">Environmental Actions</h6>
                        <p class="small text-muted">Tree plantations, zero-waste events, and sustainable drives.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- How It Works Section -->
    <section class="container py-5">
        <h2 class="text-center fw-bold mb-4" style="color: #94b499;">How It Works</h2>
        <div class="row text-center">
            <div class="col-md-3 mb-4">
                <div class="p-3">
                    <img src="Assets/icon-register.png" alt="Register" style="height: 60px;" />
                    <h6 class="fw-bold mt-2" style="color: #e14658;">Sign Up</h6>
                    <p class="small text-muted">Create an account as a participant, volunteer, or organizer.</p>
                </div>
            </div>
            <div class="col-md-3 mb-4">
                <div class="p-3">
                    <img src="Assets/icon-browse.png" alt="Browse" style="height: 60px;" />
                    <h6 class="fw-bold mt-2" style="color: #e14658;">Explore Events</h6>
                    <p class="small text-muted">Search upcoming events and find one that excites you.</p>
                </div>
            </div>
            <div class="col-md-3 mb-4">
                <div class="p-3">
                    <img src="Assets/icon-participate.png" alt="Participate" style="height: 60px;" />
                    <h6 class="fw-bold mt-2" style="color: #e14658;">Get Involved</h6>
                    <p class="small text-muted">Register, get approved, mark attendance, and perform your role.</p>
                </div>
            </div>
            <div class="col-md-3 mb-4">
                <div class="p-3">
                    <img src="Assets/icon-certificate.png" alt="Certificate" style="height: 60px;" />
                    <h6 class="fw-bold mt-2" style="color: #e14658;">Earn Recognition</h6>
                    <p class="small text-muted">Receive certificates for verified attendance and duties.</p>
                </div>
            </div>
        </div>
    </section>

>>>>>>> 07b0cce (Initial commit with offlineBootstrap and updated UI)

<!-- Call to Action -->
<section class="text-center py-5">
    <h3 class="fw-bold mb-3" style="color: #94b499;">Start Your Journey Today</h3>
    <p style="color: #aaaaaa;">Sign up and explore events designed to create social impact, personal growth, and community building.</p>
</section>

<!-- 🌟 Welcome Modal -->
<div class="modal fade" id="welcomeModal" tabindex="-1" aria-labelledby="welcomeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content bg-dark text-white border-0 shadow-lg">
            <div class="modal-header border-0">
                <h5 class="modal-title fw-bold" id="welcomeModalLabel">Welcome to EventSphere</h5>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p class="fs-5">We’re glad you’re here! 🎉</p>
                <p>EventSphere is your one-stop solution for:</p>
                <ul class="list-unstyled">
                    <li>✅ Seamless volunteering with duty tracking and certificates</li>
                    <li>✅ Easy event creation and management tools for organizers</li>
                    <li>✅ Hassle-free event participation with reminders and rewards</li>
                </ul>
                <p class="mt-3">Join the movement and create real community impact today!</p>
            </div>
            <div class="modal-footer border-0">
                <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Get Started</button>
            </div>
        </div>
    </div>
</div>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        if (!sessionStorage.getItem("welcomeShown")) {
            const modal = new bootstrap.Modal(document.getElementById('welcomeModal'));
            modal.show();
            sessionStorage.setItem("welcomeShown", "true");
        }
    });
</script>


</asp:Content>
