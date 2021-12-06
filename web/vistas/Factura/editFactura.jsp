<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Config.Conexion"%>
<%@page import="Modelo.Factura"%>
<%@page import="ModeloDAO.FacturaDAO"%>
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
              FacturaDAO dao=new FacturaDAO();
              int id=Integer.parseInt((String)request.getAttribute("idfac"));
              Factura f =(Factura)dao.list(id);
          %>
            <h1>Modificar factura</h1>
            <form action="ControladorFactura">
                Emisión:<br>
                <input class="form-control" type="date" name="txtEmision" value="<%=f.getEmision()%>"><br>
                Vencimiento: <br>
                <input class="form-control" type="date" name="txtVencimiento" value="<%=f.getVencimiento()%>"><br>
                 Cliente: <br>
                <input class="form-control" type="text" name="txtIdCli" value="<%=f.getIdCli()%>"><br>
                Vendedor: <br>
                <input class="form-control" type="text"  name="txtIdVen" value="<%= f.getIdVen()%>"><br>
                Pedido: <br>
                <input class="form-control" type="text" name="txtIdPed" value="<%=f.getIdPed()%>" ><br>
                Impuestos: <br>
                <input class="form-control" type="number" step="0.01" name="txtImpuestos" value="<%=f.getImpuestos()%>"><br>
                
                <input type="hidden" name="txtid" value="<%= f.getIdfac()%>">
                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar"> 
                <a href="ControladorFactura?accion=listar">Regresar</a>
            </form>
          </div>
          
        </div>
    </body>
</html>
