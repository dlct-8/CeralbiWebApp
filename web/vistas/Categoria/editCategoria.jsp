<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Config.Conexion"%>
<%@page import="Modelo.Categoria"%>
<%@page import="ModeloDAO.CategoriaDAO"%>
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
              CategoriaDAO dao=new CategoriaDAO();
              int id=Integer.parseInt((String)request.getAttribute("idCat"));
              Categoria c =(Categoria)dao.list(id);
          %>
            <h1>Modificar Categoria</h1>
            <form action="ControladorCategoria">
                Nombre Categoria:<br>
                <input class="form-control" type="text" name="txtNombreCat" value="<%= c.getNombreCat()%>"><br>
                Descripción: <br>
                <input class="form-control" type="text" name="txtDescripcion" value="<%= c.getDescripcion()%>"><br>
                
                <input type="hidden" name="txtid" value="<%= c.getIdCat()%>">
                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar"> 
                <a href="ControladorCategoria?accion=listar">Regresar</a>
            </form>
          </div>
          
        </div>
    </body>
</html>
