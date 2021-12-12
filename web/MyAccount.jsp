<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="es">
<head>
	<title>Mi Cuenta</title>
	<meta charset="UTF-8">
	<meta name="description" content="Ceralbi - La tienda en línea">
	<meta name="keywords" content="ceralbi, Encajas, eCommerce, cuadros, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Icon -->
	<link href="Imgs/LogoAzul.ico" rel="shortcut icon"/>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,500,500i,600,600i,700,700i"
  rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Roboto:400,400i,500,500i,600,600i,700,700i"
  rel="stylesheet">
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<script src="https://kit.fontawesome.com/cfe8b23fc4.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="css/common.css"/>
	<link rel="stylesheet" href="css/main.css"/>
	<link rel="stylesheet" href="css/login.css"/>
	<link rel="stylesheet" href="css/sidenav.css"/>
	<link rel="stylesheet" href="css/animate.css"/>
</head>

<header>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header section -->
		<!-- Top navigation -->
		<div class="topnav" id="myTopnav">

			<!-- Left-aligned links (default) -->
			<!-- logo -->
			<div class="site-logo">
				<img src="Imgs/LogoAzulWN.png" alt="Logo Ceralbi">
			</div>
			<a href="javascript:void(0);" class="icon" onclick="hamburgerMenu()">
				<i class="fa fa-bars"></i>
			</a>
			<a href="AboutUs.html">Nosotros</a>
			<a href="Contact.html">Contacto</a>
			<a href="Help/CustomerServices.html">Ayuda</a>
			<a href="Home.html">Inicio</a>
			<!--<a href="Sales/Cajas/Cajas.html">Cajas</a>
			<div class="dropdown">
				<button class="dropbtn" onclick="dropdownMenu()">Cuadros
					<i class="fa fa-caret-down"></i>
				</button>
				<div class="dropdown-content" id="myDropdown">
					<a href="Sales/Cuadros/Oficina/Oficina.html">Oficina</a>
					<a href="Sales/Cuadros/Hogar/Hogar.html">Hogar</a>
				</div>
			</div>-->

			<!-- Right-aligned links -->
			<div class="topnav-right">
				<a href="Login.html"class="active">Mi Cuenta <i class="fa fa-user-circle-o" aria-hidden="true"></i></a>
				<div class="search-container">
					<form action="/action_page.php">
						<input type="text" placeholder="Buscar..." name="search">
						<button type="submit"><i class="fa fa-search"></i></button>
					</form>
				</div>
				<a href="Sales/Cart.html" class="card-bag"><i class="fa fa-shopping-cart" aria-hidden="true"></i><span>2</span></a>
			</div>

		</div>
</header>
	<!-- Header section end -->

<body>

	<!-- Page -->
	<div id="mySidenav" class="sidenav">
		<div class="tab">
			<button class="openbtn" onclick="openNav()"><i class="fas fa-bars" style="padding-left:5px;
			padding-right:10px;"></i>
			Mi Cuenta</button>
			<button class="tablinks" onclick="openTab(event, 'orders'); closeNav()"><i class="fas fa-shopping-bag"
			style="padding-left:5px; padding-right:10px;"></i>
				Mis Compras</button>
			<button class="tablinks" onclick="openTab(event, 'myData'); closeNav()"><i class="fas fa-user"
				style="padding-left:5px; padding-right:10px;"></i>
				Mis Datos</button>
			<button class="tablinks" onclick="openTab(event, 'edit'); <closeNav></closeNav>"><i class="fas fa-cogs"
				style="padding-left:5px; padding-right:10px;"></i>
				Ajustes</button>
			<button class="closebtn" onclick="closeNav()"><i class="fas fa-window-close" style="padding-left:5px;
			padding-right:10px;"></i>
				Cerrar Panel</button>
		</div>
	</div>

	<div id="main">
		<div id="orders" class="tabcontent">
	 		<br><h3>Mis Compras</h3>
			<br><div class="cardorder">
				<img src="Imgs/Products/Animales.png" alt="Avatar" class="cardorder">
				<div class="container">
					<h4><b>Cuadro Animales</b></h4>
				 <p>$20.000 - 25/05/2020</p>
			 </div>
			</div>
			<br><div class="cardorder">
				<img src="Imgs/Products/Animales2.png" alt="Avatar" class="cardorder">
				<div class="container">
					<h4><b>Cuadro Animales</b></h4>
				 <p>$20.000 - 20/05/2020</p>
			 </div>
			</div>
		</div>
		<div id="myData" class="tabcontent">
			<br><h3>Datos de mi Cuenta</h3>
			<br><div class="card">
 				<div class="container">
	 				<br><h4><b>Usuario</b></h4>
				  <p>DianaLCT</p>
					<h4><b>E-mail</b></h4>
				  <p>ceralbi@ceralbi.com</p>
			 </div>
			</div>

			<br><h3>Datos Personales</h3>
			<br><div class="card">
 				<div class="container">
	 				<br><h4><b>Nombre y apellido</b></h4>
				  <p>DianaLCT</p>
					<h4><b>Documento</b></h4>
				  <p>********57</p>
					<h4><b>Teléfono</b></h4>
				  <p>+57 123 456 7890</p>
			 </div>
			</div>

			<br><h3>Datos de mi Cuenta</h3>
			<br><div class="card">
				<div class="container">
					<br><h4><b>Usuario</b></h4>
					<p>DianaLCT</p>
					<h4><b>E-mail</b></h4>
					<p>ceralbi@ceralbi.com</p>
			 </div>
			</div>

			<br><h3>Métodos de Pago</h3>
			<br><div class="card">
 				<div class="container">
	 				<br><h4><b>Tarjeta Visa</b></h4><i class="fab fa-cc-visa"></i>
				  <p>*6789</p>
					<h4><b>Tarjeta MasterCard</b></h4>
				   <i class="fab fa-cc-mastercard"></i><p>*6789</p>
			 </div>
		 </div><br><br>
	</div>
	</div>
	<!-- Page End-->





			<!--====== Javascripts & Jquery ======-->
			<script src="js/jquery-3.2.1.min.js"></script>
			<script src="js/sidenav.js"></script>
			<script src="js/bootstrap.min.js"></script>
			<script src="js/mixitup.min.js"></script>
			<script src="js/sly.min.js"></script>
			<script src="js/jquery.nicescroll.min.js"></script>
			<script src="js/main.js"></script>
			<script src="js/login.js"></script>
</body>
</html>
