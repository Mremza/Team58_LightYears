<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/PersonalFinance.Master" AutoEventWireup="true" CodeBehind="EmergencySaving.aspx.cs" Inherits="PersonalFinanceManagement.WebPages.EmergencySaving" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Company-HTML Bootstrap theme</title>

    <link href="../css/bootstrap.min.css" rel="stylesheet"/>
	<link rel="stylesheet" href="../css/font-awesome.min.css"/>
	<link rel="stylesheet" href="../css/animate.css"/>
	<link href="../css/prettyPhoto.css" rel="stylesheet"/>
	<link href="../css/style.css" rel="stylesheet" />

<%--       <link rel="stylesheet" href="http://code.jquery.com./ui/1.10.3/themes/smoothness/jquery-ui.css"/>
    <script src="../js/jquery-1.8.2.js"></script>--%>

    <link href="../js/jquery.datetimepicker.min.css" rel="stylesheet" />
    <script src="../js/jquery_datepicker.js"></script>
    <script src="../js/jquery.datetimepicker.full.js"></script>

    <link href="../js/jquery-ui.css" rel="stylesheet" />
    <script src="../js/jquery.js"></script>
    <script src="../js/jquery-ui.js"></script>
    <script >
        $("#datepicker").datetimepicker();

        $("#customDueDateTarget").datetimepicker();

        $("#customRadio").buttonset();

    </script>
   
     <style type="text/css">
         .auto-style1 {
             display: block;
             height: 34px;
             padding: 6px 12px;
             font-size: 14px;
             line-height: 1.42857143;
             color: #555;
             background-color: #fff;
             background-image: none;
             border: 1px solid #ccc;
             border-radius: 4px;
             -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
             box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
             -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
             -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
             transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
         }
     </style>
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="breadcrumb"> <!--This is the id to show the heirarchy of information-->
		<div class="container">	
			<div class="breadcrumb">							
				<li><a href="Home.aspx">Home</a></li>
				<li>Saving</li>
                
                			
			</div>		
		</div>	
	</div> <!--End of the Div-->
    <form runat ="server" >
    <div class="parent_savings" style="margin-left:0%;margin-right:30%">

    <div class="aboutus_savings" >
        <div class="container">

          <%-- <h3 style="left:800px; text-align:center;">Saving Creation</h3>
			<hr/>--%>
           	<div class="col-md-10 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms"> <!--The left side div on the emergency saving page-->
                    <div class="container">
                        <div class="row" style="position:relative; width:850px;">
                          <!--The Button to create the Saving, by opening the dialog where the user has to choose the type of Saving
                              to create on the provided types of savings-->
                           <div class="col-xs-6" > 
                               <button  id="btnSavingsCreation" runat="server"  type="button" class="btn btn-primary bt-md" data-target="#savings" data-toggle="modal" >Create Saving</button>
                               <%--<input id="btnCreate" runat ="server" type="submit" class="auto-style1" name="btnSubmit" value="save99" Onserverclick="Create_Click" />--%>

                             <%-- <button id="Button1" runat ="server" type="button" class="btn btn-primary" data-dismiss="modal" onserverclick ="Submit_Click">
                              Cancel1
                              </button>--%>
                                <%-- <asp:Button class="btn btn-primary pull-left" ID="btnCancelEmergency" runat="server" Text="Cancel11" OnClick="BtnCancelEmergency_Click" />--%>
                              
                           </div>
                            
                            <div class="modal fade" id="savings"  tabindex="-1" role="dialog" aria-hidden="true" style="position:relative; width:1000px; height:500px;">
                                <div class="modal-dialog" style="width:990px; height:350px ;margin-top:-1px;">
                                    <div class="modal-content" style="width:985px;height:490px;"> <!--Adjusting the content of the dialog-->
                                        <div class="modal-header">
                                            <button type="button" runat ="server" class="close" data-dismiss="modal" aria-hidden="true">
                                                &times;
                                            </button>
                                             <h4 class="modal-title " id="saving_Options" style="text-align:center;">
                                                   Types of Savings
                                             </h4>
                                        </div>

                              <div class="modal-body" style="height:350px;">

                                <div class="col-sm-6 col-md-3">
                                <div class="thumbnail" style="position:relative; height:300px;">
                                  <img src="../images/piggy-bank.jpg" />
                                  <div class="caption" style ="margin-top:-15px;">
                                    <h4 style="position:relative; text-align:center;">Save for an Emergency</h4>
                                      <button id="btnCreateEmergency" runat ="server" type ="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#emergencyModal">
                                        Create
                                    </button>
                                    </div>
                            
                               </div>
                            </div>
