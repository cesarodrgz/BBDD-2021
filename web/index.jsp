<%-- 
    Document   : index
    Created on : 06-05-2021, 05:27:51 PM
    Author     : Julio Chica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>INICIO</title>
    </head>
    <body> <br>
        <form>
                <div class="container">
                    <br>
                    <center><h1>BIENVENIDO</h1></center>

                    <div class="row justify-content-md-center">
                        <div class="col-12 col-md-8">
                            <label for="usuario" class="form-label">Usuario:</label>
                            <input type="email" class="form-control" id="usuario" placeholder="name@example.com">
                        </div>
                    </div>

                    <div class="row justify-content-md-center">
                        <div class="col-12 col-md-8">
                            <label for="contraseña" class="form-label">Contraseña:</label>
                            <input type="email" class="form-control" id="contraseña" placeholder="Contraseña">
                        </div> 
                    </div>
                    <br>

                    <div class="row justify-content-md-center">
                        <div class="col-12 col-md-8">
                            <button type="button" class="btn btn-success">Ingresar</button> <br> <br>
                            <a href="registrar.jsp">¿No estás registrado? Registrate aquí</a> <br>
                            <a href="listar.jsp">LISTA</a> <br>
                        </div>
                    </div>
                    <br>
                </div> 
        </form>
        
    </body>
</html>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>