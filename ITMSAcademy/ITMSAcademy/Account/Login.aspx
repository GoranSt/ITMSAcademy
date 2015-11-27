<%@ Page Title="Log in" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ITMSAcademy.Account.Login" %>
<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>





<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="Mainbody">

    
  



    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>
    <section id="loginForm">
        <h2>Use a local account to log in.</h2>
        <asp:Login runat="server" ViewStateMode="Disabled" RenderOuterTable="false">
            <LayoutTemplate>
                <p class="validation-summary-errors">
                    <asp:Literal runat="server" ID="FailureText" />
                </p>
                <fieldset>
                    <legend>Log in Form</legend>
                   <div style="margin-bottom:6px">
                       
                            <asp:Label runat="server" AssociatedControlID="UserName">User name</asp:Label>
                            <asp:TextBox runat="server" ID="UserName" CssClass="form-control" Width="25%" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" CssClass="field-validation-error" ErrorMessage="The user name field is required." />
                       </div>
                       
                            <asp:Label runat="server" AssociatedControlID="Password">Password</asp:Label>
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" Width="25%" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="field-validation-error" ErrorMessage="The password field is required." />
                      
                        
                        <div style="margin-top:-6px">
                            <asp:CheckBox runat="server" ID="RememberMe"/> Remember me?
                            
                       </div>
                    <div style="margin-top:4px">
                    <asp:Button runat="server" CommandName="Login" Text="Log in" OnClick="Unnamed6_Click" CssClass="btn-primary" Width="100" Height="40" />
              </div>
                          </fieldset>
            </LayoutTemplate>
        </asp:Login>

    </section>

    <section id="socialLoginForm">
        <h2>Use another service to log in.</h2>
        <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
    </section>
</asp:Content>
