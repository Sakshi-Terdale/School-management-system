<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/User_MasterPage.master" AutoEventWireup="true" CodeFile="TeacherInformation.aspx.cs" Inherits="Admin_TeacherInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
    .form-row {
      display: flex;
      flex-direction: row;
      gap: 15px;
      margin: 20px;
      background-color:antiquewhite;
    }

    .form-row div {
      display: flex;
      flex-direction: column;
    }

    input, button {
      padding: 8px;
      font-size: 16px;
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h5 class="card-header">
    Add Teacher Information 
   </h5>
           
    <div class="form-row">
      <div>
        <label style="font-weight:bold"> &nbsp;  &nbsp;Teacher Name</label> 
        <asp:TextBox ID="txtname" runat="server"  placeholder="Enter Name" ></asp:TextBox>
                                
      </div>
        <div>
  <label  style="font-weight:bold">Mobile Number</label>
 <asp:TextBox ID="txtmob" runat="server"  placeholder="Enter Mobile Number" ></asp:TextBox>
                          
</div>
                <div>
  <label for="tname" style="font-weight:bold">Teacher Qualification</label>
 <asp:TextBox ID="txtqualification" runat="server"  placeholder="Enter  Qualification" ></asp:TextBox>
                          
</div>
      <div>
        <label for="lgen" style="font-weight:bold">  Gender</label>
         <asp:DropDownList ID="DropDownList1" Class="form-control"  runat="server">
       <asp:ListItem Value="0">--select Gender--</asp:ListItem>
     <asp:ListItem>Male</asp:ListItem>
     <asp:ListItem>Female</asp:ListItem>
 </asp:DropDownList>
      </div>
      <div>
        <label for="email" style="font-weight:bold">  Email Id</label>
          <asp:TextBox ID="txtemail" runat="server"  placeholder="Enter Email Id" ></asp:TextBox>
               
      </div>
        <div>
  <label for="lAclass" style="font-weight:bold"> Allocated Class</label>
          <asp:Label ID="lblclasses" runat="server" ></asp:Label>
                                        5th: <asp:CheckBox ID="cblclass5"  runat="server" AutoPostBack="True">
                
            </asp:CheckBox>
                                                           6th: <asp:CheckBox ID="cblclass6"  runat="server" AutoPostBack="True">
    
</asp:CheckBox>
                                                                                             7th: <asp:CheckBox ID="cblclass7"  runat="server" AutoPostBack="True">
    
</asp:CheckBox>
                                                                                             8th: <asp:CheckBox ID="cblclass8"  runat="server" AutoPostBack="True">
    
</asp:CheckBox>
                                                                                             9th: <asp:CheckBox ID="cblclass9"  runat="server" AutoPostBack="True">
    
</asp:CheckBox>
                                                                                             10th: <asp:CheckBox ID="cblclass10"  runat="server" AutoPostBack="True">
    
</asp:CheckBox>   
</div>
        <div>
     <label for="lsub" style="font-weight:bold"> &nbsp;  &nbsp;Subjects:</label>
       
          Marathi: <asp:CheckBox ID="chkmarathi" runat="server" />

       
          Hindi:  <asp:CheckBox ID="chkhindi" runat="server"  />
            
       
        
          Sanskrut:  <asp:CheckBox ID="chksanskrut" runat="server"/>
           
        
        
           Geography: <asp:CheckBox ID="chkgeo" runat="server"  />
            
       
        
           History: <asp:CheckBox ID="chkhistory" runat="server"/>
          
        
       
           Maths: <asp:CheckBox ID="chkmaths" runat="server" />

            English:<asp:CheckBox ID="chkenglish" runat="server" />
            
            Science:<asp:CheckBox ID="chkscience" runat="server" />

            IT:<asp:CheckBox ID="chkIT" runat="server" />
        
            PE:<asp:CheckBox ID="chkPE" runat="server" />
         </div>
    
        <div>
  <label for="ljnyear" style="font-weight:bold"> Acadamic Year</label>
   
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
   
</asp:DropDownList>  </div>
        <div>
                    <label for="ladddress" style="font-weight:bold">Address</label>
   <asp:TextBox ID="txtaddress" runat="server"  placeholder="Enter Address" ></asp:TextBox>
       </div>
                    
</div>
                <div>
          
</div>
      <div>
        
  
      </div>
         
 
 
  <center> <asp:Button ID="btnsubmit" Class="btn btn-success" OnClick="BtnSubmit_Click"  runat="server" Text="Submit" />&nbsp;&nbsp;&nbsp;
 <asp:Button ID="btnupdate" Class="btn btn-warning"  runat="server" OnClick="btnupdate_Click"  Text="Update"  /><br /></center>
           
  <div class="row">
     
      <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
          <div class="card">
              <h5 class="card-header">
                 Teacher Information 
              </h5>
             
                      <div class="card-body">
                          <div class="form-row">
                              <div class="col-md-12">
                                  <div class="table table-responsive">
                                      <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                      <asp:GridView ID="gridTeacherinfo" AutoGenerateColumns="false"  Class="table table-striped " runat="server" >
                                                                                                               <Columns>
    
        <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
           <HeaderTemplate>Teacher Serial No.</HeaderTemplate>
            <ItemTemplate>
                <%# Container.DataItemIndex + 1 %>

            </ItemTemplate></asp:TemplateField>
</Columns>    

                                          <Columns>
                                              <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
                                                  <HeaderTemplate>Teacher Profile Id</HeaderTemplate>
                                                  <ItemTemplate>
                                                      <asp:Label ID="lblSerial" runat="server"></asp:Label>
                                                      <asp:Label ID="lbltid" runat="server" Text='<%# Eval("TeacherID") %>'></asp:Label>
                                                  </ItemTemplate>
                                              </asp:TemplateField>
                                          </Columns>
                                            <Columns>
                                              <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
                                                  <HeaderTemplate>Teacher Name</HeaderTemplate>
                                                  <ItemTemplate>
                                                      <asp:Label ID="lbltname" runat="server" Text='<%# Eval("Fullname") %>'></asp:Label>
                                                  </ItemTemplate>
                                              </asp:TemplateField>
                                          </Columns>
                                            <Columns>
    <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
        <HeaderTemplate>Gender</HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lbltlblgender" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
                                            <Columns>
                                              <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
                                                  <HeaderTemplate>Mobile Number</HeaderTemplate>
                                                  <ItemTemplate>
                                                      <asp:Label ID="lblmobile" runat="server" Text='<%# Eval("MobileNo") %>'></asp:Label>
  
                                                  </ItemTemplate>
                                              </asp:TemplateField>
                                          </Columns>
                                            <Columns>
    <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
        <HeaderTemplate>Qualification</HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lblqualification" runat="server" Text='<%# Eval("Qualification") %>'></asp:Label>
  
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
                                               <Columns>
       <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
           <HeaderTemplate>Email Id</HeaderTemplate>
           <ItemTemplate>
               <asp:Label ID="lblemail" runat="server" Text='<%# Eval("EmailID") %>'></asp:Label>
  
           </ItemTemplate>
       </asp:TemplateField>
   </Columns>
                                                                                      <Columns>
    <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
        <HeaderTemplate>Allocated Class</HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lblaclass" runat="server" Text='<%# Eval("AllocatedClass") %>'></asp:Label>
  
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
    <Columns>
    <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
        <HeaderTemplate>Subject</HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lblsubject" runat="server" Text='<%# Eval("Subject") %>'></asp:Label>
  
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
                                              <Columns>
    <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
        <HeaderTemplate>Joined Year</HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lbljyear" runat="server" Text='<%# Eval("JoinedYear") %>'></asp:Label>
  
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
                                                  <HeaderTemplate>Edit</HeaderTemplate>
                                                  <ItemTemplate>
                                                     
                                                      <asp:Button ID="Button1" class="btn btn-brand" OnClick="Button1_Click"  runat="server" Text="Edit" />
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
 
</asp:Content>

