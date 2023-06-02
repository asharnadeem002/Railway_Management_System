

<%@ Page Title=""  Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="RailwayTicketingSystem.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Sign Up</title>
    <link href="css/signup.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainpage" runat="server">
     <section>
            <div class="imgBx">
                <img src="images/img3.jpg" />
            </div>
            <div class="contentBx">
                <div class="formBx">
                    <h2>Registration</h2>
                  
                        <div class="inputBx">
                            <span>Username</span>
                            <input type="text" name="" runat="server" />
                        </div>
                        <div class="inputBx">
                            <span>Phone Number</span>
                            <input type="text" name="" runat="server" />
                        </div>
                        <div class="inputBx">
                            <span>Password</span>
                            <input type="password" name="" runat="server" />
                        </div>
                        <div class="remember">
                            <label><input type="checkbox" name="" runat="server" /> I agree to terms & conditions</label>
                        </div>
                        <div class="inputBx">
                            <input type="submit" value="Register" name="" runat="server" />
                        </div>
                        <div class="inputBx">
                            <p>Already have an account? <a href="Login">login</a></p>
                        </div>
                
                </div>
            </div>
        </section>
</asp:Content>

