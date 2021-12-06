<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Config.Conexion"%>
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
        <h1>Agregar Producto</h1>
        
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
        <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
        <!-- Regredar a la vista show -->
        <a href="ControladorProducto?accion=listar">Regresar</a>
        </form>
        
        </div>
        </div>
    </body>
</html>
