<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="strana8.aspx.cs" Inherits="ITMSAcademy.proekt8.strana8" %>

<asp:Content ID="Mainbody" ContentPlaceHolderID="Mainbody" runat="server">



    <div class="panel-heading">

        <h2>Please Fullfill an "Clinical scoring-Loose housed dairy cattle" form </h2>





    </div>


    <div style="padding-top: 30px">

        <asp:Label ID="Label1" runat="server" Text="Transponder no."></asp:Label>



        <asp:TextBox ID="tbxFarmName" runat="server" CssClass="form-control"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
            ErrorMessage="Please insert number" ControlToValidate="tbxFarmName" Display="Dynamic"
            CssClass="validator-error" SetFocusOnError="True"></asp:RequiredFieldValidator>

    </div>




    <div style="padding-top: 30px">

        <asp:Label ID="Label2" runat="server" Text="Eartag no."></asp:Label>



        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
            ErrorMessage="Please insert number." ControlToValidate="TextBox1" Display="Dynamic"
            CssClass="validator-error" SetFocusOnError="True"></asp:RequiredFieldValidator>


    </div>


    <div style="padding-top: 30px">

        <asp:Label ID="Label4" runat="server" Text="Body condition score"></asp:Label>
        <asp:RadioButtonList ID="rb" runat="server">
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
        </asp:RadioButtonList>


        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic"
            ControlToValidate="rb" ErrorMessage="Please choose something">
        </asp:RequiredFieldValidator>


    </div>






    <div style="padding-top: 30px">
        <b>
            <asp:Label ID="Label5" runat="server" Text="Cleanliness" Font-Size="Large"></asp:Label>
        </b>

    </div>



    <div style="padding-top: 30px">

        <asp:Label ID="Label6" runat="server" Text="Legs"></asp:Label>
        <asp:RadioButtonList ID="rb1" runat="server">
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
        </asp:RadioButtonList>


        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic"
            ControlToValidate="rb1" ErrorMessage="Please choose something">
        </asp:RequiredFieldValidator>

    </div>

    <div style="padding-top: 30px">
        <asp:Label ID="Label7" runat="server" Text="Flank "></asp:Label>
        <asp:RadioButtonList ID="rb2" runat="server">
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
        </asp:RadioButtonList>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic"
            ControlToValidate="rb2" ErrorMessage="Please choose something">
        </asp:RequiredFieldValidator>
    </div>



    <div id="pokazi" style="padding-top: 30px">

        <asp:Label ID="Label8" runat="server" Text="Udder"></asp:Label>


        <asp:RadioButtonList ID="rb3" runat="server">
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
        </asp:RadioButtonList>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Dynamic"
            ControlToValidate="rb3" ErrorMessage="Please choose something">
        </asp:RequiredFieldValidator>
    </div>







    <div style="padding-top: 30px">
        <b>
            <asp:Label ID="Label10" runat="server" Text="Integument" Font-Size="Large"></asp:Label>
        </b>

    </div>



    <div style="padding-top: 30px">
        <asp:Label ID="Label11" runat="server" Text="Tarsus:"></asp:Label>
        <br />
        <asp:RadioButtonList ID="rb4" runat="server">
            <asp:ListItem>Hairless</asp:ListItem>
            <asp:ListItem>Lesion</asp:ListItem>
            <asp:ListItem>Swelling</asp:ListItem>
        </asp:RadioButtonList>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Display="Dynamic"
            ControlToValidate="rb4" ErrorMessage="Please choose something">
        </asp:RequiredFieldValidator>
    </div>

    <div style="padding-top: 30px">
        <asp:Label ID="Label9" runat="server" Text="Hindquarter:"></asp:Label>
        <br />

        <asp:RadioButtonList ID="rb5" runat="server">
            <asp:ListItem>Hairless</asp:ListItem>
            <asp:ListItem>Lesion</asp:ListItem>
            <asp:ListItem>Swelling</asp:ListItem>
        </asp:RadioButtonList>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Display="Dynamic"
            ControlToValidate="rb5" ErrorMessage="Please choose something">
        </asp:RequiredFieldValidator>
    </div>

    <div style="padding-top: 30px">
        <asp:Label ID="Label12" runat="server" Text="HindqNeck/shoulder/backuarter:"></asp:Label>
        <br />
        <asp:RadioButtonList ID="rb6" runat="server">
            <asp:ListItem>Hairless</asp:ListItem>
            <asp:ListItem>Lesion</asp:ListItem>
            <asp:ListItem>Swelling</asp:ListItem>
        </asp:RadioButtonList>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" Display="Dynamic"
            ControlToValidate="rb6" ErrorMessage="Please choose something">
        </asp:RequiredFieldValidator>
    </div>

    <div style="padding-top: 30px">
        <asp:Label ID="Label13" runat="server" Text="Carpus:"></asp:Label>
        <br />
        <asp:RadioButtonList ID="rb7" runat="server">
            <asp:ListItem>Hairless</asp:ListItem>
            <asp:ListItem>Lesion</asp:ListItem>
            <asp:ListItem>Swelling</asp:ListItem>
        </asp:RadioButtonList>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" Display="Dynamic"
            ControlToValidate="rb7" ErrorMessage="Please choose something">
        </asp:RequiredFieldValidator>
    </div>


    <div style="padding-top: 30px">
        <asp:Label ID="Label14" runat="server" Text="Flank/side/udder:"></asp:Label>
        <br />
        <asp:RadioButtonList ID="rb8" runat="server">
            <asp:ListItem>Hairless</asp:ListItem>
            <asp:ListItem>Lesion</asp:ListItem>
            <asp:ListItem>Swelling</asp:ListItem>
        </asp:RadioButtonList>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" Display="Dynamic"
            ControlToValidate="rb8" ErrorMessage="Please choose something">
        </asp:RequiredFieldValidator>
    </div>
    <div style="padding-top: 30px">
        <asp:Label ID="Label15" runat="server" Text="Other:"></asp:Label>
        <br />
        <asp:RadioButtonList ID="rb9" runat="server">
            <asp:ListItem>Hairless</asp:ListItem>
            <asp:ListItem>Lesion</asp:ListItem>
            <asp:ListItem>Swelling</asp:ListItem>
        </asp:RadioButtonList>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" Display="Dynamic"
            ControlToValidate="rb9" ErrorMessage="Please choose something">
        </asp:RequiredFieldValidator>
    </div>




    <div style="padding-top: 30px">
        <b>
            <asp:Label ID="Label22" runat="server" Text="Clinical signs" Font-Size="Large"></asp:Label>
        </b>

    </div>



    <div style="padding-top: 30px">
        <asp:Label ID="Label16" runat="server" Text="Nasal discharge:"></asp:Label>
        <br />
        <asp:RadioButtonList ID="rb10" runat="server">
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>

        </asp:RadioButtonList>


        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" Display="Dynamic"
            ControlToValidate="rb10" ErrorMessage="Please choose something">
        </asp:RequiredFieldValidator>
    </div>


    <div style="padding-top: 30px">
        <asp:Label ID="Label17" runat="server" Text="Ocular discharge:"></asp:Label>
        <br />
        <asp:RadioButtonList ID="rb11" runat="server">
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>

        </asp:RadioButtonList>


        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" Display="Dynamic"
            ControlToValidate="rb11" ErrorMessage="Please choose something">
        </asp:RequiredFieldValidator>
    </div>
    <div style="padding-top: 30px">
        <asp:Label ID="Label18" runat="server" Text="Hampered respiration:"></asp:Label>
        <br />
        <asp:RadioButtonList ID="rb12" runat="server">
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>

        </asp:RadioButtonList>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" Display="Dynamic"
            ControlToValidate="rb12" ErrorMessage="Please choose something">
        </asp:RequiredFieldValidator>
    </div>

    <div style="padding-top: 30px">
        <asp:Label ID="Label19" runat="server" Text="Diarrhoea:"></asp:Label>
        <br />
        <asp:RadioButtonList ID="rb13" runat="server">
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>

        </asp:RadioButtonList>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" Display="Dynamic"
            ControlToValidate="rb13" ErrorMessage="Please choose something">
        </asp:RequiredFieldValidator>
    </div>

    <div style="padding-top: 30px">
        <asp:Label ID="Label20" runat="server" Text="Vulvar discharge:"></asp:Label>
        <br />
        <asp:RadioButtonList ID="rb14" runat="server">
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>

        </asp:RadioButtonList>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" Display="Dynamic"
            ControlToValidate="rb14" ErrorMessage="Please choose something">
        </asp:RequiredFieldValidator>
    </div>

    <div style="padding-top: 30px">
        <asp:Label ID="Label21" runat="server" Text="Lameness:"></asp:Label>
        <br />
        <asp:RadioButtonList ID="rb15" runat="server">
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>

        </asp:RadioButtonList>


        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" Display="Dynamic"
            ControlToValidate="rb15" ErrorMessage="Please choose something">
        </asp:RequiredFieldValidator>

        <br />

        <br />



    </div>

    <div>
        <asp:Button ID="zacuvaj" runat="server" Text="Submit" OnClick="zacuvaj_Click1" Height="42px" Width="103px" />
        <br />
        <br />

        <asp:SqlDataSource ID="sqladd" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" InsertCommand="INSERT INTO proekt6(transponder_no, [Eartag no.], Breed, Legs, Flank, Udder, Tarsus, Hindquarter, [Neck/shoulder/back], Carpus, [Flank/side/udder], Other, [Nasal discharge], [Ocular discharge], [Hampered respiration], Diarrhoea, [Vulvar discharge], Lameness) VALUES (@transponderno, @Eartagno, @Breed, @Legs, @Flank, @Udder, @Tarsus, @Hindquarter, @Neckshoulderback, @Carpus, @Flanksideudder, @Other, @Nasaldischarge, @Oculardischarge, @Hamperedrespiration, @Diarrhoea, @Vulvardischarge, @Lameness)" SelectCommand="SELECT proekt6.* FROM proekt6">
            <InsertParameters>
                <asp:ControlParameter ControlID="tbxFarmName" Name="transponderno" />
                <asp:ControlParameter ControlID="TextBox1" Name="Eartagno" />
                <asp:ControlParameter ControlID="rb" Name="Breed" />
                <asp:ControlParameter ControlID="rb1" Name="Legs" />
                <asp:ControlParameter ControlID="rb2" Name="Flank" />
                <asp:ControlParameter ControlID="rb3" Name="Udder" />
                <asp:ControlParameter ControlID="rb4" Name="Tarsus" />
                <asp:ControlParameter ControlID="rb5" Name="Hindquarter" />

                <asp:ControlParameter ControlID="rb6" Name="Neckshoulderback" />
                <asp:ControlParameter ControlID="rb7" Name="Carpus" />

                <asp:ControlParameter ControlID="rb8" Name="Flanksideudder" />
                <asp:ControlParameter ControlID="rb9" Name="Other" />

                <asp:ControlParameter ControlID="rb10" Name="Nasaldischarge" />
                <asp:ControlParameter ControlID="rb11" Name="Oculardischarge" />

                <asp:ControlParameter ControlID="rb12" Name="Hamperedrespiration" />
                <asp:ControlParameter ControlID="rb13" Name="Diarrhoea" />

                <asp:ControlParameter ControlID="rb14" Name="Vulvardischarge" />
                <asp:ControlParameter ControlID="rb15" Name="Lameness" />





            </InsertParameters>
        </asp:SqlDataSource>

    </div>
    <div style="margin-left: -100px;">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="1024">
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





        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" SelectCommand="SELECT proekt6.* FROM proekt6"></asp:SqlDataSource>

    </div>


</asp:Content>




