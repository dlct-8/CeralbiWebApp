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
        <h1>Agregar Venta</h1>
        
        <form action="ControladorVenta" method="get">   
        <!-- Campos del Formulario -->
        Total venta:<br>        
        <select class="form-control" name="txtIdPed" id="txtIdPed"> <br>
            
            <%   
            Conexion cn=new Conexion();
            Connection con;
            PreparedStatement ps;
            ResultSet rs;
            String sql1="select * from pedido";
                try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql1);
            rs=ps.executeQuery();
            while(rs.next()){
                out.println("<option value='"+rs.getInt(1)+"'>"+rs.getString("total")+"</option>");
            }
        } catch (Exception e) {
        }
            %>
        </select><br>  
        
        Fecha de Realizado: <br>
        <input class="form-control" type="date" name="txtFechaReal"><br>
        Fecha de Entrega: <br>
        <input class="form-control" type="date" name="txtFechaEntreg"><br>       
       
        Medio de pago: <br>
        <select class="form-control" name="txtIdmed" id="txtIdmet"> <br>
            <option value="999">Seleccione el medio pago</option>
            
            <%   
            
            String sql2="select * from mediopago";
                try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql2);
            rs=ps.executeQuery();
            while(rs.next()){
                out.println("<option value='"+rs.getInt(1)+"'>"+rs.getString(2)+"</option>");
            }
        } catch (Exception e) {
        }
            %>
        </select><br>  
        
        Método de envío: <br>
        <select class="form-control" name="txtIdmet" id="txtIdmet"> <br>
           
            <%   
            
            String sql3="select * from metodoenvio";
                try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql3);
            rs=ps.executeQuery();
            while(rs.next()){
                out.println("<option value='"+rs.getString(1)+"'>"+rs.getString(2)+"</option>");
            }
        } catch (Exception e) {
        }
            %>
        </select><br>  
        
        
        Dirección de envío: <br>
        <input class="form-control" type="text" name="txtDirEnvio"><br>
        
        
        <!-- Botón envio de datos -->
        <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
        <!-- Regredar a la vista show -->
        <a href="ControladorVenta?accion=listar">Regresar</a>
        </form>
        
        </div>
        </div>
    </body>
</html>
