<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="Fares.aspx.cs" Inherits="RailwayTicketingSystem.Fares" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        /* Add custom styles for the fares page */
        body {
            background-image: url('images/htrain.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center center;
            height: 100vh;
        }
         #GridView{
        border-collapse:collapse;
        border:dashed #007bff;
    }
    #GridView th {
        background-color:antiquewhite;
        color:aquamarine;
        padding:inherit;

    }
    .container {
        max-width: 400px;
        margin-top: 10px;
        margin-left:20px;
        background-color: #fff;
        padding: 30px;
        border-radius: 5px;
        box-shadow: 0 0 10px #929292;
        background-color: rgba(255, 255, 255, 0.5);
    }
     .container1 {
        max-width: 600px;
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
         .GridView {
             height: 616px;
         }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainpage" runat="server">
    <div class ="container1">
         <div class="GridView">
               <asp:GridView ID="ItemGrid" runat="server" AllowPaging="True" margin-left="1000px" BackColor="#FF3300" BorderColor="#FFFFCC" BorderStyle="Dashed" Caption="available trains" CaptionAlign="Top" CellSpacing="25" CssClass="heading" Font-Italic="True" GridLines="Horizontal" Height="16px" Width="477px"> </asp:GridView>
    </div>
    </div>
             
  
     <div class="container">
        <div class="heading">
            <h1>Check Fares</h1>
        </div>

        <div class="context">
         
            <h2>FROM:
                <asp:DropDownList ID="fromSelect" runat="server">
                    <asp:ListItem Value="Peshawar Cantt">Peshawar Cantt</asp:ListItem>
                    <asp:ListItem Value="Karachi Cantt">Karachi Cantt</asp:ListItem>
                    <asp:ListItem Value="Lahore JN.">Lahore JN.</asp:ListItem>
                 </asp:DropDownList>
            </h2>
       
           
           <h2>WHERE:
                <asp:DropDownList id="whereSelect" runat="server">
                     <asp:ListItem value="Gujrat">Gujrat</asp:ListItem>
                    <asp:ListItem value="Faisalabad">Faisalabad</asp:ListItem>
                    <asp:ListItem value="Karachi Cantt">Karachi Cantt</asp:ListItem>
                </asp:DropDownList>
            </h2>

       <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="Search_Button_Click"/>
              <br/><br/>
    <div id="message" runat="server">
    </div>
     
        </div>
    </div>

</asp:Content>

