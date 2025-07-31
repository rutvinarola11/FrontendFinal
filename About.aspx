<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Authentication.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!-- Hero Banner -->
<section class="about-banner text-center d-flex align-items-center justify-content-center" 
         style="min-height: 420px; background: linear-gradient(rgba(34, 37, 44, 0.6), rgba(34, 37, 44, 0.6)), url('Assets/about-banner.jpg') center/cover no-repeat;">
    <div class="container text-white">
        <h1 class="display-4 fw-bold">ABOUT US</h1>
        <p class="lead" style="color: #c0b3a0;">Empowering Events. Enabling Impact.</p>
    </div>
</section>


<!-- Intro -->
<section class="container py-5 text-center">
    <p class="fs-5" style="color: #c0b3a0;">
        <strong>EventSphere</strong> is your trusted platform for managing impactful events. Whether you're a participant, volunteer, or organizer, we ensure seamless coordination, transparency, and empowerment.
    </p>
</section>

<!-- Philosophy -->
<section class="container mb-5 text-center">
    <h3 class="fw-bold mb-3" style="color: #ffffff;">OUR EVENT MANAGEMENT PHILOSOPHY</h3>
    <p style="color: #c0b3a0;">
        We simplify and elevate the event experience by combining innovative technology with a community-first mindset. From onboarding to feedback, our platform ensures excellence at every step.
    </p>
</section>

<!-- Strategy -->
<section class="container mb-5 text-center">
    <h3 class="fw-bold mb-3" style="color: #ffffff;">OUR STRATEGY</h3>
    <ul class="fs-6 mx-auto" style="max-width: 800px; list-style-type: none; padding-left: 0;">
        <li style="color: #c0b3a0;">✔️ Simplify event participation through intuitive tools.</li>
        <li style="color: #c0b3a0;">✔️ Empower volunteers with structured, rewarding experiences.</li>
        <li style="color: #c0b3a0;">✔️ Enable organizers with tracking, duty assignment, and feedback.</li>
        <li style="color: #c0b3a0;">✔️ Foster community through recognition and certificates.</li>
    </ul>
</section>

<!-- Why Choose Us -->
<section class="container mb-5">
    <h4 class="fw-bold text-center mb-5" style="color: #e14658;">Why Choose EventSphere?</h4>

    <!-- Card 1 -->
    <div class="row align-items-center mb-5 feature-card">
        <div class="col-md-6">
            <img src="Assets/icon-experience.jpg" alt="Experience" class="img-fluid rounded shadow-sm" style="max-height: 320px; width: 100%; object-fit: cover;" />
        </div>
        <div class="col-md-6 ps-md-5">
            <h5 class="fw-bold mb-2" style="color: #94b499;">EXPERIENCE</h5>
            <p style="color: #aaaaaa;">Proven tools for managing impactful social initiatives.</p>
        </div>
    </div>

    <!-- Card 2 -->
    <div class="row align-items-center mb-5 feature-card flex-md-row-reverse">
        <div class="col-md-6">
            <img src="Assets/icon-network.jpg" alt="Network" class="img-fluid rounded shadow-sm" style="max-height: 320px; width: 100%; object-fit: cover;" />
        </div>
        <div class="col-md-6 pe-md-5 text-md-end">
            <h5 class="fw-bold mb-2" style="color: #94b499;">DIVERSE NETWORK</h5>
            <p style="color: #aaaaaa;">Partnered with colleges, NGOs, and corporates to widen outreach and impact.</p>
        </div>
    </div>

    <!-- Card 3 -->
    <div class="row align-items-center mb-5 feature-card">
        <div class="col-md-6">
            <img src="Assets/icon-tools.jpg" alt="Tools" class="img-fluid rounded shadow-sm" style="max-height: 320px; width: 100%; object-fit: cover;" />
        </div>
        <div class="col-md-6 ps-md-5">
            <h5 class="fw-bold mb-2" style="color: #94b499;">POWERFUL TOOLS</h5>
            <p style="color: #aaaaaa;">Seamless event creation, duty assignment, attendance & tracking in one place.</p>
        </div>
    </div>

    <!-- Card 4 -->
    <div class="row align-items-center mb-5 feature-card flex-md-row-reverse">
        <div class="col-md-6">
            <img src="Assets/icon-transparency.jpg" alt="Transparency" class="img-fluid rounded shadow-sm" style="max-height: 320px; width: 100%; object-fit: cover;" />
        </div>
        <div class="col-md-6 pe-md-5 text-md-end">
            <h5 class="fw-bold mb-2" style="color: #94b499;">TRANSPARENCY</h5>
            <p style="color: #aaaaaa;">Every role sees what matters. Live updates and transparent communication.</p>
        </div>
    </div>
</section>


<!-- CTA Section -->
<section class="py-5 text-center" style="background-color: #f9f9f9;">
    <h4 class="fw-bold" style="color: #3f3250;">Join the Movement. Make Every Event Matter.</h4>
    <p style="color: #263d10">Whether you’re here to participate, volunteer, or organize, EventSphere is your trusted partner for success.</p>
   <p class="mt-3" style="color: #263d10">Ready to create, participate, or volunteer? Navigate to your role and start impacting today.</p>

</section>
</asp:Content>
