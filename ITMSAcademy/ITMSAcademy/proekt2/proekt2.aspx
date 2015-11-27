<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="proekt2.aspx.cs" Inherits="ITMSAcademy.proekt2.proekt2" %>


<asp:Content runat="server" ID="M"  ContentPlaceHolderID="Mainbody" >

    
    

   

    
    <div class="panel-heading"><h2> Please Fullfill an "Avoidance Distance at the feeding place" form </h2></div>
    



     
 

        <div style="padding-top:30px">
           
                <asp:Label ID="Label1" runat="server" Text="Farm Name "></asp:Label>
           
          
               
                <asp:TextBox ID="tbxFarmName" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ErrorMessage="Please insert a farm Name." ControlToValidate="tbxFarmName" Display="Dynamic"
                    CssClass="validator-error" SetFocusOnError="True"></asp:RequiredFieldValidator>
           
       
        
       </div>
     
       <div style="padding-top:15px">
            
                 
                    <asp:Label ID="Label2" runat="server" Text="Date"></asp:Label>
            
                <asp:TextBox ID="tbxDate" runat="server" CssClass="form-control"></asp:TextBox>
              
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ErrorMessage="Please insert Date." ControlToValidate="tbxDate" Display="Dynamic"
                    CssClass="validator-error" SetFocusOnError="True"></asp:RequiredFieldValidator>
          
        </div>
         
     
      
              <div style="padding-top:15px">
                   <asp:Label ID="Label3" runat="server" Text="Observer"></asp:Label>
            <div class="div75 div-control">
                <asp:TextBox ID="tbxObserver" runat="server" CssClass="form-control"></asp:TextBox>
               
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ErrorMessage="Please insert ObserverName." ControlToValidate="tbxDate" Display="Dynamic"
                    CssClass="validator-error" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
        </div>
        
         
      
             
                 
               <div style="padding-top:15px">
                   <asp:Label ID="Label4" runat="server" Text="Page"></asp:Label>
             
            <div class="div75 div-control">
                <asp:TextBox ID="tbxPage" runat="server" CssClass="form-control"></asp:TextBox>
               
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                    ErrorMessage="Please insert PageNumber." ControlToValidate="tbxPage" Display="Dynamic"
                    CssClass="validator-error" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>

          
      </div>
        
   
      
               <div style="padding-top:15px">
                   <asp:Label ID="Label5" runat="server" Text="Group / Pen"></asp:Label>
            <div class="div75 div-control">
                <asp:TextBox ID="tbxGroup" runat="server" CssClass="form-control"></asp:TextBox>
               
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                    ErrorMessage="Please insert Group/Pen." ControlToValidate="tbxGroup" Display="Dynamic"
                    CssClass="validator-error" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
            <div class="clear-fix"></div>
        </div>
         
 

      
               <div style="padding-top:15px">
                    <asp:Label ID="Label6" runat="server" Text="Collar No. "></asp:Label>
            <div class="div75 div-control">
                <asp:TextBox ID="tbxCollar" runat="server" CssClass="form-control"></asp:TextBox>
              
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                    ErrorMessage="Please insert Collar No." ControlToValidate="tbxCollar" Display="Dynamic"
                    CssClass="validator-error" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
           
        </div>
          
    
      
              <div style="padding-top:15px">
                   <asp:Label ID="Label7" runat="server" Text="Ear Tag No. "></asp:Label>
            <div class="div20 text-right div-label float-left">
            </div>
            <div class="div75 div-control">
                <asp:TextBox ID="tbxEar" runat="server" CssClass="form-control"></asp:TextBox>
               
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                    ErrorMessage="Please insert Ear Tag No." ControlToValidate="tbxEar" Display="Dynamic"
                    CssClass="validator-error" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
           
        </div>
         

    
      
              <div style="padding-top:15px">
                    <asp:Label ID="Label8" runat="server" Text="Test 1"></asp:Label>
           
            <div class="div75 div-control">
                <asp:TextBox ID="tbxtest1" runat="server" CssClass="form-control"></asp:TextBox>
              
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                    ErrorMessage="Please insert Test1 Details." ControlToValidate="tbxtest1" Display="Dynamic"
                    CssClass="validator-error" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
           
        </div>
         
  
      
               <div style="padding-top:15px">
                    <asp:Label ID="Label9" runat="server" Text="Test 2 "></asp:Label>
            <div class="div20 text-right div-label float-left">
            </div>
            <div class="div75 div-control">
                <asp:TextBox ID="tbxtest2" runat="server" CssClass="form-control"></asp:TextBox>
                
              
                
            </div>
            
      
        </div>
         

  
      
              <div style="padding-top:15px">
                   <asp:Label ID="Label10" runat="server" Text="Remarks"></asp:Label>
            <div class="div20 text-right div-label float-left">
            </div>
                   <div class="div75 div-control">
                <asp:TextBox ID="tbxremarks" runat="server" CssClass="form-control"></asp:TextBox>
                
                      
                
            </div>
           
        </div>
          
    
            <div style="padding-top:40px">
            <div class="div20 text-right div-label float-left">
              
            </div>
            <div class="div75 div-control">
                <asp:Button ID="btnAdd" runat="server" Text="Submit" OnClick="btnAdd_Click" CssClass="btn-info" Height="40px" Width="97px"/>
            </div>
           
                </div>
        <div style="padding-top:30px">

        </div>

    <asp:SqlDataSource ID="sqlADD" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" InsertCommand="INSERT INTO Project2(Farm, Date, Observer, Page, [Group/pen], [Collar No], [Ear tag no.], test1, [test2(retest)], remarks) VALUES (@Farm, @Date, @Observer, @Page, @Group , @Collar, @Ear, @test1, @test2, @remarks)" SelectCommand="SELECT Project2.* FROM Project2">
        <InsertParameters>
            
            <asp:ControlParameter ControlID="tbxFarmName" Name="Farm" Type="String" />
           
            <asp:ControlParameter ControlID="tbxDate" Name="Date" Type="String"/>

            <asp:ControlParameter ControlID="tbxObserver" Name="Observer" Type="String" />
            <asp:ControlParameter ControlID="tbxPage" Name="Page" Type="Int32" />
            <asp:ControlParameter ControlID="tbxGroup" Name="Group"  Type="Int32"/>
            <asp:ControlParameter ControlID="tbxCollar" Name="Collar" Type="Int32" />
            <asp:ControlParameter ControlID="tbxEar" Name="Ear" Type="Int32" />
            <asp:ControlParameter ControlID="tbxtest1" Name="test1" Type="String"/>
            <asp:ControlParameter ControlID="tbxtest2" Name="test2" Type="String"/>
            <asp:ControlParameter ControlID="tbxremarks" Name="remarks" Type="String" />
        </InsertParameters>
