<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SupplierProfile.aspx.cs" Inherits="SPC_webSystem.SupplierProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="img/Usericon.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                   <h4>Your Profile</h4>
                                    <span>Account Status - </span>
                                    <asp:Label  class="badge badge-pill badge-info" ID="Label1" 
                                        runat="server" Text="Status"></asp:Label>

                                </center>
                            </div>
                        </div>
                      
                        <div class="row">
                            <div class="col">
                                </hr>
                            </div>
                        </div>


                         <div class="row">
                            <div class="col-md-6">
                               <label>Supplier Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1"
                                        runat="server" placeholder="Supplier Name"></asp:TextBox>
                            </div>
                                </div>
                             <div class="col-md-6">
                               <label>Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2"
                                        runat="server" placeholder="Contact Number" TextMode="Number"></asp:TextBox>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                               
                            </div>
                            </div>
                             </div>

                         <div class="row">
                            <div class="col-md-6">
                               <label>Email</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3"
                                        runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                            </div>
                                </div>
                             <div class="col-md-6">
                               <label>Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4"
                                        runat="server" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                               
                            </div>
                            </div>
                             </div>

                          <div class="row">
                            <div class="col">
                                 <center>
                                <span class="badge badge-pill badge-info">Login Details</span>
                                       </center>
                             </div>
                                
                              </div>

                         <div class="row">
                            <div class="col-md-4">
                               <label>Username</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5"
                                        runat="server" placeholder="Username" ReadOnly="True"></asp:TextBox>
                            </div>
                                </div>

                             <div class="col-md-4">
                               <label>Current Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6"
                                        runat="server" placeholder="Password" TextMode="Password"
                                        ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>

                             <div class="col-md-4">
                               <label>New Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7"
                                        runat="server" placeholder="Password" TextMode="Password"
                                        ></asp:TextBox>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                               
                            </div>
                            </div>
                             </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                 <div class="form-group">
                                     <asp:Button class="btn btn-primary btn-lg" ID="Button1" 
                                         runat="server" Text="Update" />
                            </div>
                                    </center>
                             </div>
                              </div>

                    </div>
                        </div>

                    </div>
                
        <div class="col-md-6">

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="80px" src="img/TenderIcon.jpg" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                   <h4>Your Tenders</h4>
                                    <asp:Label  class="badge badge-pill badge-info" ID="Label2" 
                                        runat="server" Text="Tender Status"></asp:Label>

                                </center>
                            </div>
                        </div>
                      
                        <div class="row">
                            <div class="col">
                                </hr>
                            </div>
                        </div>

                          <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" 
                                    ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>


                    </div>
                        </div>

                    </div>
        </div>

                <a href="Home.aspx">< Back to Homepage</a>
            </div>


</asp:Content>
