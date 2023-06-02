<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="Complaint.aspx.cs" Inherits="RailwayTicketingSystem.Complaint" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Railway Management System - Submit Complaint</title>
    <style>
        /* General styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url("train2.jpg");
            background-size: cover;
        
           
        }

        /* Header styling */
    

        /* Form styling */
        /*form {
            border: 1px solid #CCC;
            margin: 20px auto;
            max-width: 600px;
            padding: 20px;
            background-color: #FFF;
            opacity: 0.9;
            text-align: right;*/ /* Align all form elements towards the right side */
        /*}*/

        label {
            display: block;
            margin-bottom: 10px;
            text-align: left; /* Align label text towards the left side */
        }

        input[type="text"], textarea {
            border: 1px solid #CCC;
            border-radius: 5px;
            font-size: 16px;
            padding: 10px;
            width: 100%;
            box-sizing: border-box;
        }

        textarea {
            height: 150px;
        }

        input[type="submit"] {
            background-color: #0072C6;
            border: none;
            color: #FFF;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
            padding: 10px 20px;
            transition: transform 0.2s ease-in-out; /* Add a transition effect to the transform property */
        }

            input[type="submit"]:hover {
                background-color: #005DAE;
                transform: scale(1.2); /* Increase the size of the submit button when the mouse is hovered on it */
            }

        input[type="text"]:hover, textarea:hover {
            border-color: #0072C6;
        }

             .heading {
            color: black;
            text-align: center;
        }

            .heading h1 {
                font-family: serif;
                font-size: 60px;
            }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainpage" runat="server">
    
    <div class="heading">
        <h1>File a Complain!!!</h1>
        <h2>Your comfort is our utmost priority</h2>
    </div>

    
        <label for="name">Name</label>
        <input type="text" id="name" name="name" required>

        <label for="email">Email</label>
        <input type="text" id="email" name="email" required>

        <label for="phone">Phone</label>
        <input type="text" id="phone" name="phone" required>

        <label for="complaint">Complaint</label>
        <textarea id="complaint" name="complaint" required></textarea>

        <input type="submit" value="Submit">
  
</asp:Content>
