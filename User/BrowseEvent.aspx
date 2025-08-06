<%@ Page Title="Browse Events" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BrowseEvents.aspx.cs" Inherits="Authentication.User.BrowseEvents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- 🔴 Page Heading -->
    <h2 class="text-center text-danger my-4">Browse Events</h2>

    <!-- 🔎 Filters Section -->
    <div class="container bg-light rounded shadow p-4 mb-4">
        <div class="row g-3">
            <div class="col-md-4">
                <label for="ddlCategory" class="form-label">Category:</label>
                <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-select" AutoPostBack="true" OnSelectedIndexChanged="Filter_Changed" />
            </div>
            <div class="col-md-4">
                <label for="txtLocation" class="form-label">Location:</label>
                <asp:TextBox ID="txtLocation" runat="server" CssClass="form-control" />
            </div>
            <div class="col-md-4">
                <label for="ddlStatus" class="form-label">Status:</label>
                <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-select" AutoPostBack="true" OnSelectedIndexChanged="Filter_Changed">
                    <asp:ListItem Text="All" Value="All" />
                    <asp:ListItem Text="Upcoming" Value="Upcoming" />
                    <asp:ListItem Text="Ongoing" Value="Ongoing" />
                    <asp:ListItem Text="Completed" Value="Completed" />
                </asp:DropDownList>
            </div>
            <div class="col-12 d-flex justify-content-end">
                <asp:Button ID="btnFilter" runat="server" Text="Apply Filters" CssClass="btn submit-button me-2" OnClick="Filter_Changed" />
                <asp:Button ID="btnClear" runat="server" Text="Clear Filters" CssClass="btn submit-button" OnClick="btnClear_Click" />
            </div>
        </div>
    </div>

    <!-- 🧾 Events Grid -->
    <div class="container">
        <div class="row row-cols-1 row-cols-md-2 g-4">
            <asp:Repeater ID="rptEvents" runat="server" OnItemCommand="rptEvents_ItemCommand">
                <ItemTemplate>
                    <div class="col">
                        <div class="card h-100 shadow-sm">
                            <!-- Event Banner -->
                            <img src='<%# ResolveUrl(Eval("EventBanner").ToString()) %>' class="card-img-top" alt="Event Banner" style="height: 200px; object-fit: cover;" />

                            <div class="card-body d-flex flex-column">
                                <h5 class="card-title"><%# Eval("Title") %></h5>
                                <p class="card-text text-truncate"><%# Eval("Description") %></p>
                                <p class="text-muted"><strong>Date:</strong> <%# Eval("Date", "{0:MMMM dd, yyyy}") %></p>

                                <!-- 🔘 Common View Details Button -->
                                <asp:Button runat="server" Text="View Details" CommandName="ViewDetails"
                                    CommandArgument='<%# Eval("EventID") %>' CssClass="btn btn-outline-primary mb-2" />

                                <!-- 🟢 Volunteer Buttons -->
                                <asp:PlaceHolder ID="phVolunteerButtons" runat="server"
                                    Visible='<%# Session["Role"] != null && Session["Role"].ToString() == "Volunteer" %>'>
                                    <asp:Button runat="server" Text="Register" CommandName="Register"
                                        CommandArgument='<%# Eval("EventID") %>' CssClass="btn btn-success mb-2 me-2" />
                                </asp:PlaceHolder>

                                <!-- 🟡 Participant Buttons -->
                                <asp:PlaceHolder ID="phParticipantButtons" runat="server"
                                    Visible='<%# Session["Role"] != null && Session["Role"].ToString() == "Participant" %>'>
                                    <asp:Button runat="server" Text="Apply As Participant" CommandName="Apply"
                                        CommandArgument='<%# Eval("EventID") %>' CssClass="btn btn-warning mb-2 me-2" />
                                    <asp:Button runat="server" Text="Add as Bookmark" CommandName="Bookmark"
                                        CommandArgument='<%# Eval("EventID") %>' CssClass="btn btn-outline-secondary mb-2" />
                                </asp:PlaceHolder>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>

        <!-- ❌ No Results Label -->
        <asp:Label ID="lblNoEvents" runat="server" Text="No events available for the selected filters."
            Visible="false" CssClass="text-center text-danger fw-bold d-block my-4" />
    </div>

    <!-- 🔙 Back to Dashboard -->
    <div class="text-center my-4">
        <asp:Button ID="btnBack" runat="server" Text="Back to Dashboard" CssClass="btn btn-outline-dark" PostBackUrl="~/User/UserDashboard.aspx" />
    </div>

</asp:Content>
