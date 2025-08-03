<%@ Page Title="Forgot Password" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Authentication.ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-5">
                <div class="card shadow-lg border-0">
                    <div class="card-header bg-danger text-white text-center fw-bold fs-4">
                        Forgot Password
                    </div>
                    <div class="card-body">
                        <div class="mb-3">
                            <label for="txtEmail" class="form-label">Email</label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                                ErrorMessage="Email is required" CssClass="text-danger" Display="Dynamic" />
                        </div>

                        <div class="mb-3">
                            <label for="ddlSecurityQuestion" class="form-label">Security Question</label>
                            <asp:DropDownList ID="ddlSecurityQuestion" runat="server" CssClass="form-select" AppendDataBoundItems="true">
                                <asp:ListItem Text="--Select Question--" Value="" />
                                <asp:ListItem Text="What is your favorite color?" Value="What is your favorite color?" />
                                <asp:ListItem Text="What is your pet’s name?" Value="What is your pet’s name?" />
                                <asp:ListItem Text="What is your mother’s name?" Value="What is your mother’s name?" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvSecurityQuestion" runat="server" ControlToValidate="ddlSecurityQuestion"
                                InitialValue="" ErrorMessage="* Required" CssClass="text-danger" Display="Dynamic" />
                        </div>

                        <div class="mb-3">
                            <label for="txtAnswer" class="form-label">Answer</label>
                            <asp:TextBox ID="txtAnswer" runat="server" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="rfvAnswer" runat="server" ControlToValidate="txtAnswer"
                                ErrorMessage="* Required" CssClass="text-danger" Display="Dynamic" />
                        </div>

                        <div class="mb-3">
                            <label for="txtNewPassword" class="form-label">New Password</label>
                            <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="rfvNewPassword" runat="server" ControlToValidate="txtNewPassword"
                                ErrorMessage="* Required" CssClass="text-danger" Display="Dynamic" />
                        </div>

                        <div class="d-grid mt-4">
                            <asp:Button ID="btnResetPassword" runat="server" Text="Reset Password"
                                CssClass="btn btn-danger fw-semibold" OnClick="btnResetPassword_Click" />
                        </div>

                        <div class="mt-3 text-center">
                            <asp:Label ID="lblMessage" runat="server" CssClass="fw-bold text-danger" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
