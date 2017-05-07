<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PasswordChangerApplication._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="row heading">
        <div class="col-md-2"></div>
        <div class="col-md-8 heading center">
            <h1>Change Your Password</h1>
        </div>
        <div class="col-md-2"></div>
    </div>
    <br/>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-8">
                            <asp:TextBox runat="server" ID="username" CssClass="form-control" placeholder="Current Username"></asp:TextBox>
                            <br/>
                            <asp:TextBox runat="server" ID="currentPassword" CssClass="form-control" placeholder="Current Password"></asp:TextBox>
                            <br/>
                            <asp:TextBox runat="server" ID="newPassword" CssClass="form-control" placeholder="New Password"></asp:TextBox>
                            <br/>
                            
                        </div>
                        <div class="col-md-2"></div>
                    </div>
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-8">
                            <asp:Button runat="server" CssClass="btn btn-default btn-lg" name="SubmitButton" Text="Submit" OnClick="submitButton_Clicked"/>
                        </div>
                        <div class="col-md-2"></div>
                    </div>

                </div>
            </div>
        </div>
        <div class="col-md-4"></div>

    </div>
</asp:Content>
