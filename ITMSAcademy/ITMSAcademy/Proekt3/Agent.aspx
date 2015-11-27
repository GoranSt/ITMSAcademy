<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Agent.aspx.cs" Inherits="ITMSAcademy.Proekt3.Agent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Mainbody" runat="server">

     <script src="../Scripts/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="../Scripts/bootstrap.min.js" type="text/javascript"></script>
    <script src="../Scripts/WebForms/GridView.js" type="text/javascript"></script>

     
  
    
   

            <div class="panel-heading">
        <center> <h2> Qualitative Behaviour Assessment </h2> </center>
         <center> <h4>Visual Analogue Scale VAS for Qualitative Behaviour Assessment in Dairy cattle</h4> </center>
         </div>
            
    <div class="div-control div75" style="padding-top:15px">
             Name:
            <asp:TextBox ID="tbxIme" runat="server" CssClass="form-control" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvIme" runat="server" ErrorMessage="Please insert name." CssClass="validator-error" ControlToValidate="tbxIme"
                Display="Dynamic" SetFocusOnError="True">

            </asp:RequiredFieldValidator>
        </div>

    <div class="div-control div75" style="padding-top:15px">
        <center>
             Date:
        
            <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                <OtherMonthDayStyle ForeColor="#CC9966" />
                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                <SelectorStyle BackColor="#FFCC66" />
                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
             </asp:Calendar>
            </center>
           
        </div>
    <div class="div-control div75" style="padding-top:15px">
             Assessor:
            <asp:TextBox ID="tbxAssessor" runat="server" CssClass="form-control" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ErrorMessage="Please insert assessor." CssClass="validator-error" ControlToValidate="tbxAssessor"
                Display="Dynamic" SetFocusOnError="True">

            </asp:RequiredFieldValidator>
        </div>
    <div class="div-control div75" style="padding-top:15px">
             Page:
            <asp:TextBox ID="tbxPage" runat="server" CssClass="form-control" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ErrorMessage="Please insert page." CssClass="validator-error" ControlToValidate="tbxPage"
                Display="Dynamic" SetFocusOnError="True">

            </asp:RequiredFieldValidator>
        </div>
    <div class="div-control div75" style="padding-top:15px">
             Time of day:
            <asp:TextBox ID="tbxTime" runat="server" CssClass="form-control" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please insert time." CssClass="validator-error" ControlToValidate="tbxTime"
                Display="Dynamic" SetFocusOnError="True">

            </asp:RequiredFieldValidator>
        </div>
    <div class="div-control div75" style="padding-top:15px">
             Farm:
            <asp:TextBox ID="tbxFarm" runat="server" CssClass="form-control" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please insert farm." CssClass="validator-error" ControlToValidate="tbxFarm"
                Display="Dynamic" SetFocusOnError="True">

            </asp:RequiredFieldValidator>
        </div>
    <div class="div-control div75" style="padding-top:15px">
             Housing unit:
            <asp:TextBox ID="tbxHousing" runat="server" CssClass="form-control" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please insert Housing unit." CssClass="validator-error" ControlToValidate="tbxHousing"
                Display="Dynamic" SetFocusOnError="True">

            </asp:RequiredFieldValidator>
        </div>
    <div class="div-control div75" style="padding-top:15px">
             No. of animals in unit:
            <asp:TextBox ID="tbxNoOfAnimals" runat="server" CssClass="form-control" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please insert Number of Animals." CssClass="validator-error" ControlToValidate="tbxNoOfAnimals"
                Display="Dynamic" SetFocusOnError="True">

            </asp:RequiredFieldValidator>
        </div>
    <div class="div-control div75" style="padding-top:15px">
             Breed:
            <asp:TextBox ID="tbxBreed" runat="server" CssClass="form-control" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please insert breed." CssClass="validator-error" ControlToValidate="tbxBreed"
                Display="Dynamic" SetFocusOnError="True">

            </asp:RequiredFieldValidator>
        </div>

   <p> <h4>Brief description of system and unit (e.g. indoor/outdoor areas, bedding, enrichment, lighting, 

feeding system, etc.). Please be sure that the lines of the QBA measures are 125 mm.</h4>  
       <p>
       </p>
       <p>
           <h4>Please observe the animals in the unit for 10-20 minutes, and then assess their behavioural expression (‘body language’) by scoring the following terms:</h4>
           <p>
           </p>
           <div class="div-control div75 ">
               <div class=" div-label">
                   Active:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  
             
         
               <asp:DropDownList ID="ddlActive" runat="server">
                   <asp:ListItem Value="0">Score:1-10</asp:ListItem>
                   <asp:ListItem>1</asp:ListItem>
                   <asp:ListItem>2</asp:ListItem>
                   <asp:ListItem>3</asp:ListItem>
                   <asp:ListItem>4</asp:ListItem>
                   <asp:ListItem>5</asp:ListItem>
                   <asp:ListItem>6</asp:ListItem>
                   <asp:ListItem>7</asp:ListItem>
                   <asp:ListItem>8</asp:ListItem>
                   <asp:ListItem>9</asp:ListItem>
                   <asp:ListItem>10</asp:ListItem>
               </asp:DropDownList>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlActive" CssClass="validator-error" Display="Dynamic" ErrorMessage="Please score from 1 to 10." SetFocusOnError="True">

            </asp:RequiredFieldValidator>
           
        </div>
           </div>
    &nbsp;
           <div class="div-control div75 ">
               <div class=" div-label">
                   Relaxed:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:DropDownList ID="ddlRelaxed" runat="server">
                   <asp:ListItem Value="0">Score:1-10</asp:ListItem>
                   <asp:ListItem>1</asp:ListItem>
                   <asp:ListItem>2</asp:ListItem>
                   <asp:ListItem>3</asp:ListItem>
                   <asp:ListItem>4</asp:ListItem>
                   <asp:ListItem>5</asp:ListItem>
                   <asp:ListItem>6</asp:ListItem>
                   <asp:ListItem>7</asp:ListItem>
                   <asp:ListItem>8</asp:ListItem>
                   <asp:ListItem>9</asp:ListItem>
                   <asp:ListItem>10</asp:ListItem>
               </asp:DropDownList>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlRelaxed" CssClass="validator-error" Display="Dynamic" ErrorMessage="Please score from 1 to 10." SetFocusOnError="True">

            </asp:RequiredFieldValidator>
               </div>
           </div>
    &nbsp;
           <div class="div-control div75 ">
               <div class=" div-label">
                   Fearful:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="ddlFearful" runat="server">
                   <asp:ListItem Value="0">Score:1-10</asp:ListItem>
                   <asp:ListItem>1</asp:ListItem>
                   <asp:ListItem>2</asp:ListItem>
                   <asp:ListItem>3</asp:ListItem>
                   <asp:ListItem>4</asp:ListItem>
                   <asp:ListItem>5</asp:ListItem>
                   <asp:ListItem>6</asp:ListItem>
                   <asp:ListItem>7</asp:ListItem>
                   <asp:ListItem>8</asp:ListItem>
                   <asp:ListItem>9</asp:ListItem>
                   <asp:ListItem>10</asp:ListItem>
               </asp:DropDownList>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlFearful" CssClass="validator-error" Display="Dynamic" ErrorMessage="Please score from 1 to 10." SetFocusOnError="True">

            </asp:RequiredFieldValidator>
           </div>
               
           </div>
    &nbsp;
           <div class="div-control div75 ">
               <div class=" div-label">
                     Agitated:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:DropDownList ID="ddlAgitated" runat="server">
                   <asp:ListItem Value="0">Score:1-10</asp:ListItem>
                   <asp:ListItem>1</asp:ListItem>
                   <asp:ListItem>2</asp:ListItem>
                   <asp:ListItem>3</asp:ListItem>
                   <asp:ListItem>4</asp:ListItem>
                   <asp:ListItem>5</asp:ListItem>
                   <asp:ListItem>6</asp:ListItem>
                   <asp:ListItem>7</asp:ListItem>
                   <asp:ListItem>8</asp:ListItem>
                   <asp:ListItem>9</asp:ListItem>
                   <asp:ListItem>10</asp:ListItem>
               </asp:DropDownList>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlAgitated" CssClass="validator-error" Display="Dynamic" ErrorMessage="Please score from 1 to 10." SetFocusOnError="True">

            </asp:RequiredFieldValidator>
               </div>
           </div>
    &nbsp;
           <div class="div-control div75 ">
               <div class=" div-label">
                   Calm:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="ddlCalm" runat="server">
                   <asp:ListItem Value="0">Score:1-10</asp:ListItem>
                   <asp:ListItem>1</asp:ListItem>
                   <asp:ListItem>2</asp:ListItem>
                   <asp:ListItem>3</asp:ListItem>
                   <asp:ListItem>4</asp:ListItem>
                   <asp:ListItem>5</asp:ListItem>
                   <asp:ListItem>6</asp:ListItem>
                   <asp:ListItem>7</asp:ListItem>
                   <asp:ListItem>8</asp:ListItem>
                   <asp:ListItem>9</asp:ListItem>
                   <asp:ListItem>10</asp:ListItem>
               </asp:DropDownList>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="ddlCalm" CssClass="validator-error" Display="Dynamic" ErrorMessage="Please score from 1 to 10." SetFocusOnError="True">

            </asp:RequiredFieldValidator>
             </div>
           </div>
    &nbsp;
           <div class="div-control div75 ">
                
               <div class=" div-label">
                   Content:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="ddlContent" runat="server">
                   <asp:ListItem Value="0">Score:1-10</asp:ListItem>
                   <asp:ListItem>1</asp:ListItem>
                   <asp:ListItem>2</asp:ListItem>
                   <asp:ListItem>3</asp:ListItem>
                   <asp:ListItem>4</asp:ListItem>
                   <asp:ListItem>5</asp:ListItem>
                   <asp:ListItem>6</asp:ListItem>
                   <asp:ListItem>7</asp:ListItem>
                   <asp:ListItem>8</asp:ListItem>
                   <asp:ListItem>9</asp:ListItem>
                   <asp:ListItem>10</asp:ListItem>
               </asp:DropDownList>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddlContent" CssClass="validator-error" Display="Dynamic" ErrorMessage="Please score from 1 to 10." SetFocusOnError="True">

            </asp:RequiredFieldValidator>
               </div>
           </div>
    &nbsp;
           <div class="div-control div75 ">
               <div class=" div-label">
                   Indifferent:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="ddlIndifferent" runat="server">
                   <asp:ListItem Value="0">Score:1-10</asp:ListItem>
                   <asp:ListItem>1</asp:ListItem>
                   <asp:ListItem>2</asp:ListItem>
                   <asp:ListItem>3</asp:ListItem>
                   <asp:ListItem>4</asp:ListItem>
                   <asp:ListItem>5</asp:ListItem>
                   <asp:ListItem>6</asp:ListItem>
                   <asp:ListItem>7</asp:ListItem>
                   <asp:ListItem>8</asp:ListItem>
                   <asp:ListItem>9</asp:ListItem>
                   <asp:ListItem>10</asp:ListItem>
               </asp:DropDownList>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddlIndifferent" CssClass="validator-error" Display="Dynamic" ErrorMessage="Please score from 1 to 10." SetFocusOnError="True">

            </asp:RequiredFieldValidator>
           </div>
               </div>
    &nbsp;
                <div class="div-control div75 ">
               <div class=" div-label">
                  Friendly:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:DropDownList ID="ddlFriendly" runat="server">
                   <asp:ListItem Value="0">Score:1-10</asp:ListItem>
                   <asp:ListItem>1</asp:ListItem>
                   <asp:ListItem>2</asp:ListItem>
                   <asp:ListItem>3</asp:ListItem>
                   <asp:ListItem>4</asp:ListItem>
                   <asp:ListItem>5</asp:ListItem>
                   <asp:ListItem>6</asp:ListItem>
                   <asp:ListItem>7</asp:ListItem>
                   <asp:ListItem>8</asp:ListItem>
                   <asp:ListItem>9</asp:ListItem>
                   <asp:ListItem>10</asp:ListItem>
               </asp:DropDownList>
              
               <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="ddlFriendly" CssClass="validator-error" Display="Dynamic" ErrorMessage="Please score from 1 to 10." SetFocusOnError="True">

            </asp:RequiredFieldValidator>
              
           </div>
                    </div>
    &nbsp;
           <div class="div-control div75 ">
               <div class=" div-label">
                   Frustrated:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   
               
               <asp:DropDownList ID="ddlFrustrated" runat="server">
                   <asp:ListItem Value="0">Score:1-10</asp:ListItem>
                   <asp:ListItem>1</asp:ListItem>
                   <asp:ListItem>2</asp:ListItem>
                   <asp:ListItem>3</asp:ListItem>
                   <asp:ListItem>4</asp:ListItem>
                   <asp:ListItem>5</asp:ListItem>
                   <asp:ListItem>6</asp:ListItem>
                   <asp:ListItem>7</asp:ListItem>
                   <asp:ListItem>8</asp:ListItem>
                   <asp:ListItem>9</asp:ListItem>
                   <asp:ListItem>10</asp:ListItem>
               </asp:DropDownList>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="ddlFrustrated" CssClass="validator-error" Display="Dynamic" ErrorMessage="Please score from 1 to 10." SetFocusOnError="True">

            </asp:RequiredFieldValidator>
           
               </div>
           </div>
    &nbsp;
  
           <div class="div-control div75 ">
               <div class=" div-label">
                   Bored:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
               <asp:DropDownList ID="ddlBored" runat="server" OnSelectedIndexChanged="ddlBored_SelectedIndexChanged">
                   <asp:ListItem Value="0">Score:1-10</asp:ListItem>
                   <asp:ListItem>1</asp:ListItem>
                   <asp:ListItem>2</asp:ListItem>
                   <asp:ListItem>3</asp:ListItem>
                   <asp:ListItem>4</asp:ListItem>
                   <asp:ListItem>5</asp:ListItem>
                   <asp:ListItem>6</asp:ListItem>
                   <asp:ListItem>7</asp:ListItem>
                   <asp:ListItem>8</asp:ListItem>
                   <asp:ListItem>9</asp:ListItem>
                   <asp:ListItem>10</asp:ListItem>
               </asp:DropDownList>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="ddlBored" CssClass="validator-error" Display="Dynamic" ErrorMessage="Please score from 1 to 10." SetFocusOnError="True">

            </asp:RequiredFieldValidator>
                    </div>
           </div>
    &nbsp;
           <div class="div-control div75 ">
               <div class=" div-label">
                   Playful:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="ddlPlayful" runat="server">
                   <asp:ListItem Value="0">Score:1-10</asp:ListItem>
                   <asp:ListItem>1</asp:ListItem>
                   <asp:ListItem>2</asp:ListItem>
                   <asp:ListItem>3</asp:ListItem>
                   <asp:ListItem>4</asp:ListItem>
                   <asp:ListItem>5</asp:ListItem>
                   <asp:ListItem>6</asp:ListItem>
                   <asp:ListItem>7</asp:ListItem>
                   <asp:ListItem>8</asp:ListItem>
                   <asp:ListItem>9</asp:ListItem>
                   <asp:ListItem>10</asp:ListItem>
               </asp:DropDownList>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="ddlPlayful" CssClass="validator-error" Display="Dynamic" ErrorMessage="Please score from 1 to 10." SetFocusOnError="True">

            </asp:RequiredFieldValidator>
                   </div>
           </div>
    &nbsp;
       

       
              <div class= "div-control div75 ">
            <div class=" div-label">
             Positively occupied:&nbsp;
           
            <asp:DropDownList ID="ddlPositively" runat="server">
                <asp:ListItem Value="0">Score:1-10</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
             </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="Please score from 1 to 10." CssClass="validator-error" ControlToValidate="ddlPositively"
                Display="Dynamic" SetFocusOnError="True">

            </asp:RequiredFieldValidator>
             </div>
        </div>
    &nbsp;
    
     <div class= "div-control div75 ">
            <div class=" div-label">
                Lively:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="ddlLively" runat="server">
                <asp:ListItem Value="0">Score:1-10</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
             </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="Please score from 1 to 10." CssClass="validator-error" ControlToValidate="ddlLively"
                Display="Dynamic" SetFocusOnError="True">

            </asp:RequiredFieldValidator>
                 </div>
        </div>
    &nbsp;
            <div class= "div-control div75 ">
            <div class=" div-label">
             Inquisitive:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               
            <asp:DropDownList ID="ddlInquisitive" runat="server">
                <asp:ListItem Value="0">Score:1-10</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
             </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="Please score from 1 to 10." CssClass="validator-error" ControlToValidate="ddlInquisitive"
                Display="Dynamic" SetFocusOnError="True">

            </asp:RequiredFieldValidator>
                 </div>
        </div>
    &nbsp;
     <div class= "div-control div75 ">
            <div class=" div-label">
             Irritable:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            <asp:DropDownList ID="ddlIrritable" runat="server">
                <asp:ListItem Value="0">Score:1-10</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
             </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ErrorMessage="Please score from 1 to 10." CssClass="validator-error" ControlToValidate="ddlIrritable"
                Display="Dynamic" SetFocusOnError="True">

            </asp:RequiredFieldValidator>
                </div>
        </div>
    &nbsp;
    <div class= "div-control div75 ">
            <div class=" div-label">
             Calmless/Uneasy:&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="ddlCalmless" runat="server">
                <asp:ListItem Value="0">Score:1-10</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
             </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ErrorMessage="Please score from 1 to 10." CssClass="validator-error" ControlToValidate="ddlCalmless"
                Display="Dynamic" SetFocusOnError="True">

            </asp:RequiredFieldValidator>
                </div>
        </div>
    &nbsp;
     <div class= "div-control div75 ">
            <div class=" div-label">
             Sociable:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            <asp:DropDownList ID="ddlSociable" runat="server">
                <asp:ListItem Value="0">Score:1-10</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
             </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ErrorMessage="Please score from 1 to 10." CssClass="validator-error" ControlToValidate="ddlSociable"
                Display="Dynamic" SetFocusOnError="True">

            </asp:RequiredFieldValidator>
                </div>
        </div>
    &nbsp;
     <div class= "div-control div75 ">
            <div class=" div-label">
             Apathetic:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            <asp:DropDownList ID="ddlApathetic" runat="server">
                <asp:ListItem Value="0">Score:1-10</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
             </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ErrorMessage="Please score from 1 to 10." CssClass="validator-error" ControlToValidate="ddlApathetic"
                Display="Dynamic" SetFocusOnError="True">

            </asp:RequiredFieldValidator>
                </div>
        </div>
    &nbsp;
     <div class= "div-control div75 ">
            <div class=" div-label">
             Happy:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            <asp:DropDownList ID="ddlHappy" runat="server">
                <asp:ListItem Value="0">Score:1-10</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
             </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ErrorMessage="Please score from 1 to 10." CssClass="validator-error" ControlToValidate="ddlHappy"
                Display="Dynamic" SetFocusOnError="True">

            </asp:RequiredFieldValidator>
                </div>
        </div>
    &nbsp;
     <div class= "div-control div75 ">
            <div class=" div-label">
             Distressed:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            <asp:DropDownList ID="ddlDistressed" runat="server">
                <asp:ListItem Value="0">Score:1-10</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
             </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ErrorMessage="Please score from 1 to 10." CssClass="validator-error" ControlToValidate="ddlDistressed"
                Display="Dynamic" SetFocusOnError="True">

            </asp:RequiredFieldValidator>
                </div>
        </div>
    &nbsp;
            &nbsp;
            <div class="div-control div75" style="padding-top:15px">
               <p> <h4> <b> General comments or observations:</b></h4> 
                   <p>
                   </p>
                   <asp:TextBox ID="tbxComments" runat="server" CssClass="form-control"></asp:TextBox>
                   <asp:TextBox ID="tbxComments2" runat="server" CssClass="form-control"></asp:TextBox>
                   <asp:TextBox ID="tbxComments3" runat="server" CssClass="form-control"></asp:TextBox>
                </p>
        
        </div>
   <div class="div-control div75 text-center">
               &nbsp;
               &nbsp;
               <asp:Button ID="btnNext2" runat="server" Text="Submit" Height="40px"  Width="100px" OnClick="btnNext2_Click" />
           </div>
    &nbsp;
    &nbsp;
    &nbsp;

    <asp:SqlDataSource ID="SQLAdd" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" 
        SelectCommand="SELECT * FROM [Project3]"

        InsertCommand="INSERT INTO [Project3] ([Name], [Date], [Assessor], [Page], [TimeOfDay], [Farm], [HousingUnit], [No.OfAnimals], [Breed], [Active], [Relaxed], [Fearful], [Agitated], [Calm], [Content], [Indifferent], [Frustrated], [Friendly], [Bored], [Playful], [Positively occupied], [Lively], [Inquisitive], [Irritable], [Calmless/Uneasy], [Sociable], [Apathetic], [Happy], [Distressed]) VALUES (@Name, @Date, @Assessor, @Page, @TimeOfDay, @Farm, @HousingUnit, @column1, @Breed, @Active, @Relaxed, @Fearful, @Agitated, @Calm, @Content, @Indifferent, @Frustrated, @Friendly, @Bored, @Playful, @Positively_occupied, @Lively, @Inquisitive, @Irritable, @column2, @Sociable, @Apathetic, @Happy, @Distressed)" >
        
        
  
        
        <InsertParameters>
   
           <asp:ControlParameter Name="Name" Type="String" ControlID="tbxIme" />
            <asp:ControlParameter Name="Date" Type="String" ControlID="Calendar1" />
            <asp:ControlParameter Name="Assessor" Type="String" ControlID="tbxAssessor"  />
            <asp:ControlParameter Name="Page" Type="Int32" ControlID="tbxPage"/>
            <asp:ControlParameter Name="TimeOfDay" Type="String" ControlID="tbxTime" />
            <asp:ControlParameter Name="Farm" Type="String" ControlID="tbxFarm" />
            <asp:ControlParameter Name="HousingUnit" Type="String" ControlID="tbxHousing" />
            <asp:ControlParameter Name="column1" Type="Int32" ControlID="tbxNoOfAnimals" />
            <asp:ControlParameter Name="Breed" Type="String"  ControlID="tbxBreed" />
            <asp:ControlParameter Name="Active" Type="Int32" ControlID="ddlActive" PropertyName="SelectedValue"/>
            <asp:ControlParameter Name="Relaxed" Type="Int32" ControlID="ddlRelaxed" PropertyName="SelectedValue"/>
            <asp:ControlParameter Name="Fearful" Type="Int32" ControlID="ddlFearful" PropertyName="SelectedValue"/>
            <asp:ControlParameter Name="Agitated" Type="Int32" ControlID="ddlAgitated" PropertyName="SelectedValue"/>
            <asp:ControlParameter Name="Calm" Type="Int32" ControlID="ddlCalm" PropertyName="SelectedValue"/>
            <asp:ControlParameter Name="Content" Type="Int32" ControlID="ddlContent" PropertyName="SelectedValue"/>
            <asp:ControlParameter Name="Indifferent" Type="Int32" ControlID="ddlIndifferent" PropertyName="SelectedValue" />
            <asp:ControlParameter Name="Frustrated" Type="Int32" ControlID="ddlFrustrated" PropertyName="SelectedValue"/>
            <asp:ControlParameter Name="Friendly" Type="Int32" ControlID="ddlFriendly" PropertyName="SelectedValue" />
            <asp:ControlParameter Name="Bored" Type="Int32" ControlID="ddlBored" PropertyName="SelectedValue" />
            <asp:ControlParameter Name="Playful" Type="Int32" ControlID="ddlPlayful" PropertyName="SelectedValue"/>
            <asp:ControlParameter Name="Positively_occupied" Type="Int32" ControlID="ddlPositively" PropertyName="SelectedValue"/>
            <asp:ControlParameter Name="Lively" Type="Int32"  ControlID="ddlLively" PropertyName="SelectedValue"/>
            <asp:ControlParameter Name="Inquisitive" Type="Int32" ControlID="ddlInquisitive" PropertyName="SelectedValue"/>
            <asp:ControlParameter Name="Irritable" Type="Int32" ControlID="ddlIrritable" PropertyName="SelectedValue"/>
            <asp:ControlParameter Name="column2" Type="Int32" ControlID="ddlCalmless" PropertyName="SelectedValue"/>
            <asp:ControlParameter Name="Sociable" Type="Int32" ControlID="ddlSociable" PropertyName="SelectedValue"/>
            <asp:ControlParameter Name="Apathetic" Type="Int32" ControlID="ddlApathetic" PropertyName="SelectedValue"/>
            <asp:ControlParameter Name="Happy" Type="Int32" ControlID="ddlHappy" PropertyName="SelectedValue"/>
            <asp:ControlParameter Name="Distressed" Type="Int32" ControlID="ddlDistressed" PropertyName="SelectedValue"/>
        </InsertParameters>
        
        
        
        
        
        
        
        
      
        
        
        
     </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlData" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Assessor" HeaderText="Assessor" SortExpression="Assessor" />
            <asp:BoundField DataField="Page" HeaderText="Page" SortExpression="Page" />
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
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
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
    &nbsp;
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdAgent" DataSourceID="SQLData2" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Frustrated" HeaderText="Frustrated" SortExpression="Frustrated" />
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
            <asp:BoundField DataField="IdAgent" HeaderText="IdAgent" InsertVisible="False" ReadOnly="True" SortExpression="IdAgent" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
     </asp:GridView>
    <asp:SqlDataSource ID="SqlData" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" SelectCommand="SELECT [Name], [Date], [Assessor], [Page], [TimeOfDay], [Farm], [HousingUnit], [No.OfAnimals] AS column1, [Breed], [Active], [Relaxed], [Fearful], [Agitated], [Calm], [Content], [Indifferent] FROM [Project3]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SQLData2" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" SelectCommand="SELECT [Frustrated], [Friendly], [Bored], [Playful], [Positively occupied] AS Positively_occupied, [Lively], [Inquisitive], [Irritable], [Calmless/Uneasy] AS column1, [Sociable], [Apathetic], [Happy], [Distressed], [IdAgent] FROM [Project3]"></asp:SqlDataSource>

    
       

     
    
   

</asp:Content>
