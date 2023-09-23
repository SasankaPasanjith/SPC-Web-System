<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signupSupplier.aspx.cs" Inherits="SPC_webSystem.signupUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">

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
                                   <h3>Supplier Sign-Up</h3>
                                </center>
                            </div>
                        </div>
                      
                        <div class="row">
                            <div class="col">
                           
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
                            <div class="col-md-6">
                               <label>Username</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5"
                                        runat="server" placeholder="Username"></asp:TextBox>
                            </div>
                                </div>
                             <div class="col-md-6">
                               <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6"
                                        runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                               
                            </div>
                            </div>
                             </div>

                        <div class="row">
                            <div class="col">
                                 <div class="form-group">
                                     <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" 
                                         runat="server" Text="Sign-Up" OnClick="Button1_Click" />
                            </div>
                             </div>
                              </div>

                    </div>
                        </div>

                    </div>
                </div>

                <a href="Home.aspx">< Back to Homepage</a>
            </div>
    <br />

</asp:Content>
