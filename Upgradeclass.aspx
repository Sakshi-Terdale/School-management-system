<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/User_MasterPage.master" AutoEventWireup="true" CodeFile="Upgradeclass.aspx.cs" Inherits="Admin_Upgradeclass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <h2>Upgrade Class Student....</h2>
    
    <h5 class="card-header">Search-<br />

                     <label>Select Class:</label>
        <asp:DropDownList ID="ddlclassfrom"  runat="server">
     <asp:ListItem Value="0">--select Class--</asp:ListItem>
    <asp:ListItem>5th</asp:ListItem>
    <asp:ListItem>6th</asp:ListItem>
     <asp:ListItem>7th</asp:ListItem>
     <asp:ListItem>8th</asp:ListItem>
     <asp:ListItem>9th</asp:ListItem>
     <asp:ListItem>10th</asp:ListItem>
</asp:DropDownList>&nbsp;&nbsp;&nbsp;

        
           <asp:Button ID="btnsearch"  class="btn btn-success"  runat="server" OnClick="btnsearch_Click"   Text="Search"  />

</h5>
     
        
         <div class="row">
   
    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
        <div class="card">
            <h5 class="card-header">
              <p class="text-warning"> View Class Student...</p>
            </h5>
           
                    <div class="card-body">
                        <div class="form-row">
                            <div class="col-md-8">
                                <div class="table">
                                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                    <asp:GridView ID="gridshowstudentinfo" AutoGenerateColumns="false" Class="table table-striped"  runat="server">
                           
                                         <Columns>
     <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
         <HeaderTemplate>Student Reg.No</HeaderTemplate>
         <ItemTemplate>
             <asp:Label ID="lblSerial" runat="server"></asp:Label>
             <asp:Label ID="lblregno" runat="server" Text='<%# Eval("Studentregno") %>'></asp:Label>
         </ItemTemplate>
     </asp:TemplateField>
 </Columns>
   <Columns>
     <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
         <HeaderTemplate>Student Name</HeaderTemplate>
         <ItemTemplate>
             <asp:Label ID="lblstdname" runat="server" Text='<%# Eval("StudentName") %>'></asp:Label>
         </ItemTemplate>
     </asp:TemplateField>
 </Columns>
              <Columns>
    <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
        <HeaderTemplate>Class</HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lblclass" runat="server" Text='<%# Eval("Class") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
                                                      <Columns>
    <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
        <HeaderTemplate>Select  Student</HeaderTemplate>
        <ItemTemplate>
                 <asp:CheckBox ID="chkSelect" runat="server" />
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
                                    </asp:GridView>
                                    <asp:HiddenField ID="HiddenField1" runat="server" />
                                    <br /><br />

                                  
                     <label>Select Class:</label>
        <asp:DropDownList ID="ddlclassto"  runat="server">
     <asp:ListItem Value="0">--select Class--</asp:ListItem>
    <asp:ListItem>5th</asp:ListItem>
    <asp:ListItem>6th</asp:ListItem>
     <asp:ListItem>7th</asp:ListItem>
     <asp:ListItem>8th</asp:ListItem>
     <asp:ListItem>9th</asp:ListItem>
     <asp:ListItem>10th</asp:ListItem>
</asp:DropDownList>&nbsp;&nbsp;&nbsp;

                                                        <asp:Button ID="btnGetSelected" runat="server" Text="Class Upgrade Update Student" OnClick="btnGetSelected_Click" CssClass="btn btn-primary" />
                           <br />

                                    
                                </div>
                            </div>
                        </div>
                    </div>
               
        </div>
    </div>
</div>
</asp:Content>

