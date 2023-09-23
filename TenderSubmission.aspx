<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TenderSubmission.aspx.cs" Inherits="SPC_webSystem.TenderSubmission" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" <img src="img/TenderIcon.jpg" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                   <h4>Tender Proposal Submission</h4>
                                </center>
                            </div>
                        </div>
                      
                        <div class="row">
                            <div class="col">
                                </hr>
                            </div>
                        </div>

                         <div class="row">
                              <div class="col-md-4">
                               <label>Tender No</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8"
                                        runat="server" placeholder="No"></asp:TextBox>

                                     <asp:Button class="btn btn-secondary" ID="Button2" 
                                         runat="server" Text="Go" />
                                        </div>
                            </div>
                                </div>

                            <div class="col-md-8">
                            <label>Attach File</label>
                            <asp:FileUpload class="form-control" ID="FileUpload1" runat="server" />
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-6">
                                <asp:Button class="btn btn-primary btn-block" 
                                    runat="server" Text="Add" />      
                        </div>

                            <div class="col-6">
                                <asp:Button class="btn btn-danger btn-block" 
                                    runat="server" Text="Delete" />      
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
                                    
                            </div>
                                    </center>
                             </div>
                              </div>

                    </div>
                        </div>

                    </div>
                
        <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                     <h4>Tender List</h4>
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
      
        <br />
                <a href="Home.aspx">< Back to Homepage</a>
        <br />
        <br />
            </div>


</asp:Content>
