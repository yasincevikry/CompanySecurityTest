<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CompanySecurityTest.Home" %>

<asp:Content ID="Content" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="MainContentPlaceholder" ContentPlaceHolderID="MainContentPlaceholder" runat="server">

    <div class="header">
        <header>
            <img src="Images/mitre-attack.jpg" height="350" width="650">
            <br>
            <h2 style="color: whitesmoke">Company Security Test</h2>
            <strong style="color: whitesmoke">Your best Mitre Attack Tester!</strong>
        </header>
    </div>
    <%--<div class="topNav">
        <a href="LoginForm.aspx" style="font-size:70px;"> Log In</a> &nbsp;&nbsp;&nbsp;
        <a href="SignupForm.aspx" style=" font-size:70px;"> Sign Up</a> &nbsp;&nbsp;&nbsp;
        <a href="AboutUs.html" style="font-size:70px;"> AboutUs  </a> &nbsp;&nbsp;&nbsp;
        <a href="Contacts.html" style="font-size:70px;"> Contact  </a> &nbsp;&nbsp;&nbsp;
    </div>--%>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Company Security Test</h2>
                        <p>
                            Do you want to test your company website? You are in the right place! With "Company Security
            Test", you can test your company website in seconds with MITRE Attacks!"
                        </p>
                        <p><strong>In your service... Since 2022 </strong></p>
                        <br>
                        <br>
                        <br>
                    </center>
                </div>
            </div>
            <%--<div class "row">
            <div class="col-md-6">
                <center>
                    <img src="Images/company.jpg" height="230" width="300">
                </center>
            </div>
            <div class="col-md-6">
                <center>
                    <img src="Images/company2.jpg" height="230" width="300">
                </center>
            </div>--%>
        </div>
    </section>
    <div class="footer" style="background-color: #BD4127">
        <a href="https://attack.mitre.org/" target="_blank">Mitre Attack </a>
        <a href="https://github.com/" target="_blank">GitHub </a>
        <a href="https://www.w3schools.com/" target="_blank">W3 Schools </a>
    </div>
</asp:Content>