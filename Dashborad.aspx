<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/User_MasterPage.master" AutoEventWireup="true" CodeFile="Dashborad.aspx.cs" Inherits="Client_Dashborad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 25%;
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

        .container {
            padding: 2px 16px;
        }
 

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   

    
     <h2>Dashboard</h2>
    <div class ="row">
<div class="card">
  
  <div class="container">

    <h4><b>New Applications</b></h4> 
    <p>
        <asp:Label ID="lblnewappl" Font-Bold="true" Font-Size="Medium" ForeColor="#3333ff" runat="server"></asp:Label></p> 
  </div>
</div>&nbsp;&nbsp;&nbsp;
    <div class="card">
  
  <div class="container">
    <h4><b>Total Student</b></h4> 
    <p>        <asp:Label ID="lbltotstudent" Font-Bold="true" Font-Size="Medium" ForeColor="#3333ff" runat="server"></asp:Label></p> 
  </div>
</div>&nbsp;&nbsp;
        <div class="card">
  
  <div class="container">
    <h4><b>Total Teacher</b></h4> 
    <p> <asp:Label ID="lbltotteacher" Font-Bold="true" Font-Size="Medium" ForeColor="#3333ff" runat="server"></asp:Label></p> 
  </div>
</div>&nbsp;&nbsp;
          <div class="card">

<div class="container">
  <h4><b>Fee Collection</b></h4> 
  <p><asp:Label ID="lblfees" Font-Bold="true" Font-Size="Medium" ForeColor="#3333ff" runat="server"></asp:Label>
  </p>
    </div>
              </div>&nbsp;&nbsp;&nbsp;
             
                 
              </div>
    
       <center><img src="../std.jpg"/></center> 
</asp:Content>
