<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/User_MasterPage.master" AutoEventWireup="true" CodeFile="FeeCollection.aspx.cs" Inherits="Admin_FeeCollection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .txts{

            border-radius:6px;
            width:208px;
            height:34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="row">
        <div class="col-md-6">
        <div class="card">
         <h5 class="card-header">
Student Fee Collection
</h5>
            <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional"  runat="server">
                <ContentTemplate>
        <asp:TextBox ID="txtRegNo" Class="form-control" AutoPostBack="true"  OnTextChanged="txtRegNo_TextChanged" runat="server" Placeholder="Student Reg No" /><br />
           </ContentTemplate>
                
                    </asp:UpdatePanel>
            <asp:UpdatePanel ID="UpdatePanel2" UpdateMode="Conditional"  runat="server">
    <ContentTemplate>
        <asp:TextBox ID="txtstudentnm" Class="form-control"  runat="server" Placeholder="Student Name" /><br />
        </ContentTemplate>
     
         </asp:UpdatePanel>
                    <asp:UpdatePanel ID="UpdatePanel3" UpdateMode="Conditional"  runat="server">
<ContentTemplate>
    <asp:TextBox ID="txtaadhar" Class="form-control" runat="server" Placeholder="Aadhar Card" /><br />
            </ContentTemplate>
     
         </asp:UpdatePanel>
<asp:TextBox ID="txtFeeAmount" Class="form-control" runat="server" Placeholder="Total Fee" /><br />
<asp:TextBox ID="txtPaidAmount" Class="form-control" runat="server" Placeholder="Paid Amount" /><br />
<asp:DropDownList ID="ddlPaymentMode" Class="form-control" runat="server">
    <asp:ListItem Text="Cash" />
    <asp:ListItem Text="Card" />
    <asp:ListItem Text="Online" />
</asp:DropDownList><br />

<asp:Button ID="btnSubmit" Class="btn btn-success" runat="server" Text="Submit Fee" OnClick="btnSubmit_Click" />
            <asp:Button ID="btnupdate" Class="btn btn-info" runat="server" Text="Update Fee"  OnClick="btnupdate_Click1" />
<asp:Label ID="lblMessage" runat="server" ForeColor="Green" />
            </div>
            </div>
        </div>
     <h2>Fee Collection</h2>
    
                   Enter Register No:

    <asp:TextBox ID="txtserachregno" Class="txts"   placeholder="Enter Student Register No."  runat="server"></asp:TextBox>
       <asp:Button ID="btnsearch"  class="btn btn-success" runat="server" OnClick="btnsearch_Click"  Text="Search"  />

      &nbsp; &nbsp; &nbsp; &nbsp;<br /><br />
              &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;         <asp:Label ID="labelstd" Font-Size="Medium" runat="server"></asp:Label> <asp:Label ID="lblstdname" Font-Size="Medium" runat="server"></asp:Label><br />
                          <asp:Label ID="labelclass" Font-Size="Medium" runat="server"></asp:Label>
     <asp:Label ID="lblstdregno" Font-Size="Medium" runat="server"></asp:Label>

        <asp:Panel ID="Panel1" runat="server">
                 
      <div class="row">
     
       <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
          <div class="card">
              <h5 class="card-header">
                
              </h5>
             
                      <div class="card-body">
                          <div class="form-row">
                              <div class="col-md-12">
                                  <div class="table table-responsive">
                                      <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                      <asp:GridView ID="gridstdfee" AutoGenerateColumns="false"  Class="table table-striped " runat="server" >


                                          <Columns>
                                              <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
                                                  <HeaderTemplate>student Reg no</HeaderTemplate>
                                                  <ItemTemplate>
                                                      <asp:Label ID="lblSerial" runat="server"></asp:Label>
                                                      <asp:Label ID="lblstdno" runat="server" Text='<%# Eval("Studentregno") %>'></asp:Label>
                                                  </ItemTemplate>
                                              </asp:TemplateField>
                                          </Columns>
                                            <Columns>
     <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
         <HeaderTemplate>Student Name</HeaderTemplate>
         <ItemTemplate>
             
             <asp:Label ID="lblstdnm" runat="server" Text='<%# Eval("Studentname") %>'></asp:Label>
         </ItemTemplate>
     </asp:TemplateField>
 </Columns>
                                                                                                                                <Columns>
    <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
        <HeaderTemplate>Aadhar Card</HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lblaadharcard" runat="server" Text='<%# Eval("Aadharcard") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
                                                                                      <Columns>
    <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
        <HeaderTemplate>FeeAmount</HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lbfeepamount" runat="server" Text='<%# Eval("FeeAmount") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
                                            <Columns>
    <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
        <HeaderTemplate>Paid Amount</HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lblpamount" runat="server" Text='<%# Eval("PaidAmount") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
                                                                                      <Columns>
    <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
        <HeaderTemplate>Payment date</HeaderTemplate>
        <ItemTemplate>
            <asp:Label ID="lblpdate" runat="server" Text='<%# Eval("PaymentDate") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
                                    <Columns>
                                              <asp:TemplateField HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="17px">
                                                  <HeaderTemplate>Edit Fee</HeaderTemplate>
                                                  <ItemTemplate>
                                                     
                                                      <asp:Button ID="btnview" class="btn btn-brand"  runat="server" Text="Edit Collection" OnClick="btnview_Click" />
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

</asp:Panel>
</asp:Content>

