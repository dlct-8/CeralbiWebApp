<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Config.Conexion"%>
<%@page import="Modelo.Venta"%>
<%@page import="ModeloDAO.VentaDAO"%>
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
              VentaDAO dao=new VentaDAO();
              int id=Integer.parseInt((String)request.getAttribute("idVent"));
              Venta objve=(Venta)dao.list(id);
          %>
            <h1>Modificar Venta</h1>
            <form action="ControladorVenta">
                Pedido:<br>
                <input class="form-control" type="text" name="txtIdPed" value="<%=objve.getIdPed()%>"><br>
                Fecha de realizado: <br>
                <input class="form-control" type="date" name="txtFechaReal" value="<%=objve.getFechaReal()%>"><br>
                 Fecha de entrega: <br>
                <input class="form-control" type="date" name="txtFechaEntreg" value="<%=objve.getFechaEntreg()%>"><br>
                 Medio de Pago: <br>
                <input class="form-control" type="text" name="txtIdmed" value="<%= objve.getIdmed()%>"><br>
                 Método de envio: <br>
                <input class="form-control" type="text" name="txtIdmet" value="<%=objve.getIdmet()%>" ><br>
                Dirección de envío: <br>
                <input class="form-control" type="text" name="txtDirEnvio" value="<%=objve.getDirEnvio()%>"><br>
                
                <input type="hidden" name="txtid" value="<%= objve.getIdVent()%>">
                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar"> 
                <a href="ControladorVenta?accion=listar">Regresar</a>
            </form>
          </div>
          
        </div>
    </body>
</html>
