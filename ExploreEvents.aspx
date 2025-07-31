<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ExploreEvents.aspx.cs" Inherits="Authentication.ExploreEvents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<section class="container py-5">
    <h4 class="fw-bold mb-4" style="color: #94b499;">Explore by Category</h4>

    <!-- Row 1 -->
    <div class="row">
        <!-- Tree Plantation -->
        <div class="col-md-4 mb-4">
            <div class="card border-0 shadow h-100 feature-card">
                <img src="Assets/tree-thumb.jpg" class="card-img-top" alt="Tree Plantation" style="max-height: 260px; object-fit: cover;" />
                <div class="card-body text-center">
                    <h5 class="fw-bold" style="color: #fa7070;">Tree Plantation</h5>
                    <p style="color: #aaaaaa;">Promoting green spaces and community participation through plantation drives.</p>
                    <a href="#" class="submit-button btn btn-sm" data-bs-toggle="modal" data-bs-target="#treeModal">View More</a>
                </div>
            </div>
        </div>

        <!-- Health & Wellness -->
        <div class="col-md-4 mb-4">
            <div class="card border-0 shadow h-100 feature-card">
                <img src="Assets/health-thumb.jpg" class="card-img-top" alt="Health & Wellness" style="max-height: 260px; object-fit: cover;" />
                <div class="card-body text-center">
                    <h5 class="fw-bold" style="color: #fa7070;">Health & Wellness</h5>
                    <p style="color: #aaaaaa;">Medical camps, blood donations, and wellness workshops for the community.</p>
                    <a href="#" class="submit-button btn btn-sm" data-bs-toggle="modal" data-bs-target="#healthModal">View More</a>
                </div>
            </div>
        </div>

        <!-- Education & Awareness -->
        <div class="col-md-4 mb-4">
            <div class="card border-0 shadow h-100 feature-card">
                <img src="Assets/education-thumb.jpg" class="card-img-top" alt="Education & Awareness" style="max-height: 260px; object-fit: cover;" />
                <div class="card-body text-center">
                    <h5 class="fw-bold" style="color: #fa7070;">Education & Awareness</h5>
                    <p style="color: #aaaaaa;">Workshops, tutoring, and awareness campaigns across communities.</p>
                    <a href="#" class="submit-button btn btn-sm" data-bs-toggle="modal" data-bs-target="#educationModal">View More</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Row 2 -->
    <div class="row">
        <!-- Cleanliness & Environment -->
        <div class="col-md-4 mb-4">
            <div class="card border-0 shadow h-100 feature-card">
                <img src="Assets/cleanliness-thumb.jpg" class="card-img-top" alt="Cleanliness & Environment" style="max-height: 260px; object-fit: cover;" />
                <div class="card-body text-center">
                    <h5 class="fw-bold" style="color: #fa7070;">Cleanliness & Environment</h5>
                    <p style="color: #aaaaaa;">Neighborhood clean-up drives, waste awareness, and eco initiatives.</p>
                    <a href="#" class="submit-button btn btn-sm" data-bs-toggle="modal" data-bs-target="#cleanModal">View More</a>
                </div>
            </div>
        </div>

        <!-- Tech Fest -->
        <div class="col-md-4 mb-4">
            <div class="card border-0 shadow h-100 feature-card">
                <img src="Assets/tech-thumb.jpg" class="card-img-top" alt="Tech Fest" style="max-height: 260px; object-fit: cover;" />
                <div class="card-body text-center">
                    <h5 class="fw-bold" style="color: #fa7070;">Tech Fest</h5>
                    <p style="color: #aaaaaa;">Celebrate innovation with coding, exhibitions, and student projects.</p>
                    <a href="#" class="submit-button btn btn-sm" data-bs-toggle="modal" data-bs-target="#techModal">View More</a>
                </div>
            </div>
        </div>

        <!-- Music Fest -->
        <div class="col-md-4 mb-4">
            <div class="card border-0 shadow h-100 feature-card">
                <img src="Assets/music-thumb.jpg" class="card-img-top" alt="Music Fest" style="max-height: 260px; object-fit: cover;" />
                <div class="card-body text-center">
                    <h5 class="fw-bold" style="color: #fa7070;">Music Fest</h5>
                    <p style="color: #aaaaaa;">Uniting communities through rhythm, beats, and soul-lifting music.</p>
                    <a href="#" class="submit-button btn btn-sm" data-bs-toggle="modal" data-bs-target="#musicModal">View More</a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Modals Section -->
<!-- Tree Modal -->
<%-- Repeat similar structure for all 6 modals --%>
<div class="modal fade" id="treeModal" tabindex="-1" aria-labelledby="treeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl modal-dialog-centered">
        <div class="modal-content bg-dark text-light">
            <div class="modal-header border-0">
                <h5 class="modal-title fw-bold" id="treeModalLabel" style="color: #94b499;">Tree Plantation Highlights</h5>
                <button type="button" class="btn-close bg-light" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body pb-4">
                <div class="row g-4">
                    <div class="col-md-4"><img src="Assets/tree1.jpg" class="img-fluid rounded shadow-sm" alt="Tree Event 1" /></div>
                    <div class="col-md-4"><img src="Assets/tree2.jpg" class="img-fluid rounded shadow-sm" alt="Tree Event 2" /></div>
                    <div class="col-md-4"><img src="Assets/tree3.jpg" class="img-fluid rounded shadow-sm" alt="Tree Event 3" /></div>
                </div>
                <p class="mt-4 text-muted">Join hundreds of volunteers who helped grow green spaces in cities.</p>
            </div>
        </div>
    </div>
