<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="searchdrugs.aspx.cs" Inherits="SPC_webSystem.searchdrugs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });

     </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
            <div class="row">

                <div class="col-sm-12">
                    <center>
                        <h2>
                       Search Drugs</h2>
                    </center>
                    <div class="row">
                        <div class="col-sm-12 col-md-12">
                            <asp:Panel class="alert alert-success" role="alert" ID="Panel1" runat="server" Visible="False">
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </asp:Panel>
                        </div>
                    </div>
                    <br />

                    <div class="row"> 
                <div class="card">
                    <div class="card-body">                  
                        <div class="row">
                            <div class="col">
                                </hr>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:spcDBConnectionString %>" SelectCommand="SELECT * FROM [stock_tbl]"></asp:SqlDataSource>
                            </div>
                        </div>

                          <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" 
                                    ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="medicine_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="medicine_id" HeaderText="ID" ReadOnly="True" SortExpression="medicine_id" >
                                      
                                        <ItemStyle Font-Bold="True" />
                                        </asp:BoundField>
                                      
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-lg-9">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("name") %>'></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-12">

                                                                    Expiry Date -
                                                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("expiry_date") %>'></asp:Label>

                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-12">

                                                                    Total Stock -
                                                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("stock") %>'></asp:Label>
                                                                    &nbsp;| Current Stock -
                                                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("current_stock") %>'></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-12">

                                                                    Details -
                                                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Text='<%# Eval("details") %>'></asp:Label>

                                                                </div>
                                                            </div>

                                                        </div>
                                                        <div class="col-lg-3">
                                                            <asp:Image class="img-fluid" ID="Image1" runat="server" ImageUrl='<%# Eval("medicine_img") %>' />
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                      
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>


                    </div>
                        </div>

                    </div>
                    </div>
                </div>
        </div>
       
</asp:Content>
