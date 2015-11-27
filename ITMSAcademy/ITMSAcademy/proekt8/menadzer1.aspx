<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="menadzer1.aspx.cs" Inherits="ITMSAcademy.proekt8.strana8" %>
<asp:Content ID="Mainbody" ContentPlaceHolderID="Mainbody" runat="server">
   
    
      <h2>Преглед на менаџерот:</h2>


          <div style="margin-bottom:20px">
                        Farm:_____  <asp:Label ID="lblfarm" runat="server" Text="" CssClass="label label-default"></asp:Label>
                        Date:_____  <asp:Label ID="lblDate" runat="server" Text=""  CssClass="label label-default"></asp:Label>
                        Observer:_____  <asp:Label ID="lblObserver" runat="server" Text=""  CssClass="label label-default"></asp:Label>
                        Page:_____ <asp:Label ID="lblPage" runat="server" Text=""  CssClass="label label-default"></asp:Label>
          </div>

    
        <asp:SqlDataSource ID="sqlfarma" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" SelectCommand="SELECT [Farmer] FROM [Farmicka]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="sqldate" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" SelectCommand="SELECT [Date] FROM [Farmicka]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="sqlob" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" SelectCommand="SELECT [Observer] FROM [Farmicka]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="sqlpage" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" SelectCommand="SELECT [Page] FROM [Farmicka]"></asp:SqlDataSource>
        

    
   <div style="margin-left: -100px;">
       <asp:SqlDataSource ID="sqlmenadzer" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" SelectCommand="SELECT proekt6.* FROM proekt6"></asp:SqlDataSource>
       <asp:GridView ID="gridmenazder" runat="server" AutoGenerateColumns="False" DataSourceID="sqlmenadzer" Width="1024">
           <Columns>
               <asp:BoundField DataField="transponder_no" HeaderText="transponder no" SortExpression="transponder_no" />
               <asp:BoundField DataField="Eartag no." HeaderText="Eartag no." SortExpression="Eartag no." />
               <asp:BoundField DataField="Breed" HeaderText="Breed" SortExpression="Breed" />
               <asp:BoundField DataField="Legs" HeaderText="Legs" SortExpression="Legs" />
               <asp:BoundField DataField="Flank" HeaderText="Flank" SortExpression="Flank" />
               <asp:BoundField DataField="Udder" HeaderText="Udder" SortExpression="Udder" />
               <asp:BoundField DataField="Tarsus" HeaderText="Tarsus" SortExpression="Tarsus" />
               <asp:BoundField DataField="Hindquarter" HeaderText="Hindquarter" SortExpression="Hindquarter" />
               <asp:BoundField DataField="Neck/shoulder/back" HeaderText="Neck shoulder back" SortExpression="Neck/shoulder/back" />
               <asp:BoundField DataField="Carpus" HeaderText="Carpus" SortExpression="Carpus" />
               <asp:BoundField DataField="Flank/side/udder" HeaderText="Flank side udder" SortExpression="Flank/side/udder" />
               <asp:BoundField DataField="Other" HeaderText="Other" SortExpression="Other" />
               <asp:BoundField DataField="Nasal discharge" HeaderText="Nasal discharge" SortExpression="Nasal discharge" />
               <asp:BoundField DataField="Ocular discharge" HeaderText="Ocular discharge" SortExpression="Ocular discharge" />
               <asp:BoundField DataField="Hampered respiration" HeaderText="Hampered respiration" SortExpression="Hampered respiration" />
               <asp:BoundField DataField="Diarrhoea" HeaderText="Diarrhoea" SortExpression="Diarrhoea" />
               <asp:BoundField DataField="Vulvar discharge" HeaderText="Vulvar discharge" SortExpression="Vulvar discharge" />
               <asp:BoundField DataField="Lameness" HeaderText="Lameness" SortExpression="Lameness" />
           </Columns>
       </asp:GridView>
     
   </div>
</asp:Content>