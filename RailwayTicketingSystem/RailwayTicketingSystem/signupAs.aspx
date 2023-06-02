<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="signupAs.aspx.cs" Inherits="RailwayTicketingSystem.signupAs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        
.bigimage {

    width: 100%;
    z-index: -1;
    position: fixed;
    height: 100%;
}

.big_home_image {
    width: 100%;
    height: 614px;
    position: relative;
    z-index:-1;
}

.bedroomimg {
    width: 100%;
    height: 608px;
    overflow: hidden;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainpage" runat="server">
    <div class="bigimage">
        <img src="images/img1.jpg" class="bedroomimg" />
    </div>
        
        <br />
   
          <asp:Panel ID="Panel2" runat="server">
              <div class="userForm">
                  <div class="formTitle">
                      SIGNUP AS
                  </div>
                  <div class="formContent">


                      <asp:Label ID="Label1" runat="server" ForeColor="Red"
                          Visible="true"></asp:Label>
                      <br />
                      <div class="login_buttons">
                          <asp:Button ID="btnSignupBuyer" runat="server" Text="Buyer" PostBackUrl="buyerSignup.aspx" ValidationGroup="signup" />
                          <asp:Button ID="btnSignupSeller" runat="server" Text="Seller" PostBackUrl="supplierSignup.aspx"
                              ValidationGroup="signup" />
                      </div>
                  </div>
              </div>
          </asp:Panel>


          <br />
        <br />
            <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
         


</asp:Content>
