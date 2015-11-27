<%@ Page Title="Resources Checklist" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ResourcesCheckList.aspx.cs" Inherits="ITMSAcademy.Proekt7.ResourcesCheckList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Mainbody" runat="server">
    <style type="text/css">
        section label {
            font-weight: normal;
        }

        #Mainbody_pnlResourceCheckListDetails {
            background-color: gainsboro;
            clear: both;
            margin-top: 20px;
        }

            #Mainbody_pnlResourceCheckListDetails table {
                background-color: gainsboro;
            }
    </style>

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <asp:SqlDataSource ID="ResourceCheckList" runat="server"
        ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
        SelectCommand="SELECT [ID], [LooseHousedFarmID], [LooseHousedDate], [LooseHousedAssessor], 
        [DairyCattleFarmID], [DairyCattleDate], [DairyCattleAssessor] FROM [ResourceChecklist]"></asp:SqlDataSource>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="panel-heading">
                <h2>Resources Checklist</h2>
            </div>

            <asp:GridView ID="gvResourceCheckList" runat="server"
                AllowPaging="True" AllowSorting="True"
                DataSourceID="ResourceCheckList" DataKeyNames="Id" AutoGenerateColumns="False" PageSize="5" Width="100%" EnableTheming="True" OnSelectedIndexChanged="gvResourceCheckList_SelectedIndexChanged" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CaptionAlign="Top" CellPadding="2" CellSpacing="3" GridLines="Vertical" HorizontalAlign="Center">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="#">
                        <HeaderStyle BackColor="#417AAA" Height="40px" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle Wrap="True" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="Loose housed dairy cattle">
                        <ItemTemplate>
                            <p>
                                Farm-ID:
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("LooseHousedFarmID") %>'></asp:Label>
                            </p>
                            <p>
                                Date:
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("LooseHousedDate", "{0:D}") %>'></asp:Label>
                            </p>
                            <p>
                                Assessor:
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("LooseHousedAssessor") %>'></asp:Label>
                            </p>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" BackColor="#417AAA" Height="40px" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Dairy cattle in tie stalls">
                        <ItemTemplate>
                            <p>
                                Farm-ID:
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("DairyCattleFarmID") %>'></asp:Label>
                            </p>
                            <p>
                                Date:
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("DairyCattleDate", "{0:D}") %>'></asp:Label>
                            </p>
                            <p>
                                Assessor:
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("DairyCattleAssessor") %>'></asp:Label>
                            </p>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" BackColor="#417AAA" Height="40px" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:CommandField SelectText="Details" ShowSelectButton="True">
                        <HeaderStyle BackColor="#417AAA" Height="40px" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Underline="True" ForeColor="#5589B5" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Top" />
                <PagerSettings NextPageText="Next" />
                <PagerStyle BackColor="#417AAA" ForeColor="White" HorizontalAlign="Center" Height="40px" VerticalAlign="Middle" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#296869" ForeColor="White" Font-Bold="False" Font-Italic="true" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>

            <asp:Panel ID="pnlResourceCheckListDetails" runat="server" Visible="false">

                <div class="panel-heading">
                    <h4 style="margin-top: 35px;">Loose housed dairy cattle</h4>
                </div>
                <div class="col-md-4 form-group">
                    Farm-ID:
                    <asp:Label ID="lblLooseHousedFarmID" runat="server" Text=""></asp:Label>
                </div>
                <div class="col-md-4 form-group">
                    Date:
                    <asp:Label ID="lblLooseHousedDate" runat="server" Text=""></asp:Label>
                </div>
                <div class="col-md-4 form-group">
                    Assessor:
                    <asp:Label ID="lblLooseHousedAssessor" runat="server" Text=""></asp:Label>
                </div>
                <table class="table table-bordered" style="border: 2px solid #000;">
                    <tbody>
                        <tr>
                            <td><strong>Pen no.: </strong></td>
                            <td colspan="2">
                                <asp:Label ID="lblLooseHousedPenNo" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Number of animals</td>
                            <td colspan="2">
                                <asp:Label ID="lblLooseHousedNrOfAnimals" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Number of water points per pen</td>
                            <td colspan="2">
                                <asp:Label ID="lblLooseHousedNrOfWaterPointsPerPen" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Number of animals using water points</td>
                            <td colspan="2">
                                <asp:Label ID="lblLooseHousedNrOfAnimalsWaterPoints" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>

                        <asp:Repeater ID="Repeater1" runat="server">
                            <HeaderTemplate>
                            </HeaderTemplate>

                            <ItemTemplate>
                                <tr>
                                    <td colspan="3" style="padding: 0;">
                                        <table class="table" style="border-top: 2px solid #000;">
                                            <tr>
                                                <td>
                                                    <strong>Water point <%# Eval("ItemNumber") %> </strong>
                                                    <br />
                                                    Type
                                                </td>
                                                <td>
                                                    <asp:RadioButtonList ID="Type" runat="server" Enabled="false">
                                                        <asp:ListItem Value="1">trough</asp:ListItem>
                                                        <asp:ListItem Value="2">tip-over trough</asp:ListItem>
                                                        <asp:ListItem Value="3">bowl</asp:ListItem>
                                                        <asp:ListItem Value="4">bowl with reservoir</asp:ListItem>
                                                        <asp:ListItem Value="5">trough with balls/anti-frost</asp:ListItem>
                                                        <asp:ListItem Value="6">nipple drinkers</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                                <td>
                                                    <asp:Label ID="TypeLength" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Cleanliness
                                                </td>
                                                <td colspan="2">
                                                    <asp:RadioButtonList ID="Cleanliness" runat="server" Enabled="false">
                                                        <asp:ListItem Value="1">no</asp:ListItem>
                                                        <asp:ListItem Value="2">partly</asp:ListItem>
                                                        <asp:ListItem Value="3">yes</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Are water points functioning?
                                                </td>
                                                <td colspan="2">
                                                    <asp:RadioButtonList ID="AreWaterPointsFunctioning" runat="server" Enabled="false">
                                                        <asp:ListItem Value="false">no</asp:ListItem>
                                                        <asp:ListItem Value="true">yes</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Water flow
                                                </td>
                                                <td colspan="2">
                                                    <asp:RadioButtonList ID="WaterFlow" runat="server" Enabled="false">
                                                        <asp:ListItem Value="1"><18l/min</asp:ListItem>
                                                        <asp:ListItem Value="2">>18l/min</asp:ListItem>
                                                        <asp:ListItem Value="3">rough/tip-over-tr.</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                            </FooterTemplate>
                        </asp:Repeater>

                    </tbody>
                </table>

                <div class="panel-heading">
                    <h4 style="margin-top: 35px;">Dairy cattle in tie stalls</h4>
                </div>
                <div class="col-md-4 form-group">
                    Farm-ID:
                    <asp:Label ID="lblDairyCattleFarmID" runat="server" Text=""></asp:Label>
                </div>
                <div class="col-md-4 form-group">
                    Date: 
                    <asp:Label ID="lblDairyCattleDate" runat="server" Text=""></asp:Label>
                </div>
                <div class="col-md-4 form-group">
                    Assessor: 
                    <asp:Label ID="lblDairyCattleAssessor" runat="server" Text=""></asp:Label>
                </div>
                <table class="table table-bordered" style="border: 2px solid #000;">
                    <tbody>
                        <tr>
                            <td>Number of animals
                            </td>
                            <td colspan="2">
                                <asp:Label ID="lblDairyCattleNrOfAnimals" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Average number of animals using one water point
                            </td>
                            <td colspan="2">
                                <asp:Label ID="lblDairyCattleAvgNrOfAnimals" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Type of water points
                            </td>
                            <td>
                                <asp:RadioButtonList ID="rdlDairyCattleTypeOfWaterPoints" runat="server" Enabled="false">
                                    <asp:ListItem Value="1">bowl</asp:ListItem>
                                    <asp:ListItem Value="2">bowl with reservoir</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td>diameter
                        <asp:Label ID="lblDairyCattleDiameter" runat="server" Text=""></asp:Label>
                                cm
                            </td>
                        </tr>
                        <tr>
                            <td>Are water points clean?
                            </td>
                            <td colspan="2">
                                <asp:RadioButtonList ID="rdlDairyCattleWaterPointsClean" runat="server" Enabled="false">
                                    <asp:ListItem Value="1">no</asp:ListItem>
                                    <asp:ListItem Value="2">partly</asp:ListItem>
                                    <asp:ListItem Value="3">yes</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>Are water points functioning?
                            </td>
                            <td colspan="2">
                                <asp:RadioButtonList ID="rdlDairyCattleAreWaterPointsFunctioning" runat="server" Enabled="false">
                                    <asp:ListItem Value="false">no</asp:ListItem>
                                    <asp:ListItem Value="true">yes</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>Water flow
                            </td>
                            <td colspan="2">
                                <asp:RadioButtonList ID="rdlDairyCattleWaterFlow" runat="server" Enabled="false">
                                    <asp:ListItem Value="1"><18l/min</asp:ListItem>
                                    <asp:ListItem Value="2">>18l/min</asp:ListItem>
                                    <asp:ListItem Value="3">rough/tip-over-tr.</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                    </tbody>
                </table>

            </asp:Panel>

        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
