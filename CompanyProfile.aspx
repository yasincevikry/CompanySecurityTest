<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CompanyProfile.aspx.cs" Inherits="CompanySecurityTest.CompanyProfile" %>

<asp:Content ID="Content" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="MainContenPlaceholder" ContentPlaceHolderID="MainContentPlaceholder" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">

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
                                    <h4>Your Company Profile</h4>
                                    <span>Account Status - </span>
                                    <asp:Label class="badge badge-pill badge-success" ID="lblActive" runat="server" Text="Active"></asp:Label>
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
                                    <asp:TextBox CssClass="form-control" ID="txtCompanyName" runat="server" placeholder="Enter Company Name"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Company Area</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtCompanyArea" runat="server" placeholder="Enter Company Area"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Company City</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtCompanyCity" runat="server" placeholder="Enter Company City"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Company District</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtCompanyDistrict" runat="server" placeholder="Enter Company District"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <label>Company Country</label>
                                <div class="form-group">
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
                                    <asp:TextBox CssClass="form-control" ID="txtContact" runat="server" placeholder="Enter Contact" TextMode="Phone"></asp:TextBox>
                                </div>
                            </div>


                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Description</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtDescription" runat="server" placeholder="Enter Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
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
                            <div class="col-md-4">
                                <label>E-Mail</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server" placeholder="Cannot be changed" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Current Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtPassword" runat="server" placeholder="This is secret information" ReadOnly="True" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>New Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtNewPassword" runat="server" placeholder="Enter New Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-8 mx-auto">
                                <center>
                                    <div class="form-group">
                                        <asp:Button class="btn btn-warning btn-block btn-lg" ID="btnVisualizeOldInformation" runat="server" Text="Visualize Old Informations" OnClick="btnVisualizeOldInformation_Click" />
                                    </div>
                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-8 mx-auto">
                                <center>
                                    <div class="form-group">
                                        <asp:Button class="btn btn-primary btn-block btn-lg" ID="btnUpdate" runat="server" Text="Update Informations" OnClick="btnUpdate_Click" />
                                    </div>
                                </center>
                            </div>
                        </div>

                        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>

                    </div>
                    <a href="Home.aspx"><--- Back to home</a>
                </div>
                <br>
                <br>
            </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="Images/tycyber.png" width="100px" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Mitre Attacks you've already tried</h4>

                                    <asp:Label class="badge badge-pill badge-success" ID="lblMitreAttacks" runat="server" Text="Mitre Attacks"></asp:Label>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="dsAttackReports" runat="server" ConnectionString="<%$ ConnectionStrings:CompanySecurityTestConnectionString %>" SelectCommand="SELECT [AttackResult], [AttackType] FROM [AttackOutcomes]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-dark table-striped" ID="IdProfile" runat="server" AutoGenerateColumns="False" DataSourceID="dsAttackReports">
                                    <Columns>
                                        <asp:BoundField DataField="AttackResult" HeaderText="AttackResult" SortExpression="AttackResult" />
                                        <asp:BoundField DataField="AttackType" HeaderText="AttackType" SortExpression="AttackType" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

</asp:Content>
