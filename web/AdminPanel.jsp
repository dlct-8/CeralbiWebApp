<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<title>Ceralbi - Administrador</title>
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

  <script src="https://kit.fontawesome.com/cfe8b23fc4.js" crossorigin="anonymous"></script>

  <!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
  <link rel="stylesheet" href="css/storeadmin.css"/>
  <link rel="stylesheet" href="css/common.css"/>
	<link rel="stylesheet" href="css/main.css"/>

</head>

  <body>
    <!-- The sidebar -->
    <div class="sidebar">
     <img src="Imgs/LogoAzulW.png" alt="Logo Ceralbi">
     <div class="adminClose">
      <i class="fas fa-user-cog" style="font-size:35px"></i><br>
   		Administrador
   	 </div>
     <a class="active" href="#home"><i class="fas fa-tachometer-alt"></i>Dashboard</a>
     <a href="ControladorCliente?accion=listar"><i class="fas fa-address-book"></i>Clientes</a>
     <a href="ControladorProducto?accion=listar"><i class="fas fa-images"></i>Productos</a>
		 <a href="ControladorCategoria?accion=listar"><i class="fas fa-filter"></i>Categorías</a>
     <a href="ControladorVenta?accion=listar"><i class="fas fa-chart-line"></i>Ventas</a>
     <a href="ControladorFactura?accion=listar"><i class="fas fa-file-invoice-dollar"></i>Facturas</a>
     <a href="#"><i class="fas fa-boxes"></i>Inventario</a>
     <a href="#"><i class="fas fa-file-contract"></i>Reportes</a>
     <a href="ControladorContacto?accion=listar"><i class="fas fa-comment-dots"></i>Contacto</a>
     <div class="exit">
       <a href="Home.jsp"><i class="fas fa-sign-out-alt"></i>Salir</a>
     </div>
    </div>

