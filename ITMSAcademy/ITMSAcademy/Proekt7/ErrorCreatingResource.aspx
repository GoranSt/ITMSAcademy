<%@ Page Title="Error" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ErrorCreatingResource.aspx.cs" Inherits="ITMSAcademy.Proekt7.SuccessCreatingResource" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Mainbody" runat="server">

    <h2>Something strange happened !!!</h2>

    <p>
        The resource checklist was not successfully saved.
    </p>
    <p>
        Please <a href="/Proekt7/CreateResourceCheckList.aspx">try again.</a>
    </p>
</asp:Content>
