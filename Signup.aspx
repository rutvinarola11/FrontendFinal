<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Authentication.Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container mt-5">
        <h2 class="text-center text-primary fw-bold mb-4">Sign Up</h2>

        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6">
                <div class="card shadow p-4 border-0 rounded-4">
                    <asp:Label ID="lblMessage" runat="server" CssClass="text-danger fw-semibold mb-3 d-block" />

                    <div class="mb-3">
                        <label class="form-label">Full Name:</label>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName"
                            ErrorMessage="Name is required" CssClass="text-danger" Display="Dynamic" />
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Email:</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                            ErrorMessage="Email is required" CssClass="text-danger" Display="Dynamic" />
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                            ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
                            ErrorMessage="Invalid email format" CssClass="text-danger" Display="Dynamic" />
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Password:</label>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                            ErrorMessage="Password is required" CssClass="text-danger" Display="Dynamic" />
                        <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword"
                            ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$"
                            ErrorMessage="Min 8 chars with number" CssClass="text-danger" Display="Dynamic" />
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Confirm Password:</label>
                        <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" CssClass="form-control" />
                        <asp:CompareValidator ID="cvPassword" runat="server" ControlToValidate="txtConfirm"
                            ControlToCompare="txtPassword" ErrorMessage="Passwords do not match"
                            CssClass="text-danger" Display="Dynamic" />
                    </div>

                    <div class="mb-3">
                        <label class="form-label">User Role:</label>
                        <asp:DropDownList ID="ddlRole" runat="server" CssClass="form-select">
                            <asp:ListItem Text="--Select Role--" Value="" />
                            <asp:ListItem Text="Participant" Value="Participant" />
                            <asp:ListItem Text="Organizer" Value="Organizer" />
                            <asp:ListItem Text="Volunteer" Value="Volunteer" />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvRole" runat="server" ControlToValidate="ddlRole"
                            InitialValue="" ErrorMessage="Please select a role" CssClass="text-danger" Display="Dynamic" />
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Security Question:</label>
                        <asp:DropDownList ID="ddlSecurityQuestion" runat="server" CssClass="form-select">
                            <asp:ListItem Text="--Select Question--" Value="" />
                            <asp:ListItem Text="Your favorite color?" Value="color" />
                            <asp:ListItem Text="Your pet’s name?" Value="pet" />
                            <asp:ListItem Text="Your mother’s name?" Value="mother" />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvQuestion" runat="server" ControlToValidate="ddlSecurityQuestion"
                            InitialValue="" ErrorMessage="Select a question" CssClass="text-danger" Display="Dynamic" />
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Security Answer:</label>
                        <asp:TextBox ID="txtSecurityAnswer" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="rfvAnswer" runat="server" ControlToValidate="txtSecurityAnswer"
                            ErrorMessage="Answer is required" CssClass="text-danger" Display="Dynamic" />
                    </div>

                    <div class="text-center">
                        <asp:Button ID="btnGenerateOtp" runat="server" Text="Sign Up" CssClass="btn btn-primary fw-semibold" OnClick="GenerateOtp_Click" />
                    </div>

                    <asp:HiddenField ID="hdnOtp" runat="server" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>
