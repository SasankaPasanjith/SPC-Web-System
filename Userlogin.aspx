﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Userlogin.aspx.cs" Inherits="SPC_webSystem.Userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="img/Usericon.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                   <h3>User Login</h3>
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
                                <label>User Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1"
                                        runat="server" placeholder="User Name"></asp:TextBox>
                            </div>

                                 <label>User Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2"
                                        runat="server" placeholder="Password" 
                                        TextMode="Password"></asp:TextBox>
                            </div>

                                 <div class="form-group">
                                     <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" 
                                         runat="server" Text="Login" OnClick="Button1_Click" />
                            </div>

                                     <div class="form-group">
                                     <a href="signupSupplier.aspx"> <input class="btn btn-info btn-block btn-lg" id="Button2"
                                         type="button" value="Sign-Up" /></a>
                            </div>

                            </div>
                        </div>

                    </div>
                </div>

                <a href="Home.aspx">< Back to Homepage</a>
            </div>
        </div>
    </div>
    <br />
    <br />

</asp:Content>
