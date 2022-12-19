<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MitreAttack.aspx.cs" Inherits="CompanySecurityTest.MitreAttack" %>
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
                                    <img src="Images/ATT&CK_red.png" width="100px" />
                                    <br>
                                    <br>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Choose Mittre Attack</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-8 mx-auto">
                                <center>
                                    <label>Mitre Attack</label>
                                    <div class="form-group">

                                        <asp:DropDownList ID="ddlMitreAttack" class="form-control" runat="server">
                                            <asp:ListItem Text="Selected Mitre Attack" Value="select" />
                                            <asp:ListItem Text="Network Service Discovery" Value="Network Service Discovery" />
                                            <asp:ListItem Text="Create Account – Local Account" Value="Create Account – Local Account" />
                                        </asp:DropDownList>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <div class="form-group">
                                                <asp:Button class="btn btn-success btn-block btn-lg" ID="btnApply" OnClick="btnApply_Click" runat="server" Text="Apply" />
                                            </div>
                                        </div>
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="Home.aspx"><--- Back to home</a>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
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
