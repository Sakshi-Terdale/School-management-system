<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/User_MasterPage.master" AutoEventWireup="true" CodeFile="ShowteacherInfo.aspx.cs" Inherits="Admin_ShowteacherInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
             <h2 style="color:palevioletred">Teacher Details</h2> 
    
    <h5 class="card-header">Search-<br />
                                     <label>Select Class:</label>
       
        <asp:TextBox ID="txtclass" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;

                 
          <label>Acadamic year:</label>
                                <asp:DropDownList ID="ddljnyear"  runat="server">
      <asp:ListItem Value="0">--select Year--</asp:ListItem>
    <asp:ListItem>2010-11</asp:ListItem>
    <asp:ListItem>2011-12</asp:ListItem>
     <asp:ListItem>2012-13</asp:ListItem>
     <asp:ListItem>2013-14</asp:ListItem>
    <asp:ListItem>2014-15</asp:ListItem>
    <asp:ListItem>2015-16</asp:ListItem>
   <asp:ListItem>2016-17</asp:ListItem>
      <asp:ListItem>2017-18</asp:ListItem>
    <asp:ListItem>2018-19</asp:ListItem>
    <asp:ListItem>2019-20</asp:ListItem>
   <asp:ListItem>2020-21</asp:ListItem>
<asp:ListItem>2021-22</asp:ListItem>
   <asp:ListItem>2022-23</asp:ListItem>
 <asp:ListItem>2023-24</asp:ListItem>
 <asp:ListItem>2024-25</asp:ListItem>
    <asp:ListItem>2025-26</asp:ListItem>
   
</asp:DropDownList>  
           <asp:Button ID="btnsearch"  class="btn btn-success" runat="server" OnClick="btnsearch_Click"  Text="Search"  />

</h5>
    
    <div class="row">
   
    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
        <div class="card">
            <h5 class="card-header">
              <p class="text-warning"> View All Teacher Record</p>
            </h5>
           
                    <div class="card-body">
                        <div class="form-row">
                            <div class="col-md-12">
                                <div class="table table-responsive">
                                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                    <asp:GridView ID="gridshowteacherinfo" Class="table table-striped"  runat="server">
                           
                                    </asp:GridView>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
               
        </div>
    </div>
</div>
</asp:Content>

