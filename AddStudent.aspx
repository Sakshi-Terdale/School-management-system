<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/User_MasterPage.master" AutoEventWireup="true" CodeFile="AddStudent.aspx.cs" Inherits="Admin_AddStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
   
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <div class="container">
     <div class="row">
     <div class="col-md-6">
          <div class="card">
                  <h5 class="card-header">
 Add Student Information.
</h5>
          &nbsp; &nbsp; <label style="font-weight:bold"> &nbsp; &nbsp;Student Name:</label>
  <asp:TextBox ID="txtname" Class="form-control" runat="server"  placeholder="Enter Student Name" ></asp:TextBox>
                               &nbsp; &nbsp;   <label style="font-weight:bold"> &nbsp; &nbsp;Father Name:</label>
<asp:TextBox ID="txtfathernm" Class="form-control" runat="server"  placeholder="Enter Father Name" ></asp:TextBox>
            &nbsp; &nbsp;  <label style="font-weight:bold"> &nbsp; &nbsp;Mother Name:</label>
<asp:TextBox ID="txtmothernm" Class="form-control" runat="server"  placeholder="Enter Mother Name" ></asp:TextBox>
                                            &nbsp; &nbsp;   <label style="font-weight:bold"> &nbsp; &nbsp;Religion:</label>
                      <asp:DropDownList ID="ddlReligion" Class="form-control" runat="server">
      <asp:ListItem Value="0">--select Religion--</asp:ListItem>
      <asp:ListItem>Open</asp:ListItem>
 <asp:ListItem>Obc</asp:ListItem>
  
   <asp:ListItem>Nt</asp:ListItem>
      <asp:ListItem>Sc</asp:ListItem>
</asp:DropDownList> 
              
              &nbsp; &nbsp;   <label> &nbsp; &nbsp;Cast:</label>
<asp:TextBox ID="txtcast" Class="form-control" runat="server"  placeholder="Enter Student Cast" ></asp:TextBox>
        
                       
            &nbsp; &nbsp;      <label style="font-weight:bold">  &nbsp; &nbsp; Gender</label>
        <asp:DropDownList ID="ddlgender" Class="form-control" runat="server">
      <asp:ListItem Value="0">--select Gender--</asp:ListItem>
       <asp:ListItem>Male</asp:ListItem>
 <asp:ListItem>Female</asp:ListItem>
</asp:DropDownList>
         
     
                                    &nbsp; &nbsp;      <label style="font-weight:bold"> &nbsp; &nbsp;Date of Birth:</label>
<asp:TextBox ID="txtdb" Class="form-control" TextMode="Date" runat="server" ></asp:TextBox>
              
         </div></div>
           
 <div class="col-md-6">
      <div class="card">
              <br />
                                 &nbsp; &nbsp;   <label> &nbsp; &nbsp;Previous School Name:</label>
<asp:TextBox ID="txtprevschname" Class="form-control" runat="server"  placeholder="Enter Previous School Name" ></asp:TextBox>
          &nbsp; &nbsp; <label style="font-weight:bold"> &nbsp; &nbsp;Admission Year.</label>
                            <asp:DropDownList ID="ddladmyear" Class="form-control" runat="server">
      <asp:ListItem Value="0">--Select Year--</asp:ListItem>
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
              &nbsp; &nbsp; <label style="font-weight:bold"> &nbsp; &nbsp;Parent Email ID.</label>
<asp:TextBox ID="txtemail" runat="server" Class="form-control" placeholder="Enter Parent Email ID" ></asp:TextBox>
      &nbsp; &nbsp; <label style="font-weight:bold"> &nbsp; &nbsp;Parent contact Number.</label>
   <asp:TextBox ID="txtcont" Class="form-control"  runat="server"  placeholder="Enter Parent Contact" ></asp:TextBox>
  <asp:RegularExpressionValidator 
    ID="revContact" 
    runat="server" 
    ControlToValidate="txtcont" 
    ValidationExpression="^[0-9]{10}$" 
    ErrorMessage="Enter valid 10-digit contact number" 
    ForeColor="Red" 
    Display="Dynamic">
</asp:RegularExpressionValidator>

                          &nbsp; &nbsp; <label style="font-weight:bold"> &nbsp; &nbsp;
Student Aadhar card
         </label>
                      <div class="column"> 
     <asp:TextBox ID="txtadh1"  Class="txts"     runat="server" placeholder="0000" ></asp:TextBox>
                           <asp:RegularExpressionValidator 
        ID="rev1" 
        runat="server" 
        ControlToValidate="txtadh1" 
        ValidationExpression="^\d{4}$"
        ErrorMessage="*"
        ForeColor="Red" 
        Display="Dynamic">
    </asp:RegularExpressionValidator>
      <asp:TextBox ID="txtadh2"  Class="txts"  runat="server" placeholder="0000"  ></asp:TextBox>
                           <asp:RegularExpressionValidator 
        ID="rev2" 
        runat="server" 
        ControlToValidate="txtadh2" 
        ValidationExpression="^\d{4}$"
        ErrorMessage="*"
        ForeColor="Red" 
        Display="Dynamic">
    </asp:RegularExpressionValidator>
      <asp:TextBox ID="txtadh3"  Class="txts"  runat="server" placeholder="0000"></asp:TextBox>
                <asp:RegularExpressionValidator 
        ID="rev3" 
        runat="server" 
        ControlToValidate="txtadh3" 
        ValidationExpression="^\d{4}$"
        ErrorMessage="*"
        ForeColor="Red" 
        Display="Dynamic">
    </asp:RegularExpressionValidator>
                              </div>
         
                       &nbsp; &nbsp;       <label style="font-weight:bold"> &nbsp; &nbsp;
    Class
