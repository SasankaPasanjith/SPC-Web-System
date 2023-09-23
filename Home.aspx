<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SPC_webSystem.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <img src="img/spcHome.png" width="100%"/>
    </section>
     <section>
         <div class="container">
             <div class="row">
                 <div class="col-12">
                     <center>
                         <h2><b>
                             Our Features
                             </b>
                         </h2>
                     </center>
                 </div>
             </div>
                <div class="row">
                 <div class="col-md-4">
                      <center>
                     <img width="120px" src="img/searchLogo.jpg" />
                     <h4>Search Drugs</h4>
                           <p class="text-justify">Through this website you can easily search for the 
                               drugs you need.</p>
                     </center>
                 </div>
                 <div class="col-md-4">
                      <center>
                     <img width="120px" src="img/TenderIcon.jpg" />
                     <h4>Tender Praposal Submission</h4>
                          <p class="text-justify">You can register with us and submit tenders 
                              for different types of drugs that we need.</p>
                     </center>
                 </div>
                 <div class="col-md-4">
                      <center>
                     <img width="120px" src="img/SearchDrugsLogo.png" />
                     <h4>Place Orders</h4>
                           <p class="text-justify">Pharmacies which are already registered with us can order the 
                          medicines they need through this website.</p>
                     </center>
                 </div>
             </div>
         </div>
    </section>
    <br />
    <br />
    <section>
        <img src="img/pexels-photo-415825_blue%20white%20pills.jpg" width="100%"/>
    </section>
</asp:Content>
