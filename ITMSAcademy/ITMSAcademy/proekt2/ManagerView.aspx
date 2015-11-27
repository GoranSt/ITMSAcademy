<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ManagerView.aspx.cs" Inherits="ITMSAcademy.proekt2.ManagerView" %>

<asp:Content ID="Content3" ContentPlaceHolderID="Mainbody" runat="server">

   
    


        <div style="margin-bottom:20px">
                        Farm : <asp:Label ID="lblfarm" runat="server" Text="" CssClass="label label-default"></asp:Label>
                        Date : <asp:Label ID="lblDate" runat="server" Text=""  CssClass="label label-default"></asp:Label>
                        Observer : <asp:Label ID="lblObserver" runat="server" Text=""  CssClass="label label-default"></asp:Label>
                        Page : <asp:Label ID="lblPage" runat="server" Text=""  CssClass="label label-default"></asp:Label>
                    </div>


    <div>
         
             <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="sqlgrid" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                          <asp:TemplateField HeaderText=" ">   
         <ItemTemplate>
                 <%# Container.DataItemIndex + 1 %>   
         </ItemTemplate>
     </asp:TemplateField>
                        <asp:BoundField DataField="Group/pen" HeaderText="Group/pen" SortExpression="Group/pen" />
                        <asp:BoundField DataField="Collar No" HeaderText="Collar No" SortExpression="Collar No" />
                        <asp:BoundField DataField="Ear tag no." HeaderText="Ear tag no." SortExpression="Ear tag no." />
                        <asp:BoundField DataField="test1" HeaderText="test1" SortExpression="test1" />
                        <asp:BoundField DataField="test2(retest)" HeaderText="test2(retest)" SortExpression="test2(retest)" />
                        <asp:BoundField DataField="remarks" HeaderText="remarks" SortExpression="remarks" />
                    </Columns>

                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>

                <asp:SqlDataSource ID="sqlgrid" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" SelectCommand="SELECT [Group/pen], [Collar No], [Ear tag no.], test1, [test2(retest)], remarks FROM Project2"></asp:SqlDataSource>
           

            </div>
            <div class="clear-fix"></div>
    <asp:SqlDataSource ID="sqlfarm" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" SelectCommand="SELECT Farm FROM Project2"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlDate" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" SelectCommand="SELECT Date FROM Project2"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlObserver" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" SelectCommand="SELECT Observer FROM Project2"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlPage" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" SelectCommand="SELECT Page FROM Project2"></asp:SqlDataSource>

</asp:Content>
