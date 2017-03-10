<%@ Page Title="" Language="C#" MasterPageFile="~/Finance.Master" AutoEventWireup="true" CodeBehind="Registration1.aspx.cs" Inherits="WebApplication1.Registration11" %>
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
    
    <style type="text/css">
    .auto-style1 {
        width: 100%;
            height: 340px;
        }
    .auto-style2 {
        width: 205px;
            height: 26px;
        }
    .auto-style3 {
        width: 205px;
        height: 23px;
        text-align: right;
    }
    .auto-style4 {
        height: 23px;
    }
    .auto-style5 {
        font-weight: bold;
    }
    .auto-style6 {
        width: 205px;
        text-align: right;
    }
    .auto-style7 {
        width: 301px;
    }
    .auto-style8 {
        height: 23px;
        width: 301px;
    }
        .auto-style9 {
            width: 301px;
            height: 26px;
        }
        .auto-style10 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="breadcrumb">
		<div class="container">	
			<div class="breadcrumb">							
				<li><a href="index.html">Home</a></li>
				<li> Registration</li>			
			</div>		
		</div>	
	</div>
    <form id="form1" runat="server">


         <div class="container">
			<h3> Register Here</h3>
			<hr>
			




			<div class="col-md-5 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
				<div class="skill">
					<h3> </h3>
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



    <table class="auto-style1">
        <tr>
            <td class="auto-style6">
                <asp:Label ID="lblFN" runat="server" CssClass="auto-style5" Text="First Name:" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtFN" runat="server" Width="350px" ForeColor="Black"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="lblLN" runat="server" CssClass="auto-style5" Text="Last Name:" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtLN" runat="server" Width="350px" ForeColor="Black"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="lblDOB" runat="server" CssClass="auto-style5" Text="Date of Birth:" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtDOB" runat="server" Width="350px" ForeColor="Black"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="lblEA" runat="server" CssClass="auto-style5" Text="Email Address:" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtEA" runat="server" Width="350px" ForeColor="Black"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="lblUN" runat="server" CssClass="auto-style5" Text="User Name:" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtUN" runat="server" Width="350px" ForeColor="Black"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="lblP" runat="server" CssClass="auto-style5" Text="Password:" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtP" runat="server" Width="350px" TextMode="Password" ForeColor="Black"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lblCP" runat="server" CssClass="auto-style5" Text="Confirm Password:" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txtCP" runat="server" Width="350px" Height="26px" TextMode="Password" ForeColor="Black"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style8">
                <asp:Button ID="btnRegister" runat="server" ForeColor="Black" Text="Register" />
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style10"></td>
        </tr>
    </table>
</form>
</asp:Content>
