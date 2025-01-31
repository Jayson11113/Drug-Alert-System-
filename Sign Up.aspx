<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sign Up.aspx.cs" Inherits="DrugAbuseAlertSystem.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex justify-content-center align-items-center" style="height: 100vh;">
        <div class="col-md-6 col-lg-5 col-xl-4 bg-light p-5 rounded shadow">
            <h2 class="text-center mb-4">Sign Up</h2>
            <form method="post" action="SignUp.aspx">
                <div class="form-group mb-3">
                    <label for="username" class="form-label">Username:</label>
                    <input type="text" id="username" name="username" class="form-control" required />
                </div>
                <div class="form-group mb-3">
                    <label for="email" class="form-label">Email:</label>
                    <input type="email" id="email" name="email" class="form-control" required />
                </div>
                <div class="form-group mb-3">
                    <label for="password" class="form-label">Password:</label>
                    <input type="password" id="password" name="password" class="form-control" required />
                </div>
                <div class="form-group mb-3">
                    <label for="confirm_password" class="form-label">Confirm Password:</label>
                    <input type="password" id="confirm_password" name="confirm_password" class="form-control" required />
                </div>
                <button type="submit" class="btn system-btn-primary w-100">Sign Up</button>
            </form>
        </div>
    </div>

   

</asp:Content>
