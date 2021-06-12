<%-- 
    Document   : registro
    Created on : 06-05-2021, 05:52:02 PM
    Author     : Julio Chica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%Class.forName("oracle.jdbc.driver.OracleDriver");%>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="style.css" rel="stylesheet" type="text/css">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REGISTRO</title>
    </head>
    <body> <br>
       
        
        <div class="container">
            <center><h1>¡REGISTRESE!</h1></center>
            <div class="row justify-content-md-center" id="formulario">
                
                <!--Formulario de registro-->
                <form class="row g-3" enctype="multipart/form-data" method="POST" action="proceso.jsp">
                    
                    <!--Nombre-->
                    <div class="col-md-6"> 
                        <label for="txtnombre" class="form-label">Nombres:</label>
                        <input type="Text" class="form-control" id="txtnombre" name="txtnombre">
                    </div>

                    <!--Apellido-->
                    <div class="col-md-6"> 
                        <label for="txtapellido" class="form-label">Apellidos:</label>
                        <input type="Text" class="form-control" id="txtapellido" name="txtapellido">
                    </div>
                    
                    <!--Genero-->
                    <div class="col-md-3"> 
                        <label class="form-label">Genero:</label>
                        <select name="txtgenero" class="form-select">
                            <option>Elegir</option>
                            <option value="M">M</option>
                            <option value="F">F</option>
                        </select>
                    </div>
                    
                    <!--Fecha Nacimiento-->
                    <div class="col-md-3"> 
                        <label for="txtfecha" class="form-label">Fecha Nacimiento:</label>
                        <input type="Text" class="form-control" id="txtfecha" name="txtfecha">
                    </div>
                    
                    <!--DUI-->
                    <div class="col-md-3"> 
                        <label for="txtdui" class="form-label">DUI:</label>
                        <input type="Text" class="form-control" id="txtdui" name="txtdui">
                    </div>
                    
                    <!--Pasaporte-->
                    <div class="col-md-3"> 
                        <label for="txtpasaporte" class="form-label">Pasaporte:</label>
                        <input type="Text" class="form-control" id="txtpasaporte" name="txtpasaporte">
                    </div>
                    
                    <!--nit-->
                    <div class="col-md-3"> 
                        <label for="txtnit" class="form-label">NIT:</label>
                        <input type="Text" class="form-control" id="txtnit" name="txtnit">
                    </div>
                    
                    <!--nup-->
                    <div class="col-md-3"> 
                        <label for="txtnup" class="form-label">NUP:</label>
                        <input type="Text" class="form-control" id="txtnup" name="txtnup">
                    </div>
                    
                    <!--direccion-->
                    <div class="col-md-6"> 
                        <label for="txtdireccion" class="form-label">Dirección:</label>
                        <input type="Text" class="form-control" id="txtdireccion" name="txtdireccion">
                    </div>
                    
                     <!--telefono-->
                    <div class="col-md-3"> 
                        <label for="txttelefono" class="form-label">Telefono:</label>
                        <input type="Text" class="form-control" id="txttelefono" name="txttelefono">
                    </div>
                     
                     <!--Correo-->
                    <div class="col-md-3"> 
                        <label for="txtcorreo" class="form-label">Correo:</label>
                        <input type="Text" class="form-control" id="txtcorreo" name="txtcorreo">
                    </div>
                     
                     <!--Redes Sociales-->
                    <div class="col-md-6"> 
                        <label for="txtrs" class="form-label">Redes sociales:</label>
                        <input type="Text" class="form-control" id="txtrs" name="txtrs">
                    </div>
                     
                     <!--Curriculum Vitae-->
                    <div class="col-md-12"> 
                        <label for="cv" class="form-label">Curriculum Vitae:</label>
                        <input type="file" class="form-control" id="cv" name="cv">
                    </div>
                     
                     <button type="submit" class="btn btn-success">Registrar</button> 
                </form>                
            </div>
        </div>
        
    </body>
</html>

<!--Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>