<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="DrugAbuseAlertSystem.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h2 class="text-center">Reports</h2>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>Latitude</th>
                <th>Longitude</th>
                <th>Type</th>
                <th>Timestamp</th>
            </tr>
        </thead>
        <tbody>
            <%-- Backend populates rows dynamically --%>
        </tbody>
    </table>

</asp:Content>