</asp:SqlDataSource>
      <div>
            <div class="div20 text-right div-label float-left">
                &nbsp;
            </div>
          
            <div class="div75 div-control" >
               
               
                <asp:GridView ID="grid" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="sqlgrid">
                    <Columns>
                        <asp:BoundField DataField="Farm" HeaderText="Farm" SortExpression="Farm" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Observer" HeaderText="Observer" SortExpression="Observer" />
                        <asp:BoundField DataField="Page" HeaderText="Page" SortExpression="Page" />
                        <asp:BoundField DataField="Group/pen" HeaderText="Group/pen" SortExpression="Group/pen" />
                        <asp:BoundField DataField="Collar No" HeaderText="Collar No" SortExpression="Collar No" />
                        <asp:BoundField DataField="Ear tag no." HeaderText="Ear tag no." SortExpression="Ear tag no." />
                        <asp:BoundField DataField="test1" HeaderText="test1" SortExpression="test1" />
                        <asp:BoundField DataField="test2(retest)" HeaderText="test2(retest)" SortExpression="test2(retest)" />
                        <asp:BoundField DataField="remarks" HeaderText="remarks" SortExpression="remarks" />
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    </Columns>
                </asp:GridView>
                    

            </div>
        
        </div>

  


    <asp:SqlDataSource ID="sqlgrid" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" SelectCommand="SELECT Project2.* FROM Project2"></asp:SqlDataSource>


</asp:Content>
