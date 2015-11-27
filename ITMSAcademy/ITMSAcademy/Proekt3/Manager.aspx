<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Manager.aspx.cs" Inherits="ITMSAcademy.Proekt3.Manager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Mainbody" runat="server">

    <div class="panel-heading">
        <center> <h2> Qualitative Behaviour Assessment </h2> </center>
         <center> <h2 > <b>  Manager View </b></h2>  </center>

         </div>
    &nbsp;
    &nbsp;

    <div style="margin-bottom:100px" class="text-center">
                        FarmName : <asp:Label ID="lblfarm" runat="server" Text="" CssClass="label label-default"></asp:Label>
                        Date : <asp:Label ID="lblDate" runat="server" Text=""  CssClass="label label-default"></asp:Label>
                        Assessor : <asp:Label ID="lblAssessor" runat="server" Text=""  CssClass="label label-default"></asp:Label>
                        Page : <asp:Label ID="lblPage" runat="server" Text=""  CssClass="label label-default"></asp:Label>
                    </div>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SQLGrid" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText=" ">   
         <ItemTemplate>
                 <%# Container.DataItemIndex + 1 %>   
         </ItemTemplate>

           </asp:TemplateField>
            <asp:BoundField DataField="TimeOfDay" HeaderText="TimeOfDay" SortExpression="TimeOfDay" />
            <asp:BoundField DataField="Farm" HeaderText="Farm" SortExpression="Farm" />
            <asp:BoundField DataField="HousingUnit" HeaderText="HousingUnit" SortExpression="HousingUnit" />
            <asp:BoundField DataField="column1" HeaderText="column1" SortExpression="column1" />
            <asp:BoundField DataField="Breed" HeaderText="Breed" SortExpression="Breed" />
            <asp:BoundField DataField="Active" HeaderText="Active" SortExpression="Active" />
            <asp:BoundField DataField="Relaxed" HeaderText="Relaxed" SortExpression="Relaxed" />
            <asp:BoundField DataField="Fearful" HeaderText="Fearful" SortExpression="Fearful" />
            <asp:BoundField DataField="Agitated" HeaderText="Agitated" SortExpression="Agitated" />
            <asp:BoundField DataField="Calm" HeaderText="Calm" SortExpression="Calm" />
            <asp:BoundField DataField="Content" HeaderText="Content" SortExpression="Content" />
            <asp:BoundField DataField="Indifferent" HeaderText="Indifferent" SortExpression="Indifferent" />
            <asp:BoundField DataField="Frustrated" HeaderText="Frustrated" SortExpression="Frustrated" />
        </Columns>
        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    &nbsp;
    &nbsp;
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlGrid2" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText=" ">   
         <ItemTemplate>
                 <%# Container.DataItemIndex + 1 %>   
         </ItemTemplate>

           </asp:TemplateField>
            <asp:BoundField DataField="Friendly" HeaderText="Friendly" SortExpression="Friendly" />
            <asp:BoundField DataField="Bored" HeaderText="Bored" SortExpression="Bored" />
            <asp:BoundField DataField="Playful" HeaderText="Playful" SortExpression="Playful" />
            <asp:BoundField DataField="Positively_occupied" HeaderText="Positively_occupied" SortExpression="Positively_occupied" />
            <asp:BoundField DataField="Lively" HeaderText="Lively" SortExpression="Lively" />
            <asp:BoundField DataField="Inquisitive" HeaderText="Inquisitive" SortExpression="Inquisitive" />
            <asp:BoundField DataField="Irritable" HeaderText="Irritable" SortExpression="Irritable" />
            <asp:BoundField DataField="column1" HeaderText="column1" SortExpression="column1" />
            <asp:BoundField DataField="Sociable" HeaderText="Sociable" SortExpression="Sociable" />
            <asp:BoundField DataField="Apathetic" HeaderText="Apathetic" SortExpression="Apathetic" />
            <asp:BoundField DataField="Happy" HeaderText="Happy" SortExpression="Happy" />
            <asp:BoundField DataField="Distressed" HeaderText="Distressed" SortExpression="Distressed" />
        </Columns>
        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SQLGrid" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" SelectCommand="SELECT [TimeOfDay], [Farm], [HousingUnit], [No.OfAnimals] AS column1, [Breed], [Active], [Relaxed], [Fearful], [Agitated], [Calm], [Content], [Indifferent], [Frustrated] FROM [Project3]"></asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlGrid2" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" SelectCommand="SELECT [Friendly], [Bored], [Playful], [Positively occupied] AS Positively_occupied, [Lively], [Inquisitive], [Irritable], [Calmless/Uneasy] AS column1, [Sociable], [Apathetic], [Happy], [Distressed] FROM [Project3]"></asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SQLName" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" SelectCommand="SELECT [Farm] FROM [Project3]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SQLDate" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" SelectCommand="SELECT [Date] FROM [Project3]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SQLAssessor" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" SelectCommand="SELECT [Assessor] FROM [Project3]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SQLPage" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" SelectCommand="SELECT [Page] FROM [Project3]"></asp:SqlDataSource>
</asp:Content>