<!--################################################# EMERGENCY SAVING  ###########################################################################-->                               
                         
                                   <div class="modal fade" id="emergencyModal" tabindex="-1" role="dialog" aria-hidden="true" style="position:absolute ; width:990px; height:490px; padding :5px; margin-top :-55px" >
                              <div class="modal-dialog" style="width:850px;height:430px ; margin-top :-5px;" >
                                  <div class="modal-content">
                                      <div class="modal-header">
                                          <button type="button" runat ="server" class="close" data-dismiss="modal" aria-hidden="true">
                                              &times;
                                          </button>
                                          <h4 class="modal-title" id="emergency_Modal" runat ="server" style=" text-align:center;">
                                              Emergency Saving
                                          </h4>
                                      </div>

                                   <div style="background: black; height:290px; position: absolute; left:400px; border-left: 1px grey solid;" >

                                   </div> 

                                      <div class="modal-body" style="width :800px; height :300px;"> <!--This is the modal body where the user will be filling up information based on the emergency saving-->
                                          <!--
                                              # Name
                                              # Amount
                                              # Priority
                                              # Period of saving per month
                                              -->

                                          <!--This is the RIGHT div-->
                                          <div class="right" style ="width :365px; float :right ;height :150px; left :190px;">
                                               <label id="lblemergencyType" runat ="server" for="emergencySavingType" style="color:black; padding:-5px; margin-top:-25px;">When will this saving Happen ?</label>
                                          
                                             <div id="emergencySavingType" runat ="server" class="row" style="position:relative; padding:-5px; margin-top:-5px; margin-bottom: -5px;">
                                                <div id="emergencyRadio" runat ="server" class="col-xs-6">
                                                       
                                                <input type="radio" id="emergencyDaily"  name="radio" checked="checked"/><label style ="color :black ;font-weight:lighter;margin-left:10px;" for="radio2">  Daily</label><br />
		                                        <input type="radio" id="emergencyWeekly"  name="radio" checked="checked"/><label style ="color :black ;font-weight:lighter;margin-left:10px;" for="radio2">  Weekly</label><br />
		                                        <input type="radio" id="emergencyTwoweeks"  name="radio"/><label  style ="color :black ; font-weight:lighter; margin-left:10px;" for="radio3">  Every two Weeks</label><br />
                                                <input type="radio" id="emergencyMonthly"  name="radio" checked="checked"/><label style ="color :black ; font-weight:lighter; margin-left:10px;" for="radio2">  Monthly</label><br />
                                                <input type="radio" id="emergencyAnyday"  name="radio" checked="checked"/><label style ="color :black ; font-weight:lighter; margin-left:10px;" for="radio2">  Anyday</label>
	                                      
                                                </div> 
                                                 
                                            </div>
                                           <hr style="position:absolute; width:365px;"/> 
                                           <br />
                                          </div>
                                          <!--This is the LEFT div-->
                                          <div class="left" style ="width :385px; float :left ; height :150px; padding :-5px; ">
                                              

                                             <label id="lblEmergencyName" runat ="server" for="emergencySavingName" style="color:black; padding:-5px; margin-top:-25px;">Name of the Emergency Saving</label>
                                          
                                             <div class="row" style="position:relative; padding:-5px; margin-top:-5px;">
                                                  <div class="col-xs-4">
                                                       <div class="input-group">
                                                       <%--<span class="input-group-addon">R</span>--%>
                                                       <input  id="txtEmergencyName" runat ="server" type="text" style ="width :250px;" class="form-control" placeholder="Enter Emergency Saving Name"/>
                                                       </div>
                                                  </div> 
                                            </div> 
                                            <hr style="position:absolute; width:365px;"/> 
                                           <br /><br />

                                            <label id="lblEmergencyTarget" runat ="server" for="emergencySavingAmount" style="color:black; padding:-5px; margin-top:-25px;">How much you willing to save ?</label>
                                            <div class="row" style="position:relative; padding:-5px; margin-top:-5px;">
                                                  <div class="col-xs-4">
                                                       <div id="emergencyTarget" runat ="server" class="input-group">
                                                       <span class="input-group-addon">R</span>
                                                       <input id="txtEmergencyTarget" runat ="server" type="text" style ="width :180px;" class="form-control" placeholder="Enter amount to save"/>
                                                       </div>
                                                  </div> 
                                            </div> 
                                            <hr style="position:absolute; width:365px;"/> 
                                            <br /><br />

                                        <label id="lblEmergencyPriority" runat ="server" for="emergencySavingPriority" style="color:black; padding:-5px; margin-top:-25px;">Prioritize you Saving</label>
                                              <div class="form-row">
                                                <label for="emergencyPriority">
                                                    <span></span>
                                                    <select name="dropdown" type="dropdown" runat="server" id="dropEmergencyPriority"  style ="color :#5f5f5f;font-size:15px;box-sizing :border-box ; max-width: 240px; 
                                                    float:left ; box-shadow: 1px 2px 4px 0 rgba(0, 0, 0, 0.08);padding: 8px 8px;border: 1px solid #dbdbdb;
                                                    width :155px; font-weight:lighter;">
                                                        <option selected ="selected">Choose Priority</option>
                                                        <option>1</option>
                                                        <option>2</option>
                                                        <option>3</option>
                                                        <option>4</option>
                                                        <option>5</option>
                                                    </select>
                                                </label>
                                            </div>

                                           
                                          </div><!--END OF LEFT DIV-->



                                      </div>  <!--MODAL BODY DIV ENDS-->

                                      <div class="modal-footer">
                                         <button id="btnEmergencyCancel" runat ="server" type="button" class="btn btn-primary" data-dismiss="modal">
                                              Cancel
                                          </button>

                                          <%--<asp:Button class="btn btn-primary pull-left" ID="btnCancelEmergency" runat="server" Text="Cancel11" OnClick="BtnCancelEmergency_Click" />--%>
                                          <%--<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>--%>
                                         <%-- <button id="btnEmergencySave" runat ="server" type="button" class="btn  btn-primary">

                                              Save
                                          </button>--%>
                                         
                                           <%-- <input id="btnCreate" runat ="server" type="submit" class="auto-style1" name="btnSubmit" value="save99" Onserverclick="Create_Click" />--%>

                                            <button id="btnEmergencySave" runat ="server" type="submit" class="btn btn-primary" data-dismiss="modal" onserverclick ="SubmitEmergency_Click">
                                             Save
                                             </button>

                                      </div>
                                  </div>
                              </div>

                          </div>

                      

 <!--#########################################  CUSTOM GOAL SAVING   ################################################################################################################-->                      


                              <div class="col-sm-6 col-md-3" style="position:relative; ">
                                <div class="thumbnail" style="position:relative; height:300px;">
                                  <img src="../images/purse.jpg" />
                                    <br /><br />
                                  <div class="caption" style ="margin-top:-5px;">
                                    <h4 style="position:relative; text-align:center;height:45px;">Save for a Custom Goal</h4>
                                      
                                      
                                        <button id="btnCustom" runat ="server" type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#customModal">
                                        Create
                                    </button>

                                     <%-- <button id="Button2" runat ="server" type ="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#emergencyModal">
                                        Create
                                    </button>--%>
                                    
                                   </div>
                              </div>
                              </div>

                              <div class="modal fade" id="customModal"  tabindex="-1" role="dialog" aria-hidden="true" style="position:absolute ; width:990px; height:490px; padding :5px; margin-top :-55px">
                              <div class="modal-dialog" style="width:850px;height:430px ; margin-top :-5px;">
                                  <div class="modal-content">
                                      <div class="modal-header">
                                          <button id="btnCustomClose" runat ="server" type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                              &times;
                                          </button>
                                          <h4 class="modal-title" id="custom_Modal" runat ="server" style=" text-align:center;">
                                              Saving for Custom Goal
                                          </h4>
                                      </div>

                                      <!--This is the VERTICAL LINE IN THE MIDDLE(CENTER) OF THE DIALOG-->
                                   <div style="background: black; height:290px; position: absolute; left:400px; border-left: 1px grey solid;" >

                                   </div>
                                      
                                       
                                      <div class="modal-body" style="width :800px; height :300px;"> <!--This is the modal body where the user will be filling up information based on the emergency saving-->
                                          <!--
                                              # Name of a custom goal (choose from the dropdown or create yours)
                                              # Amount
                                              # Goal Type
                                              # Period of saving
                                              # 


                                              OR

                                              # What are you saving for
                                              # Set target amount 
                                              # When is the due date - for a target to be reached
                                              # When (How many time a month) are you going to save
                                                [ the syetem should be able to suggest for a use HOW MUCH is payable
                                                  based on the number of times to save a month ]
                                              # Priority of the saving (this determines the way in which the user
                                                                        should use every available amount of money
                                                                        that is left afer the budget is fully created)
                                              # 
                                                  


                                              NB!!!!![ the user must be able to select specific amount on budget for 
                                                       saving, that amount will be available to the user for saving
                                                        where the user will have a choice in terms of which saving
                                                       is the most important and is near the due date
                                                                            AND
                                                        the system should allow the user to have a choice of removing
                                                        the amount from the expense with the least priority to the
                                                        most important saving type, and that should be due soon
                                              
                                                                            AND
                                              
                                                        the user must also be able to select the amount of money
                                                        on budget that will be used to pay uot debts, that when
                                                        the user clicks the button to obtain the debts available
                                                        amount, it should be that amount]


                                              the system on the budgeting side, should include the savings and debts
                                              as the fixed type of expenses, and they should be both prioritized the 
                                              maximum, and whenever the user obtain the amount availabe for saving
                                              that allocated amount from budget, should appear, and the user should
                                              be able to split that amount based on the specific savings that are
                                              specially the most important
                                              -->

                                           <!--RIGHT DIV-->
                                          <div class="Right" style ="width :365px; float :right ;height :150px; left :190px;">
                                            <label id="lblCustomContribution" runat ="server" for="customContributionType" style="color:black; padding:-5px; margin-top:-30px;">How will you contribute to your goal ?</label>
                                             <%-- <div class="form-row" style ="position :relative  ; padding :-5px; margin-top :-5px;">
                                                <label for="customPriority">
                                                    <span>Dropdown</span>
                                                    <select name="dropdown"  id="customPriority" style ="color :#5f5f5f;font-size:15px;box-sizing :border-box ; max-width: 240px; 
                                                    float:left ; box-shadow: 1px 2px 4px 0 rgba(0, 0, 0, 0.08);padding: 8px 8px;border: 1px solid #dbdbdb;
                                                    width :155px; font-weight:lighter;">
                                                        <option selected ="selected">Choose Priority</option>
                                                        <option>1</option>
                                                        <option>2</option>
                                                        <option>3</option>
                                                        <option>4</option>
                                                        <option>5</option>
                                                    </select>
                                                </label>
                                            </div>--%>
                                              <div class="row" style="position:relative; padding:-5px; margin-top:-5px; margin-bottom: -5px;">
                                                <div id="customRadio" runat ="server" class="col-xs-12">
                                                      
                                                <input type="radio"  id="customDaily"  name="radio" checked="checked"/><label style ="color :black ;font-weight:lighter;margin-left:10px;" for="radio2">  Daily</label><br />
		                                        <input type="radio" id="customWeekly"  name="radio" checked="checked"/><label style ="color :black ;font-weight:lighter;margin-left:10px;" for="radio2">  Weekly</label><br />
		                                        <input type="radio" id="customTwoweeks"  name="radio"/><label  style ="color :black ; font-weight:lighter; margin-left:10px;" for="radio3">  Every two Weeks</label><br />
                                                <input type="radio" id="customMonthly"  name="radio" checked="checked"/><label style ="color :black ; font-weight:lighter; margin-left:10px;" for="radio2">  Monthly</label><br />
                                                <input type="radio" id="customOnceOff"  name="radio" checked="checked"/><label style ="color :black ; font-weight:lighter; margin-left:10px;" for="radio2">  Once Off </label>
                                               
                                                </div> 
                                                 
                                            </div>
                                              
                                            <hr style="position:absolute; width:365px; margin-top:20px;"/> 
                                           <br />
                                            <label id="lblCustomDueDate" runat ="server" for="customDueDateTarget" style="color:black; padding:-5px; margin-top:20px;"> When is your Goal Due ?</label>
                                            <div class="row" style="position:relative; padding:-5px; margin-top:5px;">
                                                  <div class="col-xs-4">
                                                       <div class="input-group">
                                                       <%--<span class="input-group-addon">R</span>--%>
                                                       <input type="date" id="txtCustomTargetDue" runat ="server" style ="width :185px;" class="form-control" placeholder="Enter goal due date"/>
                                                       
                                                       </div>
                                                  </div> 
                                            </div> 
                                            
                                         
                                          </div> <!--END OF RIGHT DIV-->

                                          <!--LEFT DIV-->
                                          <div class="Left" style ="width :385px; float :left ; height :150px; padding :-5px; ">
                                          
                                             <label id="lblCustomName" runat ="server" for="customSavingName" style="color:black; padding:-5px; margin-top:-25px;">Name of the Custom Goal</label>
                                          
                                             <div class="row" style="position:relative; padding:-5px; margin-top:-5px;">
                                                  <div class="col-xs-4">
                                                       <div class="input-group">
                                                       <%--<span class="input-group-addon">R</span>--%>
                                                       <input id="txtCustomName" runat ="server" type="text" style ="width :250px;" class="form-control" placeholder="Enter Custom Goal Name"/>
                                                       </div>
                                                  </div> 
                                            </div> 
                                            <hr style="position:absolute; width:365px;"/> 
                                           <br />  <br />
                                              <label id="lblCustomTarget" runat ="server" for="customAmount" style="color:black; padding:-5px; margin-top:-25px;">Amount to Save (Target Amount)</label>
                                            <div class="row" style="position:relative; padding:-5px; margin-top:-5px;">
                                                  <div class="col-xs-4">
                                                       <div class="input-group">
                                                       <span class="input-group-addon">R</span>
                                                       <input id="txtCustomTarget" runat ="server" type="text" style ="width :180px;" class="form-control" placeholder="Enter amount to save"/>
                                                       </div>
                                                  </div> 
                                            </div> 
                                            <hr style="position:absolute; width:365px;"/> 
                                            <br />  <br />
                                               <label id="lblCustomPriority" runat ="server" for="customAmount" style="color:black; padding:-5px; margin-top:-25px;"> Prioritize you Saving</label>
                                               <br /> 

                                               <div class="form-row" style ="position :relative  ; padding :-5px; margin-top :-5px;">
                                                <label runat ="server" for="customPriority">
                                                    <span></span>
                                                    <select name="dropdown"  id="dropCustomPriority" runat ="server" style ="color :#5f5f5f;font-size:15px;box-sizing :border-box ; max-width: 240px; 
                                                    float:left ; box-shadow: 1px 2px 4px 0 rgba(0, 0, 0, 0.08);padding: 8px 8px;border: 1px solid #dbdbdb;
                                                    width :155px; font-weight:lighter;">
                                                        <option selected ="selected">Choose Priority</option>
                                                        <option>1</option>
                                                        <option>2</option>
                                                        <option>3</option>
                                                        <option>4</option>
                                                        <option>5</option>
                                                    </select>
                                                </label>
                                            </div>
                                              
                                          </div><!--END OF LEFT DIV-->

                                      </div> <!--MODAL BODY DIV ENDS-->

                                      <div class="modal-footer">
                                          <button id="btnCustomCancel" runat ="server" type="button" class="btn btn-primary" data-dismiss="modal">
                                              Cancel
                                          </button>

                                         <%-- <button id="btnCustomSave" runat ="server" type="button" class="btn  btn-primary">
                                              Save
                                          </button>--%>

                                           <button id="btnCustomGoalSave" runat ="server" type="submit" class="btn btn-primary" data-dismiss="modal" onserverclick ="SubmitCustomGoal_Click">
                                             Save
                                             </button>

                                      </div>
                                  </div>
                              </div>

                          </div>

