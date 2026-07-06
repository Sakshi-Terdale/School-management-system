<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adminlogin.aspx.cs" Inherits="Adminlog_Adminlogin" %>
<html lang="en">
<head>
	<title>School Management System</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	

<!--===============================================================================================-->

<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">

	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">

		<style>


		.container-login100::before {
		content: "";
		display: block;
		position: absolute;
		z-index: -1;
		width: 100%;
		height: 100%;
		top: 0;
		left: 0;
		background-color: rgba(67 23 176 / 0.08%);
	}
		.wrap-login100 {
	width: 500px;
	border-radius: 10px;
	overflow: hidden;
	padding: 55px 55px 37px 55px;
	background: #9152f8;
    background: -webkit-linear-gradient(top, #7579ff,#d1000030);
	background: -o-linear-gradient(top, #7579ff, #b224ef);
	background: -moz-linear-gradient(top, #7579ff, #b224ef);
	background: linear-gradient(top, #7579ff, #00000060);
}
	</style>
<!--===============================================================================================-->
</head>
<body>
    <form id="form1" runat="server">
   <div class="limiter">
		<div class="container-login100" style="background-image: url('../School-main-4K.jpg');">

			<div class="wrap-login100">
               
				<div class="login100-form validate-form">
					<span class="login100-form-logo">
						<i class="zmdi zmdi-landscape"></i>
					</span>

					<span class="login100-form-title p-b-34 p-t-27">
					LOG IN
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Enter Adminname">
						
                        <asp:TextBox ID="txtadminnm" class="input100" runat="server"></asp:TextBox>
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
					
                              <asp:TextBox ID="txtpass" class="input100" Type="password" runat="server"></asp:TextBox>
						
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>
					<input type="checkbox" onclick="Toggle()">
    <strong style="color:white">Show Password</strong>
				

					<div class="container-login100-form-btn">
						  <asp:Button ID="btnlogin" class="login100-form-btn" runat="server" Text="Login" OnClick="btnlogin_Click"  />
					</div>
                 </div>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	   <script>
        // Change the type of input to password or text
        function Toggle() {
            let temp = document.getElementById("txtpass");
             
            if (temp.type === "password") {
                temp.type = "text";
            }
            else {
                temp.type = "password";
            }
        }
       </script>

	<script src="js/main.js"></script>
    </form>
</body>
</html>
