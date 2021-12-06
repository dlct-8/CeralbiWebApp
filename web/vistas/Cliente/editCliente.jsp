<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Config.Conexion"%>
<%@page import="Modelo.Cliente"%>
<%@page import="ModeloDAO.ClienteDAO"%>
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
              <%
              ClienteDAO dao=new ClienteDAO();
              int id=Integer.parseInt((String)request.getAttribute("llave"));
              Cliente cl=(Cliente)dao.list(id);
          %>
            <h1>Modificar Cliente</h1>
            <form action="ControladorCliente">
               
                 Nombres: <br>
                <input class="form-control" type="text" name="txtNombres" value="<%= cl.getNombres()%>"><br>
                 Apellidos: <br>
                <input class="form-control" type="text" name="txtApellidos" value="<%= cl.getApellidos()%>"><br>
                 Tipo Documento: <br>
                <input class="form-control" type="text"  name="txtIdTipo" value="<%= cl.getIdTipo()%>"><br>
                 Número de documento: <br>
                <input class="form-control" type="text"  name="txtNumerodoc" value="<%= cl.getNumerodoc()%>"><br>
                Telefono: <br>
                <input class="form-control" type="text"  name="txtTelefono" value="<%= cl.getTelefono()%>"><br>
                Correo: <br>
                <input class="form-control" type="email"  name="txtCorreo" value="<%= cl.getCorreo()%>"><br>
                 Dirección: <br>
                <input class="form-control" type="text"  name="txtDireccion" value="<%= cl.getDireccion()%>"><br>
                
               
                <input type="hidden" name="txtid" value="<%= cl.getIdCli()%>">
                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar"> 
                <a href="ControladorCliente?accion=listar">Regresar</a>
            </form>
          </div>
          
        </div>
    </body>
</html>