</div>

<!-- Health Modal -->
<div class="modal fade" id="healthModal" tabindex="-1" aria-labelledby="healthModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl modal-dialog-centered">
        <div class="modal-content bg-dark text-light">
            <div class="modal-header border-0">
                <h5 class="modal-title fw-bold" id="healthModalLabel" style="color: #94b499;">Health & Wellness Highlights</h5>
                <button type="button" class="btn-close bg-light" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body pb-4">
                <div class="row g-4">
                    <div class="col-md-4"><img src="Assets/health1.jpg" class="img-fluid rounded shadow-sm" alt="Health Event 1" /></div>
                    <div class="col-md-4"><img src="Assets/health2.jpg" class="img-fluid rounded shadow-sm" alt="Health Event 2" /></div>
                    <div class="col-md-4"><img src="Assets/health3.jpg" class="img-fluid rounded shadow-sm" alt="Health Event 3" /></div>
                </div>
                <p class="mt-4 text-muted">Accessible health services for all — thanks to our medical heroes.</p>
            </div>
        </div>
    </div>
</div>

<!-- Education Modal -->
<div class="modal fade" id="educationModal" tabindex="-1" aria-labelledby="educationModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl modal-dialog-centered">
        <div class="modal-content bg-dark text-light">
            <div class="modal-header border-0">
                <h5 class="modal-title fw-bold" id="educationModalLabel" style="color: #94b499;">Education & Awareness Highlights</h5>
                <button type="button" class="btn-close bg-light" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body pb-4">
                <div class="row g-4">
                    <div class="col-md-4"><img src="Assets/education1.jpg" class="img-fluid rounded shadow-sm" alt="Education Event 1" /></div>
                    <div class="col-md-4"><img src="Assets/education2.jpg" class="img-fluid rounded shadow-sm" alt="Education Event 2" /></div>
                    <div class="col-md-4"><img src="Assets/education3.jpg" class="img-fluid rounded shadow-sm" alt="Education Event 3" /></div>
                </div>
                <p class="mt-4 text-muted">Empowering lives through the light of knowledge and awareness.</p>
            </div>
        </div>
    </div>
</div>

<!-- Clean Modal -->
<div class="modal fade" id="cleanModal" tabindex="-1" aria-labelledby="cleanModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl modal-dialog-centered">
        <div class="modal-content bg-dark text-light">
            <div class="modal-header border-0">
                <h5 class="modal-title fw-bold" id="cleanModalLabel" style="color: #94b499;">Cleanliness & Environment Highlights</h5>
                <button type="button" class="btn-close bg-light" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body pb-4">
                <div class="row g-4">
                    <div class="col-md-4"><img src="Assets/clean1.jpg" class="img-fluid rounded shadow-sm" alt="Clean Event 1" /></div>
                    <div class="col-md-4"><img src="Assets/clean2.jpg" class="img-fluid rounded shadow-sm" alt="Clean Event 2" /></div>
                    <div class="col-md-4"><img src="Assets/clean3.jpg" class="img-fluid rounded shadow-sm" alt="Clean Event 3" /></div>
                </div>
                <p class="mt-4 text-muted">Volunteers uniting for a cleaner and greener tomorrow.</p>
            </div>
        </div>
    </div>
</div>

<!-- Tech Modal -->
<div class="modal fade" id="techModal" tabindex="-1" aria-labelledby="techModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl modal-dialog-centered">
        <div class="modal-content bg-dark text-light">
            <div class="modal-header border-0">
                <h5 class="modal-title fw-bold" id="techModalLabel" style="color: #94b499;">Tech Fest Highlights</h5>
                <button type="button" class="btn-close bg-light" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body pb-4">
                <div class="row g-4">
                    <div class="col-md-4"><img src="Assets/tech-1.jpg" class="img-fluid rounded shadow-sm" alt="Tech Event 1" /></div>
                    <div class="col-md-4"><img src="Assets/tech-2.jpg" class="img-fluid rounded shadow-sm" alt="Tech Event 2" /></div>
                    <div class="col-md-4"><img src="Assets/tech-3.jpg" class="img-fluid rounded shadow-sm" alt="Tech Event 3" /></div>
                </div>
                <p class="mt-4 text-muted">Inspiring innovation through code, collaboration, and creativity.</p>
            </div>
        </div>
    </div>
</div>

<!-- Music Modal -->
<div class="modal fade" id="musicModal" tabindex="-1" aria-labelledby="musicModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl modal-dialog-centered">
        <div class="modal-content bg-dark text-light">
            <div class="modal-header border-0">
                <h5 class="modal-title fw-bold" id="musicModalLabel" style="color: #94b499;">Music Fest Highlights</h5>
                <button type="button" class="btn-close bg-light" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body pb-4">
                <div class="row g-4">
                    <div class="col-md-4"><img src="Assets/music-1.jpg" class="img-fluid rounded shadow-sm" alt="Music Event 1" /></div>
                    <div class="col-md-4"><img src="Assets/music-2.jpg" class="img-fluid rounded shadow-sm" alt="Music Event 2" /></div>
                    <div class="col-md-4"><img src="Assets/music-3.jpg" class="img-fluid rounded shadow-sm" alt="Music Event 3" /></div>
                </div>
                <p class="mt-4 text-muted">Feel the rhythm, share the harmony — our musical celebration.</p>
            </div>
        </div>
    </div>
</div>

</asp:Content>
