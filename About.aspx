<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/PersonalFinance.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="PersonalFinanceManagement.WebPages.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Company-HTML Bootstrap theme</title>

    <!-- Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet"/>
	<link rel="stylesheet" href="../css/font-awesome.min.css"/>
	<link rel="stylesheet" href="../css/animate.css"/>
	<link href="../css/prettyPhoto.css" rel="stylesheet"/>
	<link href="../css/style.css" rel="stylesheet" />		


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="breadcrumb">
		<div class="container">	
			<div class="breadcrumb">							
				<li><a href="Home.aspx">Home</a></li>
				<li>About Us</li>			
			</div>		
		</div>	
	</div>

    
	<div class="aboutus" style="padding:5px; padding-bottom:35px">
		<div class="container">
			<h3>About Our Company</h3>
			<hr>
			<div class="col-md-7 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
				<img src="../images/cashbox.jpg" class="img-responsive"/>

				<h3> Manages your finances more efficiently </h3>
                <h5>
                    The company is an online-based management system, it enable you to manage your finances
                    more efficiently in such a way that you never find yourself in lot of debts. It aims
                    to reduces your financial crisis and maximize your savings.
                </h5>

                <h3> Manages your expenses </h3>
                <h5>
                    Our company enables you to take care of your expenses helping you in managing your
                   finances efficiently.
                </h5>

                <h4></h4>
                <h5>
                    The allocation of such funds ensures you that some of the situations
                    are taken care of when it is still the towards the end of the specific period

                </h5>

                <h3> Prioritize your savings</h3>
                <h5>
                    Making savings is the main priority everyone should consider when it comes to managing 
                    personal finance, as it is most people's dream to have a backup to rely on in future.
                </h5>
			</div>
			<div class="col-md-5 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
				<div class="skill" style="position:relative; padding:-15px;">
					<h3>Company Service</h3>
                   
					<div class="progress-wrap">
						<div class="progress">
                            <br />
                            <h4 style="text-align:left; font-size:20px;"> Budgeting Service</h4>

                            <p style="text-align:left; font-size: 15px;">  </p>


                             <br />
                            <h4 style="text-align:left; font-size:20px;"> Savings</h4>
                               <p style="text-align:left; font-size: 15px;">   </p>


                             <br />
                            <h4 style="text-align:left; font-size:20px;"> Debts Management</h4>
                               <p style="text-align:left; font-size: 15px;">    </p>


                             <br />
                            <h3 style="text-align:left;"> </h3>
                           
						  </div>

						</div>
					</div>
					<div class="progress-wrap">
					</div>

					<div class="progress-wrap">
					</div>

				<div class="progress-wrap">
			</div>
		</div>				
	  </div>
		

      <div class="our-team">
		<div class="container">
			<h3 style="left:900px;">Company Team </h3>	
			<div class="text-center">
				<div class="col-md-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
					<h4>Mr ST MOKOENA</h4>
					<p> </p>
				</div>
				<div class="col-md-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
					<h4>Mr H NKUEBE</h4>
					<p> </p>
				</div>
				<div class="col-md-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="900ms">
				<h4>Mr GL RAMATJA</h4>
					<p> </p>
				</div>

               <%-- <div class="col-md-3 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="900ms">
					--%><!--<img src="images/services/eki.jpg" alt="" >--->
					<%--<h4>Ms EP UDOM</h4>
					<p> </p>
				</div>--%>
			</div>
		</div>
	</div>
        </div>
</asp:Content>
