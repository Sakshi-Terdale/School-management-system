<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/User_MasterPage.master" AutoEventWireup="true" CodeFile="Showstudentinfo.aspx.cs" Inherits="Admin_Showstudentinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <h5 class="card-header">Search-<br />

                     <label>Select Class:</label>
        <asp:DropDownList ID="ddlclass"  runat="server">
     <asp:ListItem Value="0">--select Class--</asp:ListItem>
    <asp:ListItem>5th</asp:ListItem>
    <asp:ListItem>6th</asp:ListItem>
     <asp:ListItem>7th</asp:ListItem>
     <asp:ListItem>8th</asp:ListItem>
     <asp:ListItem>9th</asp:ListItem>
     <asp:ListItem>10th</asp:ListItem>
</asp:DropDownList>&nbsp;&nbsp;&nbsp;

          <label>Cast:</label>
 <asp:TextBox ID="txtcast" Class="txt" runat="server"  placeholder="Enter Cast" ></asp:TextBox>
       
           <asp:Button ID="btnsearch"  class="btn btn-success" runat="server" OnClick="btnsearch_Click"   Text="Search"  />

</h5>
     
        
         <div class="row">
   
    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
        <div class="card">
            <h5 class="card-header">
              <p class="text-warning"> View All Student Record</p>
            </h5>
           
                    <div class="card-body">
                        <div class="form-row">
                            <div class="col-md-8">
                                <div class="table table-responsive">
                                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                    <asp:GridView ID="gridshowstudentinfo" Class="table table-striped"  runat="server">
                           
                                    </asp:GridView>
                                    

                                </div>
                            </div>
                        </div>
                    </div>
               
        </div>
    </div>
</div>
</asp:Content>

