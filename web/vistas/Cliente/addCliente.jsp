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
        <title>Clientes</title>
    </head>
    <body>
       
         
        <div class="container">
        <div class="col-lg-6">
        <h1>Agregar Cliente</h1>
        
        <form action="ControladorCliente" method="get">   
        <!-- Campos del Formulario -->      
        Nombres: <br>
        <input class="form-control" type="text" name="txtNombres"><br>
        Apellidos: <br>
        <input class="form-control" type="text" name="txtApellidos"><br>       
        Tipo Documento: <br>
        <select class="form-control" name="txtIdTipo" id="txtIdTipo"> <br>
        
            <%   
            Conexion cn=new Conexion();
            Connection con;
            PreparedStatement ps;
            ResultSet rs;
            String sql1="select * from tipodocumento";
                try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql1);
            rs=ps.executeQuery();
            while(rs.next()){
                out.println("<option value='"+rs.getInt("IdTipo")+"'>"+rs.getString("tipodocumento")+ "</option>");
            }
        } catch (Exception e) {
        }
            %>
        </select><br> 
        
        Numero de documento: <br>
        <input class="form-control" type="text" name="txtNumerodoc"><br> 
        Telefono: <br>
        <input class="form-control" type="text" name="txtTelefono"><br> 
        Correo: <br>
        <input class="form-control" type="email" name="txtCorreo"><br>        
        Direccion: <br>
        <input class="form-control" type="text" name="txtDireccion"><br>         
             
          
                    
        <!-- Botón envio de datos -->
        <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
        <!-- Regredar a la vista show -->
        <a href="ControladorCliente?accion=listar">Regresar</a>
        </form>
        
        </div>
        </div>
    </body>
</html>
