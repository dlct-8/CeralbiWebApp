<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Config.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <title>Productos</title>
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
       <a href="AdminPanel.jsp"><i class="fas fa-tachometer-alt"></i>Dashboard</a>
       <a href="ControladorCliente?accion=listar"><i class="fas fa-address-book"></i>Clientes</a>
       <a class="active" href="ControladorProducto?accion=listar"><i class="fas fa-images"></i>Productos</a>
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

        <div class="content">
        <div class="col-lg-6">
        <h2>Agregar Producto</h2>

        <form action="ControladorProducto" method="get">
        <!-- Campos del Formulario -->
        Nombre Producto:<br>
        <input class="form-control" type="text" name="txtNombrePro"><br>
        Descripción: <br>
        <input class="form-control" type="text" name="txtDescripcion"><br>
        Medidas: <br>
        <input class="form-control" type="text" name="txtMedidas"><br>
        Unidades: <br>
        <input class="form-control"  type="number" name="txtUnidades"><br>
        Precio Costo: <br>
        <input class="form-control" type="number" step="0.01" name="txtPrecioCosto"><br>
        Precio Venta: <br>
        <input class="form-control" type="number" step="0.01" name="txtPrecioVenta"><br>
        Imagen: <br>
        <input class="form-control" type="text"  name="txtImagenProd"><br>


        Categoria: <br>
        <select class="form-control" name="txtIdCat" id="txtIdCat">
            <option>Seleccione una categoria</option>

            <%
            Conexion cn=new Conexion();
            Connection con;
            PreparedStatement ps;
            ResultSet rs;
            String sql1="select * from categoria";
                try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql1);
            rs=ps.executeQuery();
            while(rs.next()){
                out.println("<option value='"+rs.getInt(1)+"'>"+rs.getString(2)+ "</option>");
            }
        } catch (Exception e) {
        }
            %>
        </select><br>

        <!-- Botón envio de datos -->
        <input class="add" type="submit" name="accion" value="Agregar">
        <!-- Regredar a la vista show -->
        <a class="add" href="ControladorProducto?accion=listar">Regresar</a>
        </form>

        </div>
        </div>
    </body>
</html>
