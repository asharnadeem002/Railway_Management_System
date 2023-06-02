<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="RailwayTicketingSystem.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
      body {
        transition: background-color 0.5s ease;
      }
      .container {
        position: relative;
        height: 100vh;
      }
      .complaint-button-container {
        position: absolute;
        top: 0;
        right: 0;
        display: flex;
        align-items: center;
        margin-top: 400px;
        margin-right: 400px;
      }
      .complaint-button-container button {
        padding: 15px 30px;
        font-size: 1.2em;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 25px;
        cursor: pointer;
        margin-right: 30px;
        transition: padding 0.2s ease;
      }
      .complaint-button-container button:hover {
        background-color: #3E8E41;
        padding: 20px 40px;
      }
      .suggestion-button-container {
        position: absolute;
        bottom: 0;
        right: 0;
        display: flex;
        align-items: center;
        margin-bottom: 350px;
        margin-right: 400px;
      }
      .suggestion-button-container button {
        padding: 15px 30px;
        font-size: 1.2em;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 25px;
        cursor: pointer;
        margin-right: 30px;
        transition: padding 0.2s ease;
      }
      .suggestion-button-container button:hover {
        background-color: #3E8E41;
        padding: 20px 40px;
      }
      .left-image-container {
        position: absolute;
        top: 0;
        left: 0;
        height: 100vh;
        width: 50%;
        background-size: contain;
        background-position: center;
        display: flex;
        justify-content: center;
        align-items: center;
      }
      .left-image-container {
        background-image: url('comp.png');
      }
      .text-container {
        position: absolute;
        top: 20%;
        left: 70%;
        transform: translate(-50%, -50%);
        text-align: center;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        font-size: 2em;
        font-weight: bold;
        color: #333;
      }
        .heading {
            color: black;
            margin-top: 25px;
            width: 90%;
            top: 10%;
            left: 70%;
            text-align:right;
        }

            .heading h1 {

                font-family: serif;
                font-size: 50px;
            }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainpage" runat="server">

    <div class="container">
          <div class="left-image-container"></div>
          <div class="heading">
              <h1>Submit a Complaint or Suggestion</h1>

          </div>
          <div class="complaint-button-container">
              <button onclick="goToComplaints()">Submit a Complaint</button>
          </div>
          <div class="suggestion-button-container">
              <button onclick="goToSuggestions()">Submit a Suggestion</button>
          </div>
      </div>
      <script>
          function goToComplaints() {
              document.body.style.backgroundColor = "#f2f2f2"; // Set the background color to the transition color
              setTimeout(function () {
                  window.location.href = "Complaint.aspx"; // Go to the complaints page after the transition
              }, 500);
          }

          function goToSuggestions() {
              document.body.style.backgroundColor = "#f2f2f2"; // Set the background color to the transition color
              setTimeout(function () {
                  window.location.href = "Suggestions.aspx"; // Go to the suggestions page after the transition
              }, 500);
          }
      </script>
</asp:Content>
