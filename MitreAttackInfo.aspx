<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MitreAttackInfo.aspx.cs" Inherits="CompanySecurityTest.MitreAttackInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceholder" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 mx-auto">

                <div class="card">
                    <div class="card-body">
                        <center>
                            <h2>General MITRE Attack Information</h2>
                            <img src="Images/ATT&CK_red.png" width="120px" height="120px"/>
                            <p>
                                Cyber security is the practice of protecting computers, servers, mobile devices,
                                electronic systems, networks and data from malicious attacks. In the current century, as a result
                                of the development of software and its use almost everywhere, cyber security has become very
                                important element for ensuring security. MITRE Attack is a cyber security method created to
                                document malicious user behaviours that want to harm the network and the system. MITRE
                                Attack is a knowledge base of techniques, tactics, and procedures that describe actions taken by
                                an attacker while operating within a corporate network. In this preparation, how the cyber
                                security of websites and pages in ensured with MITRE Attack will be examined
                            </p>
                        </center>
                    </div>
                </div>
            </div>


            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <center>
                            <h4>Network Service Discovery</h4>
                            <img src="Images/NetworkServiceDiscovery.png" width="120px" height="120px"/>
                            <p>
                                Attackers are remote, vulnerable, and vulnerable to software exploitation.
                                remote hosts and local network infrastructure, along with internal computers that may be
                                malicious intent to obtain a list of services running on their device
                                may try to use it. Familiar methods of obtaining the information in these lists
                                port or vulnerability using tools brought into a system
                                scans are included.
                            </p>
                        </center>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <center>
                            <h4>Create Account – Local Account</h4>
                            <img src="Images/CreateAccountLocalAccount.png" width="120px" height="120px"/>
                            <p>
                                Attackers can create a local account to maintain access to victim systems.
                                Local accounts for use by an organization, providing remote support, and administration in the service
                                are configured to be used on their behalf. A local account with sufficient access
                                "net user / add" command can be used to create (local account on macOS systems
                                The command “dscl -create” can be used to create it.)
                            </p>
                        </center>
                    </div>
                </div>
            </div>

        </div>
    </div>



</asp:Content>
