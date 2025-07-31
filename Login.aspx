<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Authentication.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <h2 class="text-center text-danger mb-4 fw-bold">Login to EventSphere</h2>

        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card shadow-sm p-4 border-0 rounded-4">
                    <div class="mb-3">
                        <label for="txtEmail" class="form-label">Email:</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                            ErrorMessage="Email is required" ForeColor="Red" Display="Dynamic" CssClass="form-text text-danger" />
                    </div>

                    <div class="mb-3">
                        <label for="txtPassword" class="form-label">Password:</label>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                            ErrorMessage="Password is required" ForeColor="Red" Display="Dynamic" CssClass="form-text text-danger" />
                    </div>

                    <div class="d-grid gap-2 mb-2">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary fw-semibold" OnClick="btnLogin_Click" />
                    </div>

                    <div class="d-grid gap-2 mb-3">
                        <asp:Button ID="btnForgotPassword" runat="server" Text="Forgot Password?" CssClass="btn btn-outline-secondary" OnClick="btnForgotPassword_Click" CausesValidation="false" />
                    </div>

                    <asp:Label ID="lblError" runat="server" ForeColor="Red" Font-Bold="true" CssClass="text-center d-block"></asp:Label>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