<!--###################################   EDUCATION SAVING   ######################################################################################################################-->                      

                             <div class="col-sm-6 col-md-3">
                                <div class="thumbnail" style="position:relative; height:300px;">
                                
                                
                                  <img src="../images/stock.jpg" />
                                    <br /><br />
                                  <div class="caption" style ="margin-top:-10px;">
                                    <h4 style="position:relative; text-align:center; height:50px;">Save for a Education</h4>
                                      
                                 
                                     <button id="btnCreateEducation" runat ="server" type="button"  class="btn btn-primary btn-sm" data-toggle="modal" data-target="#educationModal">
                                        Create
                                    </button>
                                    </div>
                               
                                 </div>
                                </div>


                    <!--MODAL 1-->
                             <div class="modal fade" id="educationModal"  tabindex="-1" role="dialog" aria-hidden="true" style="position:absolute ; width:990px; height:490px; padding :5px; margin-top :-55px">
                              <div class="modal-dialog" style="width:850px;height:430px ; margin-top :-5px;">
                                  <div class="modal-content">
                                      <div class="modal-header">
                                          <button id="btnEducationClose" runat ="server" type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                              &times;
                                          </button>
                                          <h4 class="modal-title" id="education_Modal" runat ="server" style=" text-align:center;">
                                              Saving for Education
                                          </h4>

                                      </div>

                                       <!--This is the VERTICAL LINE IN THE MIDDLE(CENTER) OF THE DIALOG-->
                                        <div style="background: black; height:290px; position: absolute; left:400px; border-left: 1px grey solid;" >

                                         </div>

                                      <div class="modal-body"style="width :800px; height :300px;"> <!--This is the modal body where the user will be filling up information based on the emergency saving-->
                                          <!--
                                              # Education saving name
                                              # Amount
                                              # Who is the saving for (coose from the dropdown)
                                              -->

                                           <!--RIGHT DIV-->
                                          <div class="Right" style ="width :365px; float :right ;height :150px; left :190px;">


                                              <label id="lblEducationPriority" runat ="server" for="educationPriority" style="color:black; padding:-5px; margin-top:-25px;"> Prioritize your Education Saving</label>
                                               <br /> 

                                               <div class="form-row" style ="position :relative  ; padding :-5px; margin-top :-5px;">
                                                <label runat ="server" for="customPriority">
                                                    <span></span>
                                                    <select name="dropdown"  id="dropEducationPriority" runat ="server" style ="color :#5f5f5f;font-size:15px;box-sizing :border-box ; max-width: 240px; 
                                                    float:left ; box-shadow: 1px 2px 4px 0 rgba(0, 0, 0, 0.08);padding: 8px 8px;border: 1px solid #dbdbdb;
                                                    width :155px; font-weight:lighter;">
                                                        <option selected ="selected">Choose Priority</option>
                                                        <option>1</option>
                                                        <option>2</option>
                                                        <option>3</option>
                                                        <option>4</option>
                                                        <option>5</option>
                                                    </select>
                                                </label>
                                            </div>

                                          
                                               <hr  style="position:absolute; width:365px;  margin-top:12px;"/>
                                            

                                              <label id="lblEducationCost" runat ="server" for="educationTotalCourseCost" style="color:black;  margin-top:16px;">How much the total cost of the course ?</label>
                                          
                                             <div class="row" style="position:relative; padding:-5px; margin-top:-3px;">
                                                  <div class="col-xs-4">
                                                       <div class="input-group">
                                                       <span class="input-group-addon">R</span>
                                                       <input id="txtEducationCost" runat ="server" type="text" style ="width :150px;" class="form-control" placeholder="Enter Total Cost"/>
                                                       </div>
                                                  </div> 
                                            </div> 

                                             
                                               <hr  style="position:absolute; width:365px; margin-top :16px;"/>
                                               <br />

                                               <label id="lblEducationCostDue" runat ="server" for="educationDeadlineCost" style="color:black; padding:-5px; margin-top:-25px;">When do you need overall amount ?</label>
                                          
                                             <div class="row" style="position:relative; padding:-5px; margin-top:-5px;">
                                                  <div class="col-xs-4">
                                                       <div class="input-group">
                                                       
                                                       <input type="date" id="txtEducationCostDue" runat ="server" style ="width :185px;" class="form-control" placeholder="Enter Due Date"/>
                                                       </div>
                                                  </div> 
                                            </div> 
                                               
                                        </div>

                                         <!--LEFT DIV-->
                                           <div class="Left" style ="width :385px; float :left ; height :150px; padding :-5px; ">
                                           
                                           <label id="lblEducationInstitutionName" runat ="server" for="institutionName" style="color:black; padding:-5px; margin-top:-25px;">Name of the Institution</label>
                                          
                                             <div class="row" style="position:relative; padding:-5px; margin-top:-5px;">
                                                  <div class="col-xs-4">
                                                       <div class="input-group">
                                                       
                                                       <input id="txtEducationInstitutionName" runat ="server" type="text" style ="width :250px;" class="form-control" placeholder="Enter Institution Name"/>
                                                       </div>
                                                  </div> 
                                            </div> 
                                               <hr  style="position:absolute; width:365px;"/>
                                               <br />
                                             <label id="lblEducationCourseName" runat ="server" for="courseName" style="color:black; padding:-5px; margin-top:-25px;">Name of the Course to study</label>
                                          
                                             <div class="row" style="position:relative; padding:-5px; margin-top:-5px;">
                                                  <div class="col-xs-4">
                                                       <div class="input-group">
                                                       
                                                       <input id="txtEducationCourseName" runat ="server" type="text" style ="width :250px;" class="form-control" placeholder="Enter Course Name"/>
                                                       </div>
                                                  </div> 
                                            </div> 
                                               <hr  style="position:absolute; width:365px;"/>
                                               <br />
                                             <label id="lblEducationDuration" runat ="server" for="timePeriod" style="color:black; padding:-5px; margin-top:-25px;">Study Duration</label>
                                          
                                             <div class="row" style="position:relative; padding:-5px; margin-top:-5px;">
                                                  <div class="col-xs-4">
                                                       <div class="input-group">
                                                       <span class="input-group-addon">Start</span>
                                                       <input id="txtEducationStartDate" runat ="server" type="date" style ="width :180px;"  class="form-control" placeholder="Starting date"/>
                                                       </div>
                                                  </div> 
                                                 <br />
                                                 <div class="col-xs-6" style ="position :relative  ; padding :30px; left:-152px;">
                                                       <div class="input-group">
                                                       <span class="input-group-addon">End</span>
                                                       <input id="txtEducationEndDate" runat ="server" type="date" style ="width :185px;"  class="form-control" placeholder="Ending date"/>
                                                       </div>
                                                  </div> 
                                            </div>  
                                               <%--<hr  style="position:absolute; width:365px;"/>--%>
                                               <br />
                                                     
                                                <label for="timePeriod" style="color:black; padding:-5px; margin-top:-25px;"> </label>
                                          
                                            <%-- <div class="row" style="position:relative; padding:-5px; margin-top:-5px;">
                                                  <div class="col-xs-4">
                                                       <div class="input-group">
                                                       
                                                       <input type="text" style ="width :250px;" class="form-control" placeholder="Enter Starting date"/>
                                                       </div>
                                                  </div> 
                                            </div>   --%>   
                                          </div><!--LEFT DIV ENDS HERE-->
                                          
                                      </div> <!--MODAL BODY DIV ENDS-->

                                      <div class="modal-footer">
                                        <ul class="pagination">
                                              <li class="active"><a href="#educationModal2" runat ="server" data-toggle="modal" data-target="#educationModal2">Next &rarr; </a></li>
                                          </ul>
                                      </div>
                                  </div>
                              </div>

                          </div> <!--THE END OF DIALOG 1-->


                    <!--THE START OF DIALOG 2 -->
                      <div class="modal fade" id="educationModal2"  tabindex="-1" role="dialog" aria-hidden="true" style="position:absolute ; width:990px; height:490px; padding :5px; margin-top :-55px">
                              <div class="modal-dialog" style="width:850px;height:430px ; margin-top :-5px;">
                                  <div class="modal-content">
                                      <div class="modal-header">
                                          <button id="btnEducationClose2" runat ="server" type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                              &times;
                                          </button>
                                          <h4 class="modal-title" id="education_Modal2" runat ="server" style=" text-align:center;">
                                              Saving for Education
                                          </h4>
                                      </div>

                                       <!--This is the VERTICAL LINE IN THE MIDDLE(CENTER) OF THE DIALOG-->
                                        <div style="background: black; height:290px; position: absolute; left:400px; border-left: 1px grey solid;" >

                                         </div>

                                      <div class="modal-body"style="width :800px; height :300px;"> <!--This is the modal body where the user will be filling up information based on the emergency saving-->
                                          <!--
                                              # Education saving name
                                              # Amount
                                              # Who is the saving for (coose from the dropdown)
                                              -->

                                           <!--RIGHT DIV-->
                                          <div class="Right" style ="width :365px; float :right ;height :150px; left :190px;">
                                                                                        
                                             <%-- <label id="lblEducationTargetDue" for="educationDeadlineCost" style="color:black; padding:-5px; margin-top:-25px;">When do you need overall amount ?</label>
                                          
                                             <div class="row" style="position:relative; padding:-5px; margin-top:-5px;">
                                                  <div class="col-xs-4">
                                                       <div class="input-group">
                                                     
                                                       <input id="txtEducationTargetDue" type="text" style ="width :250px;" class="form-control" placeholder="Enter Deadline for your saving"/>
                                                       </div>
                                                  </div> 
                                            </div> 
                                               <hr  style="position:absolute; width:365px;"/>
                                               <br />--%>
                                        </div>
                                         <!--LEFT DIV-->
                                           <div class="Left" style ="width :385px; float :left ; height :150px; padding :-5px; ">

                                               <label id="lblEducationContribution"  for="educationContributionType" style="color:black; padding:-5px; margin-top:-25px;">How will you contribute to Saving ?</label>
                                          
                                               <div class="row" style="position:relative; padding:-5px; margin-top:-5px; margin-bottom: -5px;">
                                                <div id="educationRadio" runat="server" class="col-xs-12">
                                                      
                                                <input type="radio" id="educationDaily" name="radio" checked="checked"/><label style ="color :black ;font-weight:lighter;margin-left:10px;" for="radio2">  Daily</label><br />
		                                        <input type="radio" id="educationWeekly" name="radio" checked="checked"/><label style ="color :black ;font-weight:lighter;margin-left:10px;" for="radio2">  Weekly</label><br />
		                                        <input type="radio" id="educationTwoweeks" name="radio"/><label  style ="color :black ; font-weight:lighter; margin-left:10px;" for="radio3">  Every two Weeks</label><br />
                                                <input type="radio" id="educationMonthly" name="radio" checked="checked"/><label style ="color :black ; font-weight:lighter; margin-left:10px;" for="radio2">  Monthly</label><br />
                                                <input type="radio" id="educationOnceOff" name="radio" checked="checked"/><label style ="color :black ; font-weight:lighter; margin-left:10px;" for="radio2">  Once Off </label>
                                               
                                                </div> 
                                                 
                                            </div>
                                          
                                               <hr  style="position:absolute; width:365px;"/>
                                               <br /> 

                                               <!--THIS DATE COMPARED WITH THE DUE DATE, WILL BE USED TO DETERMINE THE
                                                   PAYABLE AMOUNT BASED ON THE DECISION MADE BY THE USER IN TERMS
                                                   CHOICE OF CONTRIBUTION-->
                                             <label id="lblEducationSavingBegin" for="courseBegin" style="color:black; padding:-5px; margin-top:5px;">When will your saving begin ?</label>
                                          
                                             <div class="row" style="position:relative; padding:-5px; margin-top:5px;">
                                                  <div class="col-xs-4">
                                                       <div class="input-group">
                                                       
                                                       <input id="txtEducationSavingBegin" type="date" style ="width :180px;" class="form-control" />
                                                       </div>
                                                  </div> 
                                            </div> 
                                               
                                              
                                           
                                          </div><!--LEFT DIV ENDS HERE-->
                                          
                                      </div> <!--MODAL BODY DIV ENDS-->

                                      <div class="modal-footer">

                                          <ul class="pagination">
                                              <li class="active" style ="position:absolute  ; margin-top:5px; left :495px;height :30px; "><a href="#educationModal" data-toggle="modal" data-target="#educationModal">&larr; Previous</a></li>
                                            
                                          </ul>
                                         <button id="btnEducatioCacel" runat="server" type="button" class="btn btn-primary" data-dismiss="modal">
                                              Cancel
                                          </button>

                                          <%--<button id="btnEducationSave" runat="server" type="button" class="btn  btn-primary">
                                              Save
                                          </button>--%>

                                           <button id="btnEducationSave" runat ="server" type="submit" class="btn btn-primary" data-dismiss="modal" onserverclick ="SubmitEducation_Click">
                                             Save
                                             </button>
                                      </div>
                                  </div>
                              </div>

                          </div>

