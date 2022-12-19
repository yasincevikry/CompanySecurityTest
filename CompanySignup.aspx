<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CompanySignup.aspx.cs" Inherits="CompanySecurityTest.CompanySignup" %>

<asp:Content ID="Content" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="MainContentPlaceholder" ContentPlaceHolderID="MainContentPlaceholder" runat="server">
    <%--we didnot use required field validator because it didnt work and we used required="true" --%>
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="Images/generaluser.png" width="100px" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Company Sign Up</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Company Name</label>
                                <div class="form-group">
                                    <asp:TextBox required="true" CssClass="form-control" ID="txtCompanyName" runat="server" placeholder="Enter Company Name"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Company Area</label>
                                <div class="form-group">
                                    <asp:TextBox required="true" CssClass="form-control" ID="txtCompanyArea" runat="server" placeholder="Enter Company Area"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <label>Company City</label>
                                <div class="form-group">
                                    <asp:TextBox required="true" CssClass="form-control" ID="txtCompanyCity" runat="server" placeholder="Enter Company City"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Company District</label>
                                <div class="form-group">
                                    <asp:TextBox required="true" CssClass="form-control" ID="txtCompanyDistrict" runat="server" placeholder="Enter Company District"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <label>Company Country</label>
                                <div required="true" class="form-group">
                                    <asp:DropDownList ID="ddlCountry" class="form-control" runat="server">
                                        <asp:ListItem Text="Selected Country" Value="select" />
                                        <asp:ListItem Text="Turkey" Value="Turkey" />
                                        <asp:ListItem Text="Argentina" Value="Argentina" />
                                        <asp:ListItem Text="France" Value="France" />
                                        <asp:ListItem Text="Australia" Value="Australia" />
                                        <asp:ListItem Text="Azerbaijan" Value="Azerbaijan" />
                                        <asp:ListItem Text="Brazil" Value="Brazil" />
                                        <asp:ListItem Text="Bulgaria" Value="Bulgaria" />
                                        <asp:ListItem Text="China" Value="China" />
                                        <asp:ListItem Text="Denmark" Value="Denmark" />
                                        <asp:ListItem Text="Germany" Value="Germany" />
                                        <asp:ListItem Text="Greece" Value="Greece" />
                                        <asp:ListItem Text="Italy" Value="Italy" />
                                        <asp:ListItem Text="Japan" Value="Japan" />
                                        <asp:ListItem Text="Mexico" Value="Mexico" />
                                        <asp:ListItem Text="Netherlands" Value="Netherlands" />
                                        <asp:ListItem Text="Norway" Value="Norway" />
                                        <asp:ListItem Text="Portugal" Value="Portugal" />
                                        <asp:ListItem Text="Morocco" Value="Morocco" />

                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Contact</label>
                                <div class="form-group">
                                    <asp:TextBox required="true" CssClass="form-control" ID="txtContact" runat="server" placeholder="Enter Contact" TextMode="Phone"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Description</label>
                                <div class="form-group">
                                    <asp:TextBox required="true" CssClass="form-control" ID="txtDescription" runat="server" placeholder="Enter Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <center>
                                <div class="col">
                                    <span class="badge badge-pill badge-dark">REQUIRED!!</span>
                                </div>
                            </center>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>E-Mail</label>
                                <div class="form-group">
                                    <asp:TextBox required="true" CssClass="form-control" ID="txtEmail" runat="server" placeholder="Enter E-Mail" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox required="true" CssClass="form-control" ID="txtPassword" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="btnSignUp" runat="server" Text="Sign Up" OnClick="btnSignUp_Click"/>
                                </div>
                            </div>
                        </div>

                        <asp:Label ID="lblMessage" runat="server" Text="Confirmation"></asp:Label>

                    </div>
                    <a href="Home.aspx"><--- Back to home</a>
                </div>
                <br>
            </div>
        </div>
    </div>

</asp:Content>