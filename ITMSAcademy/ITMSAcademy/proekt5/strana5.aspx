<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="strana5.aspx.cs" Inherits="ITMSAcademy.proekt5.strana5" %>

<asp:Content ID="Mainbody" ContentPlaceHolderID="Mainbody" runat="server">
   
 
   
    <div class="panel-heading"><h2> Behaviour observations. Time needed for lying down and collisions with housing equipment </h2></div>
    

    
   
   
         <div style="padding-top:30px">
           
                Segment:
           
           
                <asp:TextBox ID="tbxfarmer" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red"
                    ErrorMessage="Внесете segment." ControlToValidate="tbxfarmer" Display="Dynamic"
                    CssClass="validator-error" SetFocusOnError="True"></asp:RequiredFieldValidator>
            
           
        </div>
         <div style="padding-top:15px">
           
                Pen:
           
            
                <asp:TextBox ID="txtdate" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red"
                    ErrorMessage="Внесете pen." ControlToValidate="txtdate" Display="Dynamic"
                    CssClass="validator-error" SetFocusOnError="True"></asp:RequiredFieldValidator>
           
           
        </div>
         <div style="padding-top:15px">
         
                Start:
            
           
                <asp:TextBox ID="txtobserver" runat="server" CssClass="form-control"></asp:TextBox>
             <asp:RangeValidator runat="server" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="400" ControlToValidate="txtobserver" ErrorMessage="Внесете почеток." />
               <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ErrorMessage="Внесете почеток." ControlToValidate="txtobserver" Display="Dynamic"
                    CssClass="validator-error" SetFocusOnError="True"></asp:RequiredFieldValidator>--%>
           
          
        </div>
            <div style="padding-top:15px">
           
                End:
            
            
                <asp:TextBox ID="txtpage" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RangeValidator runat="server" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="400" ControlToValidate="txtpage" ErrorMessage="Внесете крај." />
               <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                    ErrorMessage="Внесете крај." ControlToValidate="txtpage" Display="Dynamic"
                    CssClass="validator-error" SetFocusOnError="True"></asp:RequiredFieldValidator>--%>
           
        
        </div>

          <div style="padding-top:15px">
            
                Duration min:
            
            
                <asp:TextBox ID="txtsec" runat="server" CssClass="form-control"></asp:TextBox>
              <asp:RangeValidator runat="server" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="400" ControlToValidate="txtsec" ErrorMessage="Внесете duration min." />