<!--#########################################   TRIP OR HOLIDAY SAVING   ################################################################################################################-->                      


                              <div class="col-sm-6 col-md-3">
                                <div class="thumbnail" style="position:relative; height:300px;">
                                  <img src="../images/wallet.jpg" />
                                    <br />
                                  <div class="caption" style ="margin-top:-15px;">

                                    <h4 style="position:relative; text-align:center; height:55px; margin-top: 15px;"> Save for the Traveling</h4>
                                   

                                    <button id="btnCreateTravel" runat="server" type="button"  class="btn btn-primary btn-sm" data-toggle="modal" data-target="#tripModal">
                                        Create
                                    </button>
                                      
                                    </div>
                               
                               </div>
                            </div>

                             <div class="modal fade" id="tripModal" tabindex="-1" role="dialog" aria-hidden="true" style="position:absolute ; width:990px; height:490px; padding :5px; margin-top :-55px">
                              <div class="modal-dialog" style="width:850px;height:430px ; margin-top :-5px;">
                                  <div class="modal-content">
                                      <div class="modal-header">
                                          <button runat="server" type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                              &times;
                                          </button>
                                          <h4 class="modal-title" id="trip_Modal" style=" text-align:center;">
                                              Saving for a Trip or Holiday One
                                          </h4>
                                      </div>

                                    <div style="background: black; height:290px; position: absolute; left:400px; border-left: 1px grey solid;" >

                                   </div> 

                                      <!--MODAL BODY-->
                                      <div class="modal-body" style="width :800px; height :300px;"> <!--This is the modal body where the user will be filling up information based on the emergency saving-->
                                        
                                          <!--RIGHT DIV-->
                                          <div class="Right" style ="width :365px; float :right ;height :150px; left :190px;">
                                             <label id="lblTravelPriority" runat="server" for="travelPriority" style="color:black; padding:-5px; margin-top:-10px;"> Prioritize your Travel </label>
                                               <br /> 

                                               <div class="form-row" style ="position :relative  ; padding :-5px; margin-top :-5px;">
                                                <label for="customPriority">
                                                    <span></span>
                                                    <select name="dropdown"  id="dropTravelPriority" runat="server" style ="color :#5f5f5f;font-size:15px;box-sizing :border-box ; max-width: 240px; 
                                                    float:left ; box-shadow: 1px 2px 4px 0 rgba(0, 0, 0, 0.08);padding: 8px 8px;border: 1px solid #dbdbdb;
                                                    width :155px; font-weight:lighter;">
                                                        <option selected ="selected">Choose Priority</option>
                                                        <option>1</option>
                                                        <option>2</option>
                                                        <option>3</option>
                                                        <option>4</option>
                                                        <option>5</option>
                                                        
                                                    </select>
                                                </label>
                                            </div>
                                              <hr style ="position :absolute ; width :365px; padding :-5px; margin-top :9px;"  />
                                              <br />

                                             <label id="lblTravelTravelers" runat="server" for="travelersNumber" style="color:black; padding:-5px; margin-top:-25px;">Number of Travelers</label>
                                          
                                             <div class="row" style="position:relative; padding:-5px; margin-top:-5px;">
                                                  <div class="col-xs-4">
                                                       <div class="input-group">
                                                       <input id="txtTravelTravelers" runat="server" type="text" style ="width :120px;" class="form-control" placeholder="enter travelers"/>
                                                           <span class="input-group-addon">Persons</span>
                                                       </div>
                                                  </div> 
                                            </div>
                                            
                                              <hr style ="position :absolute ; width :365px;  margin-top:30px;"  />
                                              <br />

                                             <label id="lblTravelSavingStart" runat="server" for="travelSavingStart" style="color:black; padding:-5px; margin-top:20px;">When will the Saving begin ? </label>
                                          
                                             <div class="row" style="position:relative; padding:-5px; margin-top:-5px;">
                                                  <div class="col-xs-4">
                                                       <div class="input-group">
                                                       <input id="txtTravelSavingStart" runat="server" type="date" style ="width :180px;" class="form-control" placeholder="enter travelers"/>
                                                           <%--<span class="input-group-addon">Persons</span>--%>
                                                       </div>
                                                  </div> 
                                            </div>
                                            

                                        </div> <!--END OF RIGHT DIV-->


                                          <!--LEFT DIV-->
                                          <div class="Left" style ="width :385px; float :left ; height :150px; padding :-5px; ">
                                          
                                           <label id="lblTravelDestination" runat="server" for="destinationName" style="color:black; padding:-5px; margin-top:-25px;">Destination</label>
                                          
                                             <div class="row" style="position:relative; padding:-5px; margin-top:-5px;">
                                                  <div class="col-xs-4">
                                                       <div class="input-group">
                                                      
                                                       <input id="txtTravelDestination" runat="server" type="text" style ="width :250px;" class="form-control" placeholder="Enter Destination Name"/>
                                                       </div>
                                                  </div> 
                                            </div>
                                            
                                              <hr style ="position :absolute ; width :365px;"  />
                                              <br />
                                              
                                              <label id="lblTravelType" runat="server" for="travelType" style="color:black; padding:-5px; margin-top:10px;"> Type of Travel</label>
                                               <br /> 

                                               <div class="form-row" style ="position :relative  ; padding :-5px; margin-top :-5px;">
                                                <label for="customPriority">
                                                    <span>Dropdown</span>
                                                    <select name="dropdown"  id="dropTravelType" runat="server" style ="color :#5f5f5f;font-size:15px;box-sizing :border-box ; max-width: 240px; 
                                                    float:left ; box-shadow: 1px 2px 4px 0 rgba(0, 0, 0, 0.08);padding: 8px 8px;border: 1px solid #dbdbdb;
                                                    width :155px; font-weight:lighter;">
                                                        <option selected ="selected">Choose travel type</option>
                                                        <option>Adventure</option>
                                                        <option>Business</option>
                                                        <option>Event</option>
                                                        <option>Holiday</option>
                                                        <option>Tour</option>
                                                        <option>Visit</option>
                                                    </select>
                                                </label>
                                            </div>

                                              <hr style ="position :absolute ; width :365px;"  />
                                              <br />
                                               <label id="lblTravelDuration" runat="server" for="destinationName" style="color:black; padding:-5px; margin-top:10px;">Duration</label>
                                          
                                             <div class="row" style="position:relative; padding:-5px; margin-top:-5px;">
                                                  <div class="col-xs-4">
                                                       <div class="input-group">
                                                       <input id="txtTravelDuration" runat="server" type="text" style ="width :100px;" class="form-control" placeholder="enter days"/>
                                                           <span class="input-group-addon">Days</span>
                                                       </div>
                                                  </div> 
                                            </div>
                                                     
                                          </div> <!--LEFT DIV ENDS-->


                                      </div> <!--MODAL BODY DIV ENDS-->
                                    
                                      <div class="modal-footer">
                                          <ul class="pagination">
                                              <li class="active"><a href="tripModal2" runat="server" data-toggle="modal" data-target="#tripModal2">Next &rarr; </a></li>
                                          </ul>
                                      </div>
                                  </div>
                              </div>
                          </div>


                          <div class="modal fade" id="tripModal2" tabindex="-1" role="dialog" aria-hidden="true" style="position:absolute ; width:990px; height:490px; padding :5px; margin-top :-55px">
                              <div class="modal-dialog" style="width:850px;height:430px ; margin-top :-5px;">
                                  <div class="modal-content">
                                      <div class="modal-header">
                                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                              &times;
                                          </button>
                                          <h4 class="modal-title" id="trip_Modal2" style=" text-align:center;">
                                              Saving for a Trip or Holiday Two
                                          </h4>
                                      </div>

                                       <!--This is the VERTICAL LINE IN THE MIDDLE(CENTER) OF THE DIALOG-->
                                         <div style="background: black; height:290px; position: absolute; left:400px; border-left: 1px grey solid;" >

                                         </div>
                                          <div class="modal-body" style="width :800px; height :300px;"> <!--This is the modal body where the user will be filling up information based on the emergency saving-->

                                          <!--RIGHT DIV-->
                                           <div class="Right" style ="width :365px; float :right ;height :150px; left :190px;">

                                           </div>

                                          <!--LEFT DIV-->
                                          <div class="Left"  style ="width :385px; float :left ; height :150px; padding :-5px; ">
                                          <label id="lblTravelSavingDue" runat="server" for="travelBeginDate" style="color:black; padding:-5px; margin-top:-25px;">When is the Saving Due ? </label>
                                          
                                             <div class="row" style="position:relative; padding:-5px; margin-top:-5px;">
                                                  <div class="col-xs-4">
                                                       <div class="input-group">
                                                       <input id="txtTravelSavingDue" runat="server" type="date" style ="width :180px;" class="form-control" placeholder="enter travelers"/>
                                                           <%--<span class="input-group-addon">Persons</span>--%>
                                                       </div>
                                                  </div> 
                                            </div>

                                              <hr style ="position :absolute ; width :365px;"  />
                                              <br />

                                               <label id="lblTravelContribution" runat="server" for="totalCourseCost" style="color:black; padding:-5px; margin-top:15px;">How will you contribute to Saving ?</label>
                                          
                                               <div class="row" style="position:relative; padding:-5px; margin-top:-5px; margin-bottom: -5px;">
                                                <div id="travelRadio" runat="server" class="col-xs-12">
                                                      
                                                <input type="radio" id="travelDaily" name="radio" checked="checked"/><label style ="color :black ;font-weight:lighter;margin-left:10px;" for="radio2">  Daily</label><br />
		                                        <input type="radio" id="travelWeekly" name="radio" checked="checked"/><label style ="color :black ;font-weight:lighter;margin-left:10px;" for="radio2">  Weekly</label><br />
		                                        <input type="radio" id="travelTwoweeks" name="radio"/><label  style ="color :black ; font-weight:lighter; margin-left:10px;" for="radio3">  Every two Weeks</label><br />
                                                <input type="radio" id="travelMonthly" name="radio" checked="checked"/><label style ="color :black ; font-weight:lighter; margin-left:10px;" for="radio2">  Monthly</label><br />
                                                <input type="radio" id="travelOnceOff" name="radio" checked="checked"/><label style ="color :black ; font-weight:lighter; margin-left:10px;" for="radio2">  Once Off </label>
                                               
                                                </div> 
                                                 
                                            </div>
                                          </div> <!--END OF LEFT DIV-->

                                      </div> <!--MODAL BODY DIV ENDS-->
                                      <div class="modal-footer">
                                          <ul class="pagination">
                                              <li class="active" style ="position:absolute  ; margin-top:5px; left :495px;height :30px; "><a class ="previous" runat ="server"  href="tripModal" data-toggle="modal" data-target="#tripModal">&larr; Previous</a></li>
                                             <%-- <li><a href="tripModal2" data-toggle="modal" data-target="#tripModal2">Next &rarr; </a></li>--%>
                                          </ul>
                                          <button id="btnTravelCancel" runat="server" type="button" class="btn btn-primary" data-dismiss="modal">
                                              Cancel
                                          </button>

                                          <%--<button id="btnTravelSave" runat="server" type="button" class="btn  btn-primary">
                                              Save
                                          </button>--%>

                                           <button id="btnTravelSave" runat ="server" type="submit" class="btn btn-primary" data-dismiss="modal" onserverclick ="SubmitTravel_Click">
                                             Save
                                            </button>
                                      </div>
                                  </div>
                              </div>

                          </div>

                    </div>
<!--###########################################################  END    ##############################################################################################-->                      
               

                                      
                                        <div class="modal-footer">
                                            <button id="btnSavingsCancel" runat="server" type="button" class="btn btn-primary" data-dismiss="modal">
                                              Cancel
                                          </button>

                                          <button id="btnSavingsSave" runat="server" type="button" class="btn  btn-primary">
                                              Save
                                          </button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            
                        <%--<div class="saving_creation" style="position:relative; width:950px;">--%>
                         <%--  </div>--%>

                           
                        </div>              
                    </div>
                 </div> 
        <!--This is the right side div of the page-->
        <div class="col-md-2 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms" style="position: relative; width:100px;">
    
	            <div class="skill"  style="position: relative; left:60px; padding:5px;width:350px;"> <!--Moving the div containing the progress and 
                                                                                                          more information about the saving creations-->
					<h3>Tips and Guidelines</h3>
                  
					<div class="progress-wra" style=" height:20px; width:350px; padding:5px"> <!--Adjusting the bar under the progress of the saving-->
						<h4> </h4>
                       
						<div class="progres" style="  left:-5px; width:350px;  text-align:center">
                          
                           <!--BUTTONS ON THE LEFT SIDE OF THE PAGE FOR THE TIPS AND MORE INFORMATION ABOUT
                               SAVING CREATIONS-->

                             <div class="emergencyTips" style ="position :absolute ; padding :-5px; margin-top:-30px;">
                           
                               <a class="btn btn-primary responsive" style="width:155px;" data-target="#tips" data-toggle="modal" <%--href="tips"--%> ><b> Emergency </b></a> <br />
                             
                                <%-- <div class="modal fade" id="tips" tabindex="-1" role="dialog" aria-hidden="true" style="position:relative; width:1000px; height:500px;">
                                <div class="modal-dialog" style="width:200px;">
                                    <div class="modal-content" style="width:200px;height:180px;"> 
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                &times;
                                            </button>
                                             <h4 class="modal-title " id="saving_Tips" style="text-align:center;">
                                                   Types of Savings
                                             </h4>
                                            </div>


                                            <div class="modal-body" style="height:350px;">

                                            </div>

                                            <div class="modal-footer">
                                            <button type="button" class="btn btn-primary" data-dismiss="modal">
                                              Cancel
                                            </button>

                                            <button type="button" class="btn  btn-primary">
                                              Save
                                            </button>
                                        </div>
                                        </div>
                                    </div>

                                 </div> 
                             --%>

                            </div> <!--THE END OF THE EMERGENCYTIPS DIV-->
                             <br />
                              <div class="transaction" style ="position :relative; left :-97px;">
                                   <a class="btn btn-primary responsive" style="width:155px;" href="#" ><b>Custom Goal </b></a>
                                </div>
                                 <br />
                              <div class="goals" style ="position :absolute ; padding :-5px; margin-top :-15px;">

                                    <a class="btn btn-primary responsive" style="width:155px;" href="#" ><b> Education </b></a>
                              </div>
                                    <br />
                                <div class="debts" style ="position :relative  ; padding :-5px; margin-top :15px;left :-97px;">
                                  <a class="btn btn-primary responsive" style="width:155px;" href="#" ><b> Traveling </b></a>
                                </div>
                                    <br />
                               <%-- <div class="notifications" style ="position :absolute   ; padding :-5px; margin-top :-15px">
                                     <a class="btn btn-primary responsive" style="width:155px;" href="Notification.aspx" ><b>View Notifications </b></a>
                                </div>
                            --%>
						  </div>

						</div>
                    <br /><br /><br /><br /><br /><br /><br /><br />
					</div>
                    <br /><br /><br />
                    
                    </div>	
				</div>		 <!--The end of the right div -->
			</div>
		</div>
        </form>
</asp:Content>
