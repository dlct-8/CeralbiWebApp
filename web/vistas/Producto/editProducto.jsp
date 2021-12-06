<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Config.Conexion"%>
<%@page import="Modelo.Producto"%>
<%@page import="ModeloDAO.ProductoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
              <%
              ProductoDAO dao=new ProductoDAO();
              int id=Integer.parseInt((String)request.getAttribute("idPro"));
              Producto pr =(Producto)dao.list(id);
          %>
            <h1>Modificar Persona</h1>
            <form action="ControladorProducto">
                Nombre producto:<br>
                <input class="form-control" type="text" name="txtNombrePro" value="<%=pr.getNombrePro()%>"><br>
                Descripción: <br>
                <input class="form-control" type="text" name="txtDescripcion" value="<%=pr.getDescripcion()%>"><br>
                 Medidas: <br>
                <input class="form-control" type="text" name="txtMedidas" value="<%=pr.getMedidas()%>"><br>
                 Unidades: <br>
                <input class="form-control"  type="number" name="txtUnidades" value="<%=pr.getUnidades()%>"><br>
                 Precio Costo: <br>
                <input class="form-control" type="number" step="0.01" name="txtPrecioCosto" value="<%= pr.getPrecioCosto()%>"><br>
                Precio Venta: <br>
                <input class="form-control" type="number" step="0.01" name="txtPrecioVenta" value="<%=pr.getPrecioVenta()%>" ><br>
                
                Imagen Producto: <br>
                <input class="form-control" type="text" name="txtImagenProd" value="<%=pr.getImagenProd()%>"><br>
                Categoria: <br>
                <input class="form-control" type="text" name="txtIdCat" value="<%=pr.getIdCat()%>"><br>
                
                <input type="hidden" name="txtid" value="<%= pr.getIdPro()%>">
                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar"> 
                <a href="ControladorProducto?accion=listar">Regresar</a>
            </form>
          </div>
          
        </div>
    </body>
</html>
