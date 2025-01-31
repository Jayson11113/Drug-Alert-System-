<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DrugAbuseAlertSystem.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex justify-content-center align-items-center" style="height: 100vh;">
        <div class="col-md-6 col-lg-5 col-xl-4 bg-light p-5 rounded shadow">
            <h2 class="text-center mb-4">Login</h2>
            <form method="post" action="Login.aspx">
                <div class="form-group mb-3">
                    <label for="username" class="form-label">Username:</label>
                    <input type="text" id="username" name="username" class="form-control" required />
                </div>
                <div class="form-group mb-3">
                    <label for="password" class="form-label">Password:</label>
                    <input type="password" id="password" name="password" class="form-control" required />
                </div>
                <button type="submit" class="btn system-btn-primary w-100">Login</button>
            </form>
        </div>
    </div>

   
</asp:Content>

