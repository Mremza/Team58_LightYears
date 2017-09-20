<%@ Page Title="" Language="C#" MasterPageFile="~/Finance.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


     <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Company-HTML Bootstrap theme</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/animate.css"/>
	<link href="css/prettyPhoto.css" rel="stylesheet"/>
	<link href="css/style.css" rel="stylesheet" />
<!--I have added a new comment on this file-->

    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
            width: 177px;
            text-align: right;
        }
        .auto-style5 {
            width: 177px;
            text-align: right;
        }
        .auto-style6 {
            width: 177px
        }
    </style>


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="breadcrumb">
		<div class="container">	
			<div class="breadcrumb">							
				<li><a href="index.html">Home</a></li>
				<li> Log In</li>			
			</div>		
		</div>	
	</div>
    <div class="container">
			<h3>Log In here</h3>
			<hr>
			


			<div class="col-md-5 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
				<div class="skill">
					<h3></h3>
                    <!--
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    -->

					
					</div>

					<div class="progress-wrap">
                        <!--
						<h4>HTML</h4>
						<div class="progress">
						  <div class="progress-bar color2" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 95%">
						   <span class="bar-width">95%</span>
						  </div>
						</div>
                        -->
					</div>

					<div class="progress-wrap">
                        <!--
						<h4>CSS</h4>
						<div class="progress">
						  <div class="progress-bar color3" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
							<span class="bar-width">80%</span>
						  </div>
						</div>
                        -->
					</div>

					<div class="progress-wrap">
                        <!--
						<h4>Wordpress</h4>
						<div class="progress">
						  <div class="progress-bar color4" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
							<span class="bar-width">90%</span>
						  </div>
						</div>
                        -->
					</div>
				</div>				
			</div>




    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3"><strong>
                    <asp:Label ID="lblUn" runat="server" Text="Username:" ForeColor="Black"></asp:Label>
                    </strong></td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtUname" runat="server" ForeColor="Black" Width="350px"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>
                    <asp:Label ID="lblP" runat="server" Text="Password:" ForeColor="Black"></asp:Label>
                    </strong></td>
                <td>
                    <asp:TextBox ID="txtPasss" runat="server" ForeColor="Black" TextMode="Password" Width="350px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" ForeColor="Black" />
                    <asp:Button ID="btnRegister" runat="server" Text="Register" ForeColor="Black" />
                </td>
                <td>&nbsp;</td>
		    
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>


</asp:Content>
