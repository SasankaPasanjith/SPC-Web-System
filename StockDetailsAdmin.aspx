<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StockDetailsAdmin.aspx.cs" Inherits="SPC_webSystem.StockDetailsAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });

       function readURL(input) {
           if (input.files && input.files[0]) {
               var reader = new FileReader();

               reader.onload = function (e) {
                   $('#imgview').attr('src', e.target.result);
               };

               reader.readAsDataURL(input.files[0]);
           }
       }

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
                                    <img id="imgview" width="120px" <img src="img/medicineLogo.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                   <h4>Medicine Stock Details</h4>
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
                            <asp:FileUpload onchange="readURL (this);" class="form-control" ID="FileUpload1" runat="server" />
                            </div>
                        </div>


                         <div class="row">
                            <div class="col-md-4">
                               <label>Medicine ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1"
                                        runat="server" placeholder="ID"></asp:TextBox>

                                     <asp:Button class="form-control btn btn-secondary" ID="Button1" 
                                         runat="server" Text="Go" OnClick="Button1_Click" />
                                        </div>
                            </div>
                                </div>
                             <div class="col-md-8">
                               <label>Medicine Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2"
                                        runat="server" placeholder="Medicine Name"></asp:TextBox>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                               
                            </div>
                            </div>
                             </div>

                         <div class="row">
                            <div class="col-md-4">
                               <label>Expiry Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3"
                                        runat="server" placeholder="Expiry Date" TextMode="Date"></asp:TextBox>
                            </div>
                                </div>
                             <div class="col-md-8">
                               <label>Medicine Details</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4"
                                        runat="server" placeholder="Medicine Details" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>
                             </div>

                        <div class="row">
                            <div class="col-md-4">
                                <lable>Actual Stock</lable>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" 
                                       placeholder="Actual Stock"  runat="server" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                             <div class="col-md-4">
                                <lable>Current Stock</lable>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" 
                                       placeholder="Current Stock"  runat="server" 
                                        TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                             <div class="col-md-4">
                                <lable>Issued Stock</lable>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" 
                                       placeholder="Issued Stock"  runat="server" 
                                        TextMode="Number" ReadOnly="True"></asp:TextBox>
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
                                     <h4>Medicine List</h4>
                                </center>
                            </div>
                        </div>
                      
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
      
        <br />
                <a href="Home.aspx">< Back to Homepage</a>
        <br />
        <br />
            </div>


</asp:Content>
