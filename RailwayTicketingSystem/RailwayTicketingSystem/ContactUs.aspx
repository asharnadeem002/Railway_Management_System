<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="RailwayTicketingSystem.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/contactus.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainpage" runat="server">
     <section class="contact-page">
        <div class="page-content">
            <h1>Enter your details</h1>
          
                <label for="name">NAME:</label>
                <input id="name" type="text" placeholder="Enter your name....">
                <br>
                <label for="email">EMAIL:</label>
                <input id="email" type="email" placeholder="Enter your email....">
                <br>
                <label for="telephone">CONTACT:</label>
                <input id="telephone" type="tel" placeholder="Enter your Contact number....">
                <br>
                <label for="query">QUERY:</label>
                <input id="query" type="text" placeholder="Enter you Query....">
                <br>
                <input class="button" type="Submit" value="Submit">
                <br>
          

        </div>
    </section>
   
</asp:Content>
