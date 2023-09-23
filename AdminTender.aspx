<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminTender.aspx.cs" Inherits="SPC_webSystem.AdminTender" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <script type="text/javascript">
      $(document).ready(function () {
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
      });
  </script>
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
                                   <h4>Announce Tender</h4>
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
                               <label>Tender ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1"
                                        runat="server" placeholder="ID"></asp:TextBox>

                                     <asp:Button class="btn btn-secondary" ID="Button1" 
                                         runat="server" Text="Go" OnClick="Button1_Click" />
                                        </div>
                            </div>
                                </div>
                             <div class="col-md-8">
                               <label>Tender Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2"
                                        runat="server" placeholder="Tender Name"></asp:TextBox>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                               
                            </div>
                            </div>
                             </div>

                         <div class="row">
                            <div class="col-md-4">
                               <label>Closing Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3"
                                        runat="server" placeholder="Closing Date" TextMode="Date"></asp:TextBox>
                            </div>
                                </div>
                             <div class="col-md-8">
                               <label>Tender Details</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4"
                                        runat="server" placeholder="Tender Details" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>
                             </div>

                        <div class="row">
                            <div class="col-4">
                                <asp:Button class="btn btn-success btn-lg btn-block" 
                                    runat="server" Text="Add" OnClick="Unnamed1_Click" />      
                        </div>
                             <div class="col-4">
                                <asp:Button class="btn btn-primary btn-lg btn-block" 
                                    runat="server" Text="Update" OnClick="Unnamed2_Click" />      
                        </div>
                            <div class="col-4">
                                <asp:Button class="btn btn-danger btn-lg btn-block" 
                                    runat="server" Text="Delete" OnClick="Unnamed3_Click" />      
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:spcDBConnectionString %>" SelectCommand="SELECT * FROM [tender_tbl]"></asp:SqlDataSource>
                                <asp:GridView class="table table-striped table-bordered" 
                                    ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="tender_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="tender_id" HeaderText="Tender ID" ReadOnly="True" SortExpression="tender_id" />
                                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                                        <asp:BoundField DataField="closing_date" HeaderText="Closing Date" SortExpression="closing_date" />
                                        <asp:BoundField DataField="details" HeaderText="Details" SortExpression="details" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>


                    </div>
                        </div>

                    </div>
        </div>
      
        <br />
        <br />
                <a href="Home.aspx">< Back to Homepage</a>
        <br />
        <br />
            </div>


</asp:Content>
