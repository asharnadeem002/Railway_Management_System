<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RailwayTicketingSystem.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Login</title>
    <link href="css/login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainpage" runat="server">
      <section>
            <div class="imgBx">
                <img src="images/img2.jpg" />
            </div>
            <div class="contentBx"> 
                <div class="formBx">
                    <h2>Login</h2>
               
                        <div class="inputBx">
                            <span>Username</span>
                            <input type="text" name="" runat="server" />
                        </div>
                        <div class="inputBx">
                            <span>Password</span>
                            <input type="password" name="" runat="server" />
                        </div>
                        <div class="remember">
                            <label><input type="checkbox" name=""> Remember me</label>
                        </div>
                        <div class="inputBx">
                            <input type="submit" value="Sign in" name="" runat="server" />
                        </div>
                        <div class="inputBx">
                            <p>Don't have an account? <a href="sign-up.aspx">Sign up</a></p>
                        </div>
                   
                </div>
            </div>
        </section>
      
</asp:Content>