</label>
<asp:DropDownList ID="ddlclass" AutoPostBack="true" Class="form-control" OnSelectedIndexChanged="ddlclass_SelectedIndexChanged" runat="server">
     <asp:ListItem Value="0">--select Class--</asp:ListItem>
    <asp:ListItem>5th</asp:ListItem>
    <asp:ListItem>6th</asp:ListItem>
     <asp:ListItem>7th</asp:ListItem>
     <asp:ListItem>8th</asp:ListItem>
     <asp:ListItem>9th</asp:ListItem>
     <asp:ListItem>10th</asp:ListItem>

</asp:DropDownList>

         
                             <label style="font-weight:bold"> &nbsp; &nbsp; Rollno:</label>
   <asp:TextBox ID="txtrollno" Class="form-control" runat="server" ReadOnly="true" ></asp:TextBox>
           
                                    &nbsp; &nbsp;    <label style="font-weight:bold"> &nbsp; &nbsp; Address:</label>
<asp:TextBox ID="txtaddress" Class="form-control" Width="340px" Height="130px"  runat="server"    placeholder="Enter Permanant Address" ></asp:TextBox>
        
     </div>
         </div>
                <asp:Button ID="Button1" class="btn btn-success" runat="server" OnClick="BtnSubmit_Click"  Text="Submit"  />
<asp:Button ID="btnupdate"  class="btn btn-info" runat="server" OnClick="btnupdate_Click"   Text="Update"  />
   
    </div>
        
               <br />
   <div class="row">
     
      <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
          <div class="card">
              <h5 class="card-header">
                 School Student Record 
              </h5>
             
                      <div class="card-body">
                          <div class="form-row">
                              <div class="col-md-12">
                                  <div class="table table-responsive">
                                      <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                      <asp:GridView ID="gristudentinfo" AutoGenerateColumns="false"  Class="table table-striped " runat="server" >
                                                                     <Columns>
    
        <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
           <HeaderTemplate>Student Serial No.</HeaderTemplate>
            <ItemTemplate>
                <%# Container.DataItemIndex + 1 %>

            </ItemTemplate></asp:TemplateField>
</Columns>             
                                        

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
        <HeaderTemplate>Father Name</HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lblfnm" runat="server" Text='<%# Eval("Fathername") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
                                            <Columns>
    <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
        <HeaderTemplate>Mother Name</HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lblmthnm" runat="server" Text='<%# Eval("Mothername") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
                                                                                    
                                                                                                                                <Columns>
    <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
        <HeaderTemplate>Cast</HeaderTemplate>
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
        <HeaderTemplate>Class</HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lblclass" runat="server" Text='<%# Eval("Class") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
                                                                                      <Columns>
    <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
        <HeaderTemplate>Rollno.</HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lblrollno" runat="server" Text='<%# Eval("RollNo") %>'></asp:Label>
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
               <asp:Label ID="lbladhar" runat="server" Text='<%# Eval("Aadharcard") %>'></asp:Label>
  
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
        <HeaderTemplate>Email</HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lblemail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
  
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
 <Columns>
    <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
        <HeaderTemplate>Date of birth</HeaderTemplate>
        <ItemTemplate>
           <asp:Label ID="lbldb" runat="server" 
                Text='<%# Eval("Dateofbirth", "{0:dd-MM-yyyy}") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
</Columns>   
                                           <Columns>
    <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
        <HeaderTemplate>Gender</HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lblgen" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
  
        </ItemTemplate>
    </asp:TemplateField>

</Columns>
                                                                                     <Columns>
    <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
        <HeaderTemplate>Prev School Name</HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lblprevschname" runat="server" Text='<%# Eval("PrevSchoolname") %>'></asp:Label>
  
        </ItemTemplate>
    </asp:TemplateField>

</Columns>
 <Columns>
    <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
        <HeaderTemplate>Admission Year</HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lbladmyear" runat="server" Text='<%# Eval("Addmissionyear") %>'></asp:Label>
  
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
                                          
                  <Columns>
                       <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
                           <HeaderTemplate>Edit</HeaderTemplate>
                                                  <ItemTemplate>
                                                     
                                                      <asp:Button ID="btnedit" class="btn btn-brand"  runat="server" OnClick="btnedit_Click" Text="Edit" />
                                                  </ItemTemplate>
                                              </asp:TemplateField>
                                          </Columns>
                                            <Columns>
                                              <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
                                                  <HeaderTemplate>Delete</HeaderTemplate>
                                                  <ItemTemplate>
                                                     
                                                      <asp:Button ID="Button2" Class="btn btn-outline-danger" OnClick="Button2_Click" runat="server" Text="delete" />
                                                  </ItemTemplate>
                                              </asp:TemplateField>
                                          </Columns>
                                      </asp:GridView>
                                      <asp:HiddenField ID="HiddenField1" runat="server" />
                                  </div>
                              </div>
                          </div>
                      </div>
                 
          </div>
          </div>
      </div>
   </div>
</asp:Content>

