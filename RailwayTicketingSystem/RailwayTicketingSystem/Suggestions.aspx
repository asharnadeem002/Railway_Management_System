<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="Suggestions.aspx.cs" Inherits="RailwayTicketingSystem.Suggestions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <title>Railway Management System - Give Suggestions</title>
    <style>
        /* General styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('train2.jpg'); /* Set the background image */
            background-size: cover;
        }

        /* Header styling */
        header {
            background-color: #086407;
            color: #FFF;
            padding: 20px;
            text-align: center;
        }

        /* Form styling */
        /*form {
            border: 1px solid #CCC;
            margin: 20px auto;
            max-width: 600px;
            padding: 20px;
            background-color: #FFF;
            opacity: 0.9;
            text-align: right;*/ /* Align all form elements towards the right side */
            /*border-radius: 10px;*/ /* Add rounded corners to the form */
        /*}*/

        label {
            display: block;
            margin-bottom: 10px;
            text-align: left; /* Align label text towards the left side */
        }

        input[type="text"], textarea {
            border: 1px solid #CCC;
            border-radius: 5px; /* Add rounded corners to the text boxes */
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
            transition: background-color 0.2s ease-in-out; /* Add a transition effect to the background-color property */
            border-radius: 5px; /* Add rounded corners to the submit button */
        }

            input[type="submit"]:hover {
                background-color: #005DAE;
                transform: scale(1.1); /* Add a scale effect to the submit button when hovered */
            }

        /* Add outline effect to the text boxes when hovered */
        .outlined {
            outline: 2px solid #0072C6;
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
        <h1>Give Suggestions!!!</h1>

        <h2>Your feedback will help us take your experience to the next level!</h2>
    </div>
    
 
        <label for="name">Name</label>
        <input type="text" id="name" name="name" required>

        <label for="email">Email</label>
        <input type="text" id="email" name="email" required>

        <label for="suggestion">Suggestion</label>
        <textarea id="suggestion" name="suggestion" required></textarea>

        <input type="submit" value="Submit">
  

    <script>
        // Add outline effect to the text boxes when hovered
        var inputs = document.querySelectorAll('input[type="text"], textarea');
        inputs.forEach(function (input) {
            input.addEventListener('mouseover', function () {
                this.classList.add('outlined');
            });
            input.addEventListener('mouseout', function () {
                this.classList.remove('outlined');
            });
        });</script>
</asp:Content>