<%--                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                    ErrorMessage="Внесете duration min." ControlToValidate="txtsec" Display="Dynamic"
                    CssClass="validator-error" SetFocusOnError="True"></asp:RequiredFieldValidator>--%>
           
           
        </div>
      
         <div style="padding-top:15px">
         
                Standing:
            
            
                <asp:TextBox ID="txtstanding" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="Red"
                    ErrorMessage="Внесете standing." ControlToValidate="txtsec" Display="Dynamic"
                    CssClass="validator-error" SetFocusOnError="True"></asp:RequiredFieldValidator>
           </div>
           
        
        <div style="padding-top:15px">
           <%-- <asp:RadioButton ID="rb1" runat="server" GroupName="br"/>Feeding <br /> <br />
            <asp:RadioButton ID="rb2" runat="server" GroupName="br" />Drinking  --%>
            <asp:RadioButtonList ID="rb" runat="server" 
                RepeatDirection="Vertical" RepeatLayout="Table">
                <asp:ListItem Text="Feeding" Value="Feeding"></asp:ListItem>
                <asp:ListItem Text="Drinking" Value="Drinking"></asp:ListItem>
            </asp:RadioButtonList>            
            
         
          </div>
      
     
             
        <div style="padding-top:15px">
            
                Lying:
            
          
                <asp:TextBox ID="txtheard" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ForeColor="Red" 
                    ErrorMessage="Внесете lying." ControlToValidate="txtheard" Display="Dynamic"
                    CssClass="validator-error" SetFocusOnError="True"></asp:RequiredFieldValidator>
          
          
        </div>
            <div style="padding-top:15px">
            
                Sum:
            
          
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RangeValidator runat="server" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="5000000" ControlToValidate="TextBox1" ErrorMessage="Внесете sum." />
<%--                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                    ErrorMessage="Внесете sum." ControlToValidate="txtheard" Display="Dynamic"
                    CssClass="validator-error" SetFocusOnError="True"></asp:RequiredFieldValidator>--%>
          
          
        </div>

            <div style="padding-top:15px">
            
                Lyout:
            
          
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ForeColor="Red" ErrorMessage="Внесете lyout." ControlToValidate="txtheard" Display="Dynamic"
                    CssClass="validator-error" SetFocusOnError="True"></asp:RequiredFieldValidator>
          
          
        </div>    
            <div style="padding-top:15px">
            
                Lyout no statement:
            
          
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ForeColor="Red"
                    ErrorMessage="Внесете lyout no statement." ControlToValidate="txtheard" Display="Dynamic"
                    CssClass="validator-error" SetFocusOnError="True"></asp:RequiredFieldValidator>
          
          
        </div>
            <div style="padding-top:15px">
            
                Headbutt:
            
          
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ForeColor="Red"
                    ErrorMessage="Внесете Headbutt." ControlToValidate="txtheard" Display="Dynamic"
                    CssClass="validator-error" SetFocusOnError="True"></asp:RequiredFieldValidator>
          
          
        </div>
            <div style="padding-top:15px">
            
                Displacement:
            
          
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ForeColor="Red"
                    ErrorMessage="Внесете име." ControlToValidate="txtheard" Display="Dynamic"
                    CssClass="validator-error" SetFocusOnError="True"></asp:RequiredFieldValidator>
          
          
        </div>
            <div style="padding-top:15px">
            
                Fighting:
            
          
                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ForeColor="Red"
                    ErrorMessage="Внесете Fighting." ControlToValidate="txtheard" Display="Dynamic"
                    CssClass="validator-error" SetFocusOnError="True"></asp:RequiredFieldValidator>
          
          
        </div>
            <div style="padding-top:15px">
            
                Chasing:
            
          
                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ForeColor="Red"
                    ErrorMessage="Внесете Chasing." ControlToValidate="txtheard" Display="Dynamic"
                    CssClass="validator-error" SetFocusOnError="True"></asp:RequiredFieldValidator>
          
          
        </div>
            <div style="padding-top:15px">
            
                Chasing up:
            
          
                <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ForeColor="Red"
                    ErrorMessage="Внесете Chasing up." ControlToValidate="txtheard" Display="Dynamic"
                    CssClass="validator-error" SetFocusOnError="True"></asp:RequiredFieldValidator>
          
          
        </div>
            <div style="padding-top:15px">
            
                Coughing:
            
          
                <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ForeColor="Red"
                    ErrorMessage="Внесете Coughing." ControlToValidate="txtheard" Display="Dynamic"
                    CssClass="validator-error" SetFocusOnError="True"></asp:RequiredFieldValidator>
          
          
        </div>
            <div style="padding-top:15px">
            
                Remarks:
            
          
                <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ForeColor="Red"
                    ErrorMessage="Внесете Remarks." ControlToValidate="txtheard" Display="Dynamic"
                    CssClass="validator-error" SetFocusOnError="True"></asp:RequiredFieldValidator>
          
          
        </div>
        <div style="padding-top:30px; padding-bottom:30px" >
          
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
                <asp:Button ID="zacuvaj" runat="server" Text="Submit" OnClick="zacuvaj_Click" CausesValidation=true CssClass="btn-danger" Height="42px" Width="103px" />

            
          
    <asp:SqlDataSource ID="sqladd" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" InsertCommand="INSERT INTO proekt3 (Segment, Pen, Start, [End], [Duration min], Standing, [Feeding or Drinking], Lying, Sum, Lyout, [Lyout no statement], Headbutt, Displacement, Fighting, Chasing, [Chasing up], Coughing, remarks) VALUES (@Segment,@Pen,@Start, @End ,@Durationmin,@Standing,@FeedingorDrinking,@Lying,@Sum,@Lyout,@Lyoutnostatement,@Headbutt,@Displacement,@Fighting,@Chasing, @Chasingup,@Coughing,@remarks)" SelectCommand="SELECT Segment, Pen, Start, [End], [Duration min], Standing, [Feeding or Drinking], Lying, Sum, Lyout, [Lyout no statement], Headbutt, Displacement, Fighting, Chasing, [Chasing up], Coughing, remarks FROM proekt3">
        <InsertParameters>
         
            <asp:ControlParameter ControlID="tbxfarmer" Name="Segment" />

            <asp:ControlParameter ControlID="txtdate" Name="Pen"/>

            <asp:ControlParameter ControlID="txtobserver" Name="Start" />
           
            <asp:ControlParameter ControlID="txtpage" Name="End" />
           
            <asp:ControlParameter ControlID="txtsec" Name="Durationmin" />
          
            <asp:ControlParameter ControlID="txtstanding" Name="Standing" />

            <%--<asp:Parameter Name="FeedingorDrinking" />--%>
            <asp:ControlParameter ControlID="rb" Name="FeedingorDrinking" />
            <%--//<asp:ControlParameter ControlID="rb2" Name="FeedingorDrinking" />--%>
            <asp:ControlParameter ControlID="txtheard" Name="Lying" />
           
            <asp:ControlParameter ControlID="TextBox1" Name="Sum" />
           
            <asp:ControlParameter ControlID="TextBox2" Name="Lyout" />
            
            <asp:ControlParameter ControlID="TextBox3" Name="Lyoutnostatement" />
           
            <asp:ControlParameter ControlID="TextBox4" Name="Headbutt" />
           
            <asp:ControlParameter ControlID="TextBox5" Name="Displacement" />
          
            <asp:ControlParameter ControlID="TextBox6" Name="Fighting" />
            
            <asp:ControlParameter ControlID="TextBox7" Name="Chasing" />

            <asp:ControlParameter ControlID="TextBox8" Name="Chasingup" />
          
            <asp:ControlParameter ControlID="TextBox9" Name="Coughing" />
            
            <asp:ControlParameter ControlID="TextBox10" Name="remarks" />
        </InsertParameters>
                </asp:SqlDataSource>
            
          
        </div>
   <div style="margin-left:-90px;">

   <asp:GridView ID="gridagent" runat="server" AutoGenerateColumns="False" DataSourceID="sqlagent" Width="1026px">
        <Columns>
            <asp:BoundField DataField="Segment" HeaderText="Segment" SortExpression="Segment" />
            <asp:BoundField DataField="Pen" HeaderText="Pen" SortExpression="Pen" />
            <asp:BoundField DataField="Start" HeaderText="Start" SortExpression="Start" />
            <asp:BoundField DataField="End" HeaderText="End" SortExpression="End" />
            <asp:BoundField DataField="Duration min" HeaderText="Duration min" SortExpression="Duration min" />
            <asp:BoundField DataField="Standing" HeaderText="Standing" SortExpression="Standing" />
            <asp:BoundField DataField="Feeding or Drinking" HeaderText="Feeding or Drinking" SortExpression="Feeding or Drinking" />
            <asp:BoundField DataField="Lying" HeaderText="Lying" SortExpression="Lying" />
            <asp:BoundField DataField="Sum" HeaderText="Sum" SortExpression="Sum" />
            <asp:BoundField DataField="Lyout" HeaderText="Lyout" SortExpression="Lyout" />
            <asp:BoundField DataField="Lyout no statement" HeaderText="Lyout no statement" SortExpression="Lyout no statement" />
            <asp:BoundField DataField="Headbutt" HeaderText="Headbutt" SortExpression="Headbutt" />
            <asp:BoundField DataField="Displacement" HeaderText="Displacement" SortExpression="Displacement" />
            <asp:BoundField DataField="Fighting" HeaderText="Fighting" SortExpression="Fighting" />
            <asp:BoundField DataField="Chasing" HeaderText="Chasing" SortExpression="Chasing" />
            <asp:BoundField DataField="Chasing up" HeaderText="Chasing up" SortExpression="Chasing up" />
            <asp:BoundField DataField="Coughing" HeaderText="Coughing" SortExpression="Coughing" />
            <asp:BoundField DataField="remarks" HeaderText="remarks" SortExpression="remarks" />
        </Columns>
    </asp:GridView>
  
    <asp:SqlDataSource ID="sqlagent" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" SelectCommand="SELECT * FROM [proekt3]"></asp:SqlDataSource>
     </div>
        <%--<asp:SqlDataSource ID="sqladd" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" InsertCommand="INSERT INTO proekt3(Farmer, Date, Observer, Page, [Duration sec], yes, no, [not observed/head]) VALUES (@Farmer, @Date, @Observer, @Page, @Dur, @yes, @no, @head)" SelectCommand="SELECT Farmer, Date, Observer, Page, [Duration sec], yes, no, [not observed/head] FROM proekt3">
            <InsertParameters>
                
                <asp:ControlParameter ControlID="tbxfarmer" Name="Farmer" />
                <asp:ControlParameter ControlID="txtdate" Name="Date" />
                <asp:ControlParameter ControlID="txtobserver" Name="Observer" />
                <asp:ControlParameter ControlID="txtpage" Name="Page" />
                <asp:ControlParameter ControlID="txtsec" Name="Dur" />
                <asp:ControlParameter ControlID="ryes" Name="yes" />
                <asp:ControlParameter ControlID="rbno" Name="no" />
                <asp:ControlParameter ControlID="txtheard" Name="head" />
            </InsertParameters>
         </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="sqlgrid">
            <Columns>
                <asp:BoundField DataField="Farmer" HeaderText="Farmer" SortExpression="Farmer" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Observer" HeaderText="Observer" SortExpression="Observer" />
                <asp:BoundField DataField="Page" HeaderText="Page" SortExpression="Page" />
                <asp:BoundField DataField="Duration sec" HeaderText="Duration sec" SortExpression="Duration sec" />
                <asp:BoundField DataField="yes" HeaderText="yes" SortExpression="yes" />
                <asp:BoundField DataField="no" HeaderText="no" SortExpression="no" />
                <asp:BoundField DataField="not observed/head" HeaderText="not observed/head" SortExpression="not observed/head" />
            </Columns>
         </asp:GridView>
         <br />
        
       
         <asp:SqlDataSource ID="sqlgrid" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" SelectCommand="SELECT * FROM [proekt3]"></asp:SqlDataSource>--%>
    
</asp:Content>