<!-- Page content -->
<div class="content">
  <h3>Dashboard</h3>
         <div class="container">
             <div class="row">
                 <div class="col">
                     <p class="text-white mt-5 mb-5">Bienvenido, <b>Admin</b></p>
                 </div>
             </div>
             <!-- row -->
             <div class="row tm-content-row">
                 <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                     <div class="tm-bg-primary-dark tm-block"><div style="position: absolute; inset: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;" class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div></div><div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:200%;height:200%;left:0; top:0"></div></div></div>
                         <h2 class="tm-block-title">Latest Hits</h2>
                         <img src="Imgs\Gafica ventas.png" alt="Gráfica ventas">
                         <canvas id="lineChart" style="display: block; width: 465px; height: 232px;" class="chartjs-render-monitor" width="465" height="232"></canvas>
                     </div>
                 </div>
                 <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                     <div class="tm-bg-primary-dark tm-block"><div style="position: absolute; inset: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;" class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div></div><div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:200%;height:200%;left:0; top:0"></div></div></div>
                         <h2 class="tm-block-title">Performance</h2>
                         <img src="Imgs\Porcentaje de ventas.png" alt="Porcentaje ventas">
                         <canvas id="barChart" style="display: block; width: 465px; height: 232px;" class="chartjs-render-monitor" width="465" height="232"></canvas>
                     </div>
                 </div>
                 <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                     <div class="tm-bg-primary-dark tm-block tm-block-taller">
                         <h2 class="tm-block-title">Storage Information</h2>
                         <img src="Imgs\Ganancias.png" alt="Ganancias">
                         <div id="pieChartContainer" style="height: 300px;"><div style="position: absolute; inset: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;" class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div></div><div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:200%;height:200%;left:0; top:0"></div></div></div>
                             <canvas id="pieChart" class="chartjs-render-monitor" style="display: block; width: 465px; height: 300px;" width="465" height="300"></canvas>
                         </div>
                     </div>
                 </div>
                 <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                     <div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-overflow">
                         <h2 class="tm-block-title">Notification List</h2>
                         <div class="tm-notification-items">
                             <div class="media tm-notification-item">
                                 <div class="tm-gray-circle"><img src="Imgs\Notificación.jpg" alt="Avatar Image" class="rounded-circle"></div>
                                 <div class="media-body">
                                     <p class="mb-2"><b>Jessica</b> and <b>6 others</b> sent you new <a href="#" class="tm-notification-link">product updates</a>. Check new orders.</p>
                                     <span class="tm-small tm-text-color-secondary">6h ago.</span>
                                 </div>
                             </div>
                             <div class="media tm-notification-item">
                                 <div class="tm-gray-circle"><img src="Imgs\Notificación.jpg" alt="Avatar Image" class="rounded-circle"></div>
                                 <div class="media-body">
                                     <p class="mb-2"><b>Oliver Too</b> and <b>6 others</b> sent you existing <a href="#" class="tm-notification-link">product updates</a>. Read more reports.</p>
                                     <span class="tm-small tm-text-color-secondary">6h ago.</span>
                                 </div>
                             </div>
                             <div class="media tm-notification-item">
                                 <div class="tm-gray-circle"><img src="Imgs\Notificación.jpg" alt="Avatar Image" class="rounded-circle"></div>
                                 <div class="media-body">
                                     <p class="mb-2"><b>Victoria</b> and <b>6 others</b> sent you <a href="#" class="tm-notification-link">order updates</a>. Read order information.</p>
                                     <span class="tm-small tm-text-color-secondary">6h ago.</span>
                                 </div>
                             </div>
                             <div class="media tm-notification-item">
                                 <div class="tm-gray-circle"><img src="Imgs\Notificación.jpg" alt="Avatar Image" class="rounded-circle"></div>
                                 <div class="media-body">
                                     <p class="mb-2"><b>Laura Cute</b> and <b>6 others</b> sent you <a href="#" class="tm-notification-link">product records</a>.</p>
                                     <span class="tm-small tm-text-color-secondary">6h ago.</span>
                                 </div>
                             </div>
                             <div class="media tm-notification-item">
                                 <div class="tm-gray-circle"><img src="Imgs\Notificación.jpg" alt="Avatar Image" class="rounded-circle"></div>
                                 <div class="media-body">
                                     <p class="mb-2"><b>Samantha</b> and <b>6 others</b> sent you <a href="#" class="tm-notification-link">order stuffs</a>.</p>
                                     <span class="tm-small tm-text-color-secondary">6h ago.</span>
                                 </div>
                             </div>
                             <div class="media tm-notification-item">
                                 <div class="tm-gray-circle"><img src="Imgs\Notificación.jpg" alt="Avatar Image" class="rounded-circle"></div>
                                 <div class="media-body">
                                     <p class="mb-2"><b>Sophie</b> and <b>6 others</b> sent you <a href="#" class="tm-notification-link">product updates</a>.</p>
                                     <span class="tm-small tm-text-color-secondary">6h ago.</span>
                                 </div>
                             </div>
                             <div class="media tm-notification-item">
                                 <div class="tm-gray-circle"><img src="Imgs\Notificación.jpg" alt="Avatar Image" class="rounded-circle"></div>
                                 <div class="media-body">
                                     <p class="mb-2"><b>Lily A</b> and <b>6 others</b> sent you <a href="#" class="tm-notification-link">product updates</a>.</p>
                                     <span class="tm-small tm-text-color-secondary">6h ago.</span>
                                 </div>
                             </div>
                             <div class="media tm-notification-item">
                                 <div class="tm-gray-circle"><img src="Imgs\Notificación.jpg" alt="Avatar Image" class="rounded-circle"></div>
                                 <div class="media-body">
                                     <p class="mb-2"><b>Amara</b> and <b>6 others</b> sent you <a href="#" class="tm-notification-link">product updates</a>.</p>
                                     <span class="tm-small tm-text-color-secondary">6h ago.</span>
                                 </div>
                             </div>
                             <div class="media tm-notification-item">
                                 <div class="tm-gray-circle"><img src="Imgs\Notificación.jpg" alt="Avatar Image" class="rounded-circle"></div>
                                 <div class="media-body">
                                     <p class="mb-2"><b>Cinthela</b> and <b>6 others</b> sent you <a href="#" class="tm-notification-link">product updates</a>.</p>
                                     <span class="tm-small tm-text-color-secondary">6h ago.</span>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
                 <div class="col-12 tm-block-col">
                     <div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-scroll">
                         <h2 class="tm-block-title">Pedidos</h2>
                         <table class="table">
                             <thead>
                                 <tr>
                                     <th scope="col">N° ORDEN</th>
                                     <th scope="col">ESTADO</th>
                                     <th scope="col">CLIENTE</th>
                                     <th scope="col">DIRECCIÓN</th>
                                     <th scope="col">DISTANCIA</th>
                                     <th scope="col">FECHA INICIO</th>
                                     <th scope="col">ENTREGA ESTIMADA/th>
                                 </tr>
                             </thead>
                             <tbody>
                                 <tr>
                                     <th scope="row"><b>#EFEFEF</b></th>
                                     <td>
                                         <div class="tm-status-circle moving">
                                         </div>En proceso
                                     <td><b>Oliver Trag</b></td>
                                     <td><b>Usme, Bogotá</b></td>
                                     <td><b>10 km</b></td>
                                     <td>16:00, 12 NOV 2018</td>
                                     <td>08:00, 18 NOV 2018</td>
                                 </tr>
                                 <tr>
                                     <th scope="row"><b>#122348</b></th>
                                     <td>
                                         <div class="tm-status-circle pending">
                                         </div>Pendiente
                                     </td>
                                     <td><b>Jacob Miller</b></td>
                                     <td><b>Bosa, Bogotá</b></td>
                                     <td><b>7 km</b></td>
                                     <td>11:00, 10 NOV 2018</td>
                                     <td>04:00, 14 NOV 2018</td>
                                 </tr>
                                 <tr>
                                     <th scope="row"><b>#122347</b></th>
                                     <td>
                                         <div class="tm-status-circle cancelled">
                                         </div>Cancelado
                                     </td>
                                     <td><b>George Wilson</b></td>
                                     <td><b>Suba, Bogotá</b></td>
                                     <td><b>2 km</b></td>
                                     <td>12:00, 22 NOV 2018</td>
                                     <td>06:00, 28 NOV 2018</td>
                                 </tr>
                                 <tr>
                                     <th scope="row"><b>#122346</b></th>
                                     <td>
                                         <div class="tm-status-circle moving">
                                         </div>En proceso
                                     </td>
                                     <td><b>William Aung</b></td>
                                     <td><b>Engativá, Bogotá</b></td>
                                     <td><b>3 km</b></td>
                                     <td>15:00, 10 NOV 2018</td>
                                     <td>09:00, 14 NOV 2018</td>
                                 </tr>
                                 <tr>
                                     <th scope="row"><b>#122345</b></th>
                                     <td>
                                         <div class="tm-status-circle pending">
                                         </div>Pendiente
                                     </td>
                                     <td><b>Harry Ryan</b></td>
                                     <td><b>Usme</b></td>
                                     <td><b>9 km</b></td>
                                     <td>15:00, 11 NOV 2018</td>
                                     <td>09:00, 17 NOV 2018</td>
                                 </tr>
                                 <tr>
                                     <th scope="row"><b>#122344</b></th>
                                     <td>
                                         <div class="tm-status-circle pending">
                                         </div>Pendiente
                                     </td>
                                     <td><b>Michael Jones</b></td>
                                     <td><b>Usaquen, Bogotá</b></td>
                                     <td><b>4km</b></td>
                                     <td>18:00, 12 OCT 2018</td>
                                     <td>06:00, 18 OCT 2018</td>
                                 </tr>
                                 <tr>
                                     <th scope="row"><b>#122343</b></th>
                                     <td>
                                         <div class="tm-status-circle moving">
                                         </div>En proceso
                                     </td>
                                     <td><b>Timmy Davis</b></td>
                                     <td><b>Bosa</b></td>
                                     <td><b>8 km</b></td>
                                     <td>12:00, 10 OCT 2018</td>
                                     <td>08:00, 18 OCT 2018</td>
                                 </tr>
                                 <tr>
                                     <th scope="row"><b>#122342</b></th>
                                     <td>
                                         <div class="tm-status-circle moving">
                                         </div>En proceso
                                     </td>
                                     <td><b>Oscar Phyo</b></td>
                                     <td><b>Suba, Bogotá</b></td>
                                     <td><b>1 km</b></td>
                                     <td>15:30, 06 OCT 2018</td>
                                     <td>09:30, 16 OCT 2018</td>
                                 </tr>
                                 <tr>
                                     <th scope="row"><b>#122341</b></th>
                                     <td>
                                         <div class="tm-status-circle moving">
                                         </div>En proceso
                                     </td>
                                     <td><b>Charlie Brown</b></td>
                                     <td><b>Engativá</b></td>
                                     <td><b>3 km</b></td>
                                     <td>11:00, 10 OCT 2018</td>
                                     <td>03:00, 14 OCT 2018</td>
                                 </tr>
                                 <tr>
                                     <th scope="row"><b>#122340</b></th>
                                     <td>
                                         <div class="tm-status-circle cancelled">
                                         </div>Cancelado
                                     </td>
                                     <td><b>Wilson Cookies</b></td>
                                     <td><b>Barrios Unidos, Bogotá</b></td>
                                     <td><b>5 km</b></td>
                                     <td>17:30, 12 OCT 2018</td>
                                     <td>08:30, 22 OCT 2018</td>
                                 </tr>
                                 <tr>
                                     <th scope="row"><b>#122339</b></th>
                                     <td>
                                         <div class="tm-status-circle moving">
                                         </div>En proceso
                                     </td>
                                     <td><b>Richard Clamon</b></td>
                                     <td><b>Usme, Bogotá</b></td>
                                     <td><b>150 km</b></td>
                                     <td>15:00, 12 OCT 2018</td>
                                     <td>09:20, 26 OCT 2018</td>
                                 </tr>
                             </tbody>
                         </table>
                     </div>
                 </div>
             </div>
         </div>
         <footer class="tm-footer row tm-mt-small">
             <div class="col-12 font-weight-light">
                 <p class="text-center text-white mb-0 px-4 small">
                     Copyright © <b>2018</b> All rights reserved.

                     Design: <a rel="nofollow noopener" href="https://templatemo.com" class="tm-footer-link">Template Mo</a>
                 </p>
             </div>
         </footer>
     </div>

     <script src="js/jquery-3.3.1.min.js"></script>
     <!-- https://jquery.com/download/ -->
     <script src="js/moment.min.js"></script>
     <!-- https://momentjs.com/ -->
     <script src="js/Chart.min.js"></script>
     <!-- http://www.chartjs.org/docs/latest/ -->
     <script src="js/bootstrap.min.js"></script>
     <!-- https://getbootstrap.com/ -->
     <script src="js/tooplate-scripts.js"></script>
     <script>
         Chart.defaults.global.defaultFontColor = 'white';
         let ctxLine,
             ctxBar,
             ctxPie,
             optionsLine,
             optionsBar,
             optionsPie,
             configLine,
             configBar,
             configPie,
             lineChart;
         barChart, pieChart;
         // DOM is ready
         $(function () {
             drawLineChart(); // Line Chart
             drawBarChart(); // Bar Chart
             drawPieChart(); // Pie Chart

             $(window).resize(function () {
                 updateLineChart();
                 updateBarChart();
             });
         })
     </script>
  </body>
