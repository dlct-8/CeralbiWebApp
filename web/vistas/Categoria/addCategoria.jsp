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
                <h1>Agregar Categoria</h1>
                <form action="ControladorCategoria">
                    Nombre categoria:<br>
                    <input class="form-control" type="text" name="txtNombreCat"><br>
                    Descripción: <br>
                    <input class="form-control" type="text" name="txtDescripcion"><br>
                    
                    <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
                    <a href="ControladorCategoria?accion=listar">Regresar</a>
                </form>
            </div>

        </div>
    </body>
</html>
