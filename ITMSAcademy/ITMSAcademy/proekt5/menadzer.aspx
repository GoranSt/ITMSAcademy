<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="menadzer.aspx.cs" Inherits="ITMSAcademy.proekt5.menadzer" %>
  
<asp:Content ID="Content3" ContentPlaceHolderID="Mainbody" runat="server">
    <script src="../Scripts/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    
      <h2>Преглед на менаџерот:</h2>
    </br></br>
    <style>
            td {
                border-collapse:collapse;
                /*border: 1px black solid;*/
            }
            tr:nth-of-type(5) td:nth-of-type(1) {
                visibility: hidden;
            }
            .rotate {
                 -moz-transform: rotate(-90.0deg);  /* FF3.5+ */
                   -o-transform: rotate(-90.0deg);  /* Opera 10.5 */
              -webkit-transform: rotate(-90.0deg);  /* Saf3.1+, Chrome */
                         filter:  progid:DXImageTransform.Microsoft.BasicImage(rotation=0.083);  /* IE6,IE7 */
                     -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=0.083)"; /* IE8 */
            }

    </style>

     <table style="margin-left:-95px; margin-bottom:10px; width: 300px;" cellpadding="0" cellspacing="0">
    <tr style="height:100px;">
        <td><div class='rotate'  style="width:30px;">Page<span style="text-decoration: underline;">&nbsp;&nbsp;&nbsp;&nbsp;</span></div></td>
       <%--<asp:SqlDataSource ID="sqlsate" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" SelectCommand="SELECT [Observer] FROM [Project2]"></asp:SqlDataSource>--%>
    </tr>
    <tr>
        <td><div class='rotate'  style="width:60px;">Date<span style="text-decoration: underline;">&nbsp;&nbsp;&nbsp;&nbsp;</span></div>
            
<%--            <asp:SqlDataSource ID="sqlfarm" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" SelectCommand="SELECT Farm FROM Project2"></asp:SqlDataSource>--%>
        
        </td>
        
    
    </tr>

    <tr style="height:100px;">
        <td><div class='rotate'  style="width:70px;">Observer<span style="text-decoration: underline;">&nbsp;&nbsp;&nbsp;&nbsp;</span></div></td>
<%--        <asp:SqlDataSource ID="sqldate" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT [Date] FROM [Project2]"></asp:SqlDataSource>--%>
   
    
    </tr>

    <tr style="height:100px;">
        <td><div class='rotate'  style="width:60px;">Farm<span style="text-decoration: underline;">&nbsp;&nbsp;&nbsp;&nbsp;</span></div></td>
<%--        <asp:SqlDataSource ID="sqlsate" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" SelectCommand="SELECT [Observer] FROM [Project2]"></asp:SqlDataSource>--%>
    </tr>


</table>

               <%-- <div >
                  Farmer:<asp:Label ID="lblfarm" runat="server" Text="Label" class=""></asp:Label> 
                    Date:<asp:Label ID="lbldate" runat="server" Text="Label" class="label label-default"></asp:Label> 
                    Observer:<asp:Label ID="lblobs" runat="server" Text="Label" class="label label-default"></asp:Label> 
                  
                </div>--%>

    <div>



    </div>
            <div style="margin-left:-80px; margin-top: -360px;">
               <asp:GridView ID="menadzerizgeld" runat="server" AutoGenerateColumns="False" DataSourceID="sqlmenadzer">
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
               <asp:SqlDataSource ID="sqlmenadzer" runat="server" ConnectionString="<%$ ConnectionStrings:ITMSAcademyDB2015ConnectionString %>" SelectCommand="SELECT proekt3.* FROM proekt3"></asp:SqlDataSource>
            

        </div>
    
<script type="text/javascript">
    window.addEventListener('load', function () {
        var rotates = document.getElementsByClassName('rotate');
        for (var i = 0; i < rotates.length; i++) {
            rotates[i].style.height = rotates[i].offsetWidth + 'px';
        }
    });
</script>
</asp:Content>
