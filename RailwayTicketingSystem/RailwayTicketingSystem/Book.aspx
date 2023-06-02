<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="Book.aspx.cs" Inherits="RailwayTicketingSystem.Book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        /* Add custom styles for the fares page */
        body {
            background-image: url('images/tack.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center center;
            height: 100vh;
        }
    .container {
        max-width: 400px;
        margin: 100px auto;
        background-color: #fff;
        padding: 30px;
        border-radius: 5px;
        box-shadow: 0 0 10px #929292;
        background-color: rgba(255, 255, 255, 0.5);
    }

    .heading {
        text-align: center;
        margin-bottom: 20px;
    }

    h1 {
        font-size: 24px;
        color: #333;
    }

    .context {
        margin-top: 20px;
    }

    select {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
    }

    Button {
        width: 100%;
        padding: 10px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 3px;
        cursor: pointer;
    }
    h2{
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainpage" runat="server">
   

    <div class="container">
        <div class="heading">
            <h1>BOOKING</h1>
        </div>

        <div class="context">
            
           
            Username : <asp:TextBox Id="bUsername" runat="server"></asp:TextBox><br /><br />
            Age :<asp:TextBox Id="Age" runat="server"></asp:TextBox><br /><br />
            Train Name : <asp:DropDownList ID="TrainName" runat="server">
                  <asp:ListItem Value="-">-</asp:ListItem>
                    <asp:ListItem Value="Karakarom Exprees">Karakarom Exprees</asp:ListItem>
                    <asp:ListItem Value="Pakistan Exprees">Pakistan Exprees</asp:ListItem>
                    <asp:ListItem Value="Shalimar Exprees">Shalimar Exprees</asp:ListItem>
                 </asp:DropDownList><br />
            From station:<asp:DropDownList ID="fromSelect" runat="server">
                <asp:ListItem Value="-">-</asp:ListItem>
                    <asp:ListItem Value="Peshawar Cantt">Peshawar Cantt</asp:ListItem>
                    <asp:ListItem Value="Karachi Cantt">Karachi Cantt</asp:ListItem>
                    <asp:ListItem Value="Lahore JN.">Lahore JN.</asp:ListItem>
                 </asp:DropDownList><br />
            To station: <asp:DropDownList id="whereSelect" runat="server">
                <asp:ListItem Value="-">-</asp:ListItem>
                     <asp:ListItem value="Gujrat">Gujrat</asp:ListItem>
                    <asp:ListItem value="Faisalabad">Faisalabad</asp:ListItem>
                    <asp:ListItem value="Karachi Cantt">Karachi Cantt</asp:ListItem>
                </asp:DropDownList><br />
       Enter Date: <asp:TextBox Id="sel" runat="server"></asp:TextBox><br /><br />
            Class:
                  <asp:DropDownList ID="classoftrain" runat="server">
                      <asp:ListItem Value="-">-</asp:ListItem>
                    <asp:ListItem Value="AC Standard">AC Standard</asp:ListItem>
                    <asp:ListItem Value="AC Buisness">AC Buisness</asp:ListItem>
                    <asp:ListItem Value="AC Sleeper">AC Sleeper</asp:ListItem>
                    <asp:ListItem Value="Economy">Economy</asp:ListItem>
                 </asp:DropDownList><br /><br />
            Tickets Want: <asp:TextBox Id="count" runat="server"></asp:TextBox><br /><br />
             <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="count" Display="Dynamic" ErrorMessage="you can book tickets 9 or lesss than 9." 
                    ForeColor="Red" 
                    ValidationExpression="\d{1}" 
                    ValidationGroup="signup"></asp:RegularExpressionValidator>
                <br />
 
                    
         
          

       <asp:Button ID="submitButton" runat="server" Text="BOOK" OnClick="Search_Button_Click_Book"/>

        </div>

         <div class="GridView">
               <asp:GridView ID="ticketGrid" runat="server" AllowPaging="True" margin-left="1000px" BackColor="#FF3300" BorderColor="#FFFFCC" BorderStyle="Dashed" Caption="available trains" CaptionAlign="Top" CellSpacing="25" CssClass="heading" Font-Italic="True" GridLines="Horizontal" Height="16px" Width="477px"> </asp:GridView>
   <div id="message" runat="server">
    </div>
    </div>
        
</asp:Content>
