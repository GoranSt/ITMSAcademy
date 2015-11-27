<%@ Page Title="Create Resource Checklist" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CreateResourceCheckList.aspx.cs" Inherits="ITMSAcademy.Proekt7.Agent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Mainbody" runat="server">
    <style type="text/css">
        section label {
            font-weight: normal;
        }
    </style>

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="panel-heading">
                <h3>Resources checklist</h3>
                <h4 style="margin-top: 35px;">Loose housed dairy cattle</h4>
            </div>

            <div class="col-md-4 form-group">
                Farm-ID:
                    <asp:TextBox ID="txtFarmdID" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" SetFocusOnError="True"
                    ErrorMessage="Farm-ID is required." CssClass="text-danger" ControlToValidate="txtFarmdID"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-4 form-group">
                Date:
                    <asp:Calendar ID="cldDate" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4"
                        DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px"
                        Width="100%">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
            </div>
            <div class="col-md-4 form-group">
                Assessor:
                    <asp:TextBox ID="txtAssessor" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" SetFocusOnError="True"
                    ErrorMessage="Assessor is required." CssClass="text-danger" ControlToValidate="txtAssessor"></asp:RequiredFieldValidator>
            </div>

            <table class="table table-bordered" style="border: 2px solid #000;">
                <tbody>
                    <tr>
                        <td><strong>Pen no.: </strong></td>
                        <td colspan="2">
                            <asp:TextBox ID="txtPenNo" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                ErrorMessage="Pen no. is required." CssClass="text-danger" SetFocusOnError="True"
                                ControlToValidate="txtPenNo"></asp:RequiredFieldValidator>
                            <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" CssClass="text-danger"
                                ControlToValidate="txtPenNo" ErrorMessage="Pen no. must be a whole number" SetFocusOnError="True" />
                        </td>
                    </tr>
                    <tr>
                        <td>Number of animals</td>
                        <td colspan="2">
                            <asp:TextBox ID="txtNrOfAnimals" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" SetFocusOnError="True"
                                ErrorMessage="Number of animals is required." CssClass="text-danger" ControlToValidate="txtNrOfAnimals"></asp:RequiredFieldValidator>
                            <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" CssClass="text-danger" SetFocusOnError="True"
                                ControlToValidate="txtNrOfAnimals" ErrorMessage="Number of animals must be a whole number" />
                        </td>
                    </tr>
                    <tr>
                        <td>Number of water points per pen</td>
                        <td colspan="2">
                            <asp:TextBox ID="txtNrOfWaterPointsPerPen" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                ErrorMessage=" Number of water points per pen is required." CssClass="text-danger"
                                ControlToValidate="txtNrOfWaterPointsPerPen" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" CssClass="text-danger" SetFocusOnError="True"
                                ControlToValidate="txtNrOfWaterPointsPerPen" ErrorMessage="Number of water points per pen must be a whole number" />
                        </td>
                    </tr>
                    <tr>
                        <td>Number of animals using water points</td>
                        <td colspan="2">
                            <asp:TextBox ID="txtNrOfAnimalsWaterPoints" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" SetFocusOnError="True"
                                ErrorMessage="Number of animals using water points is required." CssClass="text-danger"
                                ControlToValidate="txtNrOfAnimalsWaterPoints"></asp:RequiredFieldValidator>
                            <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" CssClass="text-danger" SetFocusOnError="True"
                                ControlToValidate="txtNrOfAnimalsWaterPoints" ErrorMessage="Number of animals using water points must be a whole number" />
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
                                                <asp:RadioButtonList ID="Type" runat="server">
                                                    <asp:ListItem Value="1">trough</asp:ListItem>
                                                    <asp:ListItem Value="2">tip-over trough</asp:ListItem>
                                                    <asp:ListItem Value="3">bowl</asp:ListItem>
                                                    <asp:ListItem Value="4">bowl with reservoir</asp:ListItem>
                                                    <asp:ListItem Value="5">trough with balls/anti-frost</asp:ListItem>
                                                    <asp:ListItem Value="6">nipple drinkers</asp:ListItem>
                                                </asp:RadioButtonList>

                                                <asp:RequiredFieldValidator ControlToValidate="Type" CssClass="text-danger" SetFocusOnError="True"
                                                    ID="RequiredFieldValidator6" runat="server" ErrorMessage="Type is required.">
                                                </asp:RequiredFieldValidator>
                                            </td>
                                            <td>length (cm)
                                    <asp:TextBox ID="TypeLength" CssClass="form-control" runat="server"></asp:TextBox>
                                                <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" CssClass="text-danger"
                                                    ControlToValidate="TypeLength" ErrorMessage="Length must be a whole number" SetFocusOnError="True" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Cleanliness
                                            </td>
                                            <td colspan="2">
                                                <asp:RadioButtonList ID="Cleanliness" runat="server" RepeatDirection="Horizontal">
                                                    <asp:ListItem Value="1">no</asp:ListItem>
                                                    <asp:ListItem Value="2">partly</asp:ListItem>
                                                    <asp:ListItem Value="3">yes</asp:ListItem>
                                                </asp:RadioButtonList>

                                                <asp:RequiredFieldValidator ControlToValidate="Cleanliness" CssClass="text-danger" SetFocusOnError="True"
                                                    ID="RequiredFieldValidator7" runat="server" ErrorMessage="Cleanliness is required.">
                                                </asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Are water points functioning?
                                            </td>
                                            <td colspan="2">
                                                <asp:RadioButtonList ID="AreWaterPointsFunctioning" runat="server" RepeatDirection="Horizontal">
                                                    <asp:ListItem Value="false">no</asp:ListItem>
                                                    <asp:ListItem Value="true">yes</asp:ListItem>
                                                </asp:RadioButtonList>

                                                <asp:RequiredFieldValidator ControlToValidate="AreWaterPointsFunctioning" CssClass="text-danger"
                                                    ID="RequiredFieldValidator8" SetFocusOnError="True" runat="server" ErrorMessage="Are water points functioning is required.">
                                                </asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Water flow
                                            </td>
                                            <td colspan="2">
                                                <asp:RadioButtonList ID="WaterFlow" runat="server" RepeatDirection="Horizontal">
                                                    <asp:ListItem Value="1"><18l/min</asp:ListItem>
                                                    <asp:ListItem Value="2">>18l/min</asp:ListItem>
                                                    <asp:ListItem Value="3">rough/tip-over-tr.</asp:ListItem>
                                                </asp:RadioButtonList>

                                                <asp:RequiredFieldValidator ControlToValidate="WaterFlow" CssClass="text-danger" SetFocusOnError="True"
                                                    ID="RequiredFieldValidator9" runat="server" ErrorMessage="Water flow is required.">
                                                </asp:RequiredFieldValidator>
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
                    <asp:TextBox ID="txtFarmID2" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" SetFocusOnError="True"
                    ErrorMessage="Farm-ID is required." CssClass="text-danger" ControlToValidate="txtFarmID2"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-4 form-group">
                Date:
                    <asp:Calendar ID="cldDate2" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4"
                        DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black"
                        Height="180px" Width="100%">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
            </div>
            <div class="col-md-4 form-group">
                Assessor:
                    <asp:TextBox ID="txtAssessor2" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" SetFocusOnError="True"
                    ErrorMessage="Assessor is required." CssClass="text-danger" ControlToValidate="txtAssessor2"></asp:RequiredFieldValidator>
            </div>

            <table class="table table-bordered" style="border: 2px solid #000;">
                <tbody>
                    <tr>
                        <td>Number of animals
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="txtNrOfAnimals2" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" SetFocusOnError="True"
                                ErrorMessage="Number of animals is required." CssClass="text-danger"
                                ControlToValidate="txtNrOfAnimals2"></asp:RequiredFieldValidator>
                            <asp:CompareValidator runat="server" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer" CssClass="text-danger"
                                ControlToValidate="txtNrOfAnimals2" ErrorMessage="Number of animals must be a whole number" />
                        </td>
                    </tr>
                    <tr>
                        <td>Average number of animals using one water point
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="txtAvgNrOfAnimals2" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" SetFocusOnError="True"
                                ErrorMessage="Average number of animals using one water point is required." CssClass="text-danger" ControlToValidate="txtAvgNrOfAnimals2"></asp:RequiredFieldValidator>
                            <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" SetFocusOnError="True" CssClass="text-danger"
                                ControlToValidate="txtAvgNrOfAnimals2" ErrorMessage="Average number of animals using one water point must be a whole number" />
                        </td>
                    </tr>
                    <tr>
                        <td>Type of water points
                        </td>
                        <td>
                            <asp:RadioButtonList ID="rdlTypeOfWaterPoints" runat="server">
                                <asp:ListItem Value="1">bowl:</asp:ListItem>
                                <asp:ListItem Value="2">bowl with reservoir:</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ControlToValidate="rdlTypeOfWaterPoints" SetFocusOnError="True" CssClass="text-danger"
                                ID="RequiredFieldValidator9" runat="server" ErrorMessage="Type of water points is required.">
                            </asp:RequiredFieldValidator>
                        </td>
                        <td>diameter (cm)
                        <asp:TextBox ID="txtDiameter" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:CompareValidator runat="server" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer" CssClass="text-danger"
                                ControlToValidate="txtDiameter" ErrorMessage="Length must be a whole number" />
                        </td>
                    </tr>
                    <tr>
                        <td>Are water points clean?
                        </td>
                        <td colspan="2">
                            <asp:RadioButtonList ID="Cleanliness2" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1">no</asp:ListItem>
                                <asp:ListItem Value="2">partly</asp:ListItem>
                                <asp:ListItem Value="3">yes</asp:ListItem>
                            </asp:RadioButtonList>

                            <asp:RequiredFieldValidator ControlToValidate="Cleanliness2" SetFocusOnError="True" CssClass="text-danger"
                                ID="RequiredFieldValidator7" runat="server" ErrorMessage="Cleanliness is required.">
                            </asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Are water points functioning?
                        </td>
                        <td colspan="2">
                            <asp:RadioButtonList ID="AreWaterPointsFunctioning2" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="false">no</asp:ListItem>
                                <asp:ListItem Value="true">yes</asp:ListItem>
                            </asp:RadioButtonList>

                            <asp:RequiredFieldValidator ControlToValidate="AreWaterPointsFunctioning2" CssClass="text-danger" SetFocusOnError="True"
                                ID="RequiredFieldValidator8" runat="server" ErrorMessage="Are water points functioning is required.">
                            </asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Water flow
                        </td>
                        <td colspan="2">
                            <asp:RadioButtonList ID="WaterFlow2" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1"><18l/min</asp:ListItem>
                                <asp:ListItem Value="2">>18l/min</asp:ListItem>
                                <asp:ListItem Value="3">rough/tip-over-tr.</asp:ListItem>
                            </asp:RadioButtonList>

                            <asp:RequiredFieldValidator ControlToValidate="WaterFlow2" CssClass="text-danger" SetFocusOnError="True"
                                ID="RequiredFieldValidator14" runat="server" ErrorMessage="Water flow is required.">
                            </asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>

        </ContentTemplate>

    </asp:UpdatePanel>

    <asp:Button runat="server" CssClass="navbar-btn btn-success btn pull-left" Text="Save changes" ID="btnSave" OnClick="btnSave_Click" />

</asp:Content>
