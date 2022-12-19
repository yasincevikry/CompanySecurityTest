<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CompanyLogin.aspx.cs" Inherits="CompanySecurityTest.CompanyLogin" %>

<asp:Content ID="Content" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="MainContentPlaceholder" ContentPlaceHolderID="MainContentPlaceholder" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="Images/generaluser.png" width="150px" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Company Login</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>E-Mail Address</label>
                                <div class="form-group">
                                    <asp:TextBox required="true" CssClass="form-control" ID="txtEmail" runat="server" placeholder="Enter your E-Mail"></asp:TextBox>
                                </div>

                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox required="true" CssClass="form-control" ID="txtPassword" runat="server" placeholder="Enter your Password" TextMode="Password"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click1" />

                                </div>

                                <div class="form-group">
                                    <a href="CompanySignup.aspx">
                                        <input class="btn btn-info btn-block btn-lg" id="btnSignUp" type="button" value="Dont have account yet? Sign Up!" />
                                </div>

                            </div>
                        </div>


                    </div>
                    <a href="Home.aspx"><--- Back to home</a>
                </div>
                <br>
                <br>
                <br>                
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>

            </div>
        </div>
    </div>

</asp:Content>