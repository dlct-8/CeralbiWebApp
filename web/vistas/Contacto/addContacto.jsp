
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
                <h1>Agregar Contacto</h1> <!--60- Cambiamos la acción-->
                <!--61- Cambiamos el nombre del Controlador-->
                <form action="ControladorContacto">
                  <!--62- Cambiamos los atributos-->  
                    <!--63-Cambiamos en name= el atributo anteponiendo txt-->
                    Nombres: <br>
                    <input class="form-control" type="text" name="txtNombres"><br><!--Igual para todos los campos-->
                    Apellidos: <br>
                    <input class="form-control" type="text" name="txtApellidos"><br>
                    Asunto: <br>
                    <input class="form-control" type="text" name="txtAsunto"><br>
                    Mensaje: <br>
                    <input class="form-control" type="text" name="txtMensaje"><br>                   
                    <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
                    <!--64-Cambiamos el nombre del controlador-->
                    <a href="ControladorContacto?accion=listar">Regresar</a>
                </form>
            </div>

        </div>
    </body>
</html>
