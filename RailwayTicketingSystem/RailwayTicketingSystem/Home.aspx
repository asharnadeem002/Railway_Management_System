<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="RailwayTicketingSystem.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .back-img{
            position: fixed;
            background-image:url("images/img1.jpeg");
            width:100%;
            height:600px;
            background-size:cover;
            position:absolute;
        }
        .text{
            position:absolute;
            color: white;
            font-size:15px;
            font-weight:bold;
            margin-top:240px;
            width:90%;
            top: 10%;
            left:50%;
            transform:translate(-50%,-50%);
            text-align:center;
        }
        .text h1{
            font-size:40px;
            font-family:serif;
        }
        .text p{
            margin: 10px 0 40px; 
            font-size:15px;
        }
    </style>
</asp:Content>
<asp:Content ID="HomeContent" ContentPlaceHolderID="mainpage" runat="server">

   
     <div class="back-img">
            <div class="text">
                <h1>Welcome to Railway Online Ticketing System</h1>
                <p>The Railway Online Ticketing System offers a convenient and user-friendly platform for booking and managing train tickets online.Passengers can easily search, book, and manage train tickets from anywhere, at any time, eliminating the need for physical visits to railway stations.The system provides a secure online payment process, ensuring safe transactions for passengers.Passengers can avail of various ticket options, classes of travel, and additional services, enhancing their overall travel experience.The system offers robust security measures, including encryption and other protocols, to protect passenger information and transactions.The Railway Online Ticketing System has brought efficiency, transparency, and accountability to ticket bookings, benefiting both passengers and railway authorities.</p>
            </div>
        </div>
   
</asp:Content>