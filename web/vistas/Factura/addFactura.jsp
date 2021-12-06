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
        <h1>Agregar Factura</h1>
        
        <form action="ControladorFactura" method="get">   
        <!-- Campos del Formulario -->
        Emisión:<br>
        <input class="form-control" type="date" name="txtEmision"><br>
        Vencimiento: <br>
        <input class="form-control" type="date" name="txtVencimiento"><br>   
       
        Cliente: <br>
        <select class="form-control" name="txtIdCli" id="txtIdCli"> <br>
            
            <%   
            Conexion cn=new Conexion();
            Connection con;
            PreparedStatement ps;
            ResultSet rs;
            String sql1="select * from cliente";
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
        
        
        Vendedor: <br>
        <select class="form-control" name="txtIdVen" id="txtIdVen"> <br>
            <option value="999">Vendedores</option>
           
            <%   
            
            String sql2="select * from vendedor";
                try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql2);
            rs=ps.executeQuery();
            while(rs.next()){
                out.println("<option value='"+rs.getInt(1)+"'>"+rs.getString(3)+"</option>");
            }
        } catch (Exception e) {
        }
            %>
        </select><br>  
        
       
        Pedido: <br>
        <select class="form-control" name="txtIdPed" id="txtIdPed"> <br>
            
            <%   
            
            String sql3="select * from pedido";
                try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql3);
            rs=ps.executeQuery();
            while(rs.next()){
                out.println("<option value='"+rs.getInt(1)+"'>"+rs.getInt(3)+"</option>");
            }
        } catch (Exception e) {
        }
            %>
        </select><br>  
        
  
        Impuestos: <br>
        <input class="form-control" type="number" step="0.01" name="txtImpuestos"><br>
        
        <!-- Botón envio de datos -->
        <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
        <!-- Regredar a la vista show -->
        <a href="ControladorFactura?accion=listar">Regresar</a>
        </form>
        
        </div>
        </div>
    </body>
</html>
