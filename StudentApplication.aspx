<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/User_MasterPage.master" AutoEventWireup="true" CodeFile="StudentApplication.aspx.cs" Inherits="Admin_StudentApplication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
             <div class="row">
   
    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
        <div class="card">
            <h5 class="card-header">
              <p class="text-warning"> View new Addmission Student Record</p>
            </h5>
           
                    <div class="card-body">
                        <div class="form-row">
                            <div class="col-md-8">
                                <div class="table table-responsive">
                                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                    <asp:GridView ID="gridshowstudentinfo" AutoGenerateColumns="false"  Class="table table-striped"  runat="server">
                           
                                                                                   <Columns>
                                              <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
                                                  <HeaderTemplate>Studednt Reg.No</HeaderTemplate>
                                                  <ItemTemplate>
                                                      <asp:Label ID="lblSerial" runat="server"></asp:Label>
                                                      <asp:Label ID="lblregno" runat="server" Text='<%# Eval("RegNo") %>'></asp:Label>
                                                  </ItemTemplate>
                                              </asp:TemplateField>
                                          </Columns>
                                            <Columns>
                                              <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
                                                  <HeaderTemplate>Student Name</HeaderTemplate>
                                                  <ItemTemplate>
                                                      <asp:Label ID="lblstdname" runat="server" Text='<%# Eval("Studentname") %>'></asp:Label>
                                                  </ItemTemplate>
                                              </asp:TemplateField>
                                          </Columns>
                                          <Columns>
    <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
        <HeaderTemplate>Father Name</HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lblfname" runat="server" Text='<%# Eval("Fathername") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
                                          <Columns>
    <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
        <HeaderTemplate>Mother Name</HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lblmthname" runat="server" Text='<%# Eval("Mothername") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
                                                                                  <Columns>
    <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
        <HeaderTemplate>StudentCast</HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lblcast" runat="server" Text='<%# Eval("StudentCast") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
                    <Columns>
    <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
        <HeaderTemplate>Religion</HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lblreligion" runat="server" Text='<%# Eval("religion") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
                      <Columns>
    <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
        <HeaderTemplate>Email Id.</HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lblemail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
                                          
                       <Columns>
    <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
        <HeaderTemplate>Date Of birth</HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lbldb" runat="server" Text='<%# Eval("Dateofbirth") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
                                        
                       <Columns>
    <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
        <HeaderTemplate>Gender</HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lblgender" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
                                            <Columns>
                                              <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
                                                  <HeaderTemplate>Parent Contact</HeaderTemplate>
                                                  <ItemTemplate>
                                                      <asp:Label ID="lblmobile" runat="server" Text='<%# Eval("Parentcontact") %>'></asp:Label>
  
                                                  </ItemTemplate>
                                              </asp:TemplateField>
                                          </Columns>
                                               <Columns>
       <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
           <HeaderTemplate>Aadhar card</HeaderTemplate>
           <ItemTemplate>
               <asp:Label ID="lbladhar" runat="server" Text='<%# Eval("AadharNo") %>'></asp:Label>
  
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
        <HeaderTemplate>Address</HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lbladdress" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
  
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
                                             <Columns>
    <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
        <HeaderTemplate>Addmission Year</HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lbladmyear" runat="server" Text='<%# Eval("Admissionyear") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
                                                                                     <Columns>
    <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
        <HeaderTemplate>Addmisiion Status</HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lbladmstatus" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
                                        
                                        
                                             <Columns>
    <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
        <HeaderTemplate>Approval</HeaderTemplate>
        <ItemTemplate>
 <asp:Button ID="btnapproval" class="btn btn-brand"   runat="server" OnClick="btnapproval_Click" Text="Approval" />
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
</asp:Content>

