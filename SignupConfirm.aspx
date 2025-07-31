<%@ Page Title="OTP Verification" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SignupConfirm.aspx.cs" Inherits="Authentication.SignupConfirm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card shadow p-4 border-0 rounded-4">

                    <h3 class="text-center text-danger mb-4 fw-bold">OTP Verification</h3>

                    <asp:Label ID="lblOtpMessage" runat="server" CssClass="text-danger text-center d-block fw-semibold mb-3" />

                    <p class="text-center mb-3">
                        Your OTP is:
                        <strong id="otpValue" class="text-dark"><%= Session["OTP"] %></strong>
                    </p>

                    <div class="text-center mb-3">
                        <button type="button" class="btn btn-outline-primary fw-semibold px-4" onclick="copyOTP()">Copy OTP</button>
                    </div>

                    <p class="text-center mb-2">Time remaining: <span id="timer" class="fw-semibold text-warning">60</span> seconds</p>

                    <div class="mb-3 text-center">
                        <asp:TextBox ID="txtEnteredOtp" runat="server" CssClass="form-control w-75 mx-auto" placeholder="Enter OTP here" />
                    </div>

                    <div class="text-center">
                        <asp:Button ID="btnVerify" runat="server" Text="Verify OTP" CssClass="btn btn-primary fw-semibold" OnClick="btnVerify_Click" />
                    </div>

                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        window.onload = function () {
            let timeLeft = 60;
            const timerElement = document.getElementById("timer");

            const countdown = setInterval(() => {
                timeLeft--;
                if (timerElement) timerElement.textContent = timeLeft;
                if (timeLeft <= 0) {
                    clearInterval(countdown);
                    alert("OTP Expired");
                    window.location.href = "Signup.aspx";
                }
            }, 1000);
        };

        function copyOTP() {
            var otpText = document.getElementById("otpValue")?.textContent || "";
            var input = document.getElementById("<%= txtEnteredOtp.ClientID %>");
            if (input && otpText) {
                input.value = otpText.trim();
                input.focus();
            }
        }
    </script>

</asp:Content>
