<%-- 
    Document   : listar
    Created on : 06-05-2021, 05:02:25 PM
    Author     : Julio Chica
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>LISTADO</title>
    </head>
    <body>
        <br>
        <center><h1>POSTULANTES</h1></center>
        <sql:setDataSource var="snapshot"
                           driver="oracle.jdbc.OracleDriver"
                           url="jdbc:oracle:thin:@localhost:1521:xe"
                           user="system"
                           password="12345"/>
        
        <!--Ordenamos los resultados de menor a mayor-->
        <sql:query dataSource="${snapshot}" var="result">
            SELECT * FROM POSTULANTE ORDER BY ID ASC
        </sql:query>
        <div class="row justify-content-md-center">
            <div class="col-12 col-md-8">
                <table class="table table-striped table-responsive">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">NOMBRES</th>
                            <th scope="col">APELLIDOS</th>
                            <th scope="col">GENERO</th>
                            <th scope="col">FECHA NAC.</th>
                            <th scope="col">DUI</th>
                            <th scope="col">CORREO</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="row" items="${result.rows}">
                        <tr>
                            <th scope="row"><c:out value="${row.ID}"/></th>
                            <th scope="row"><c:out value="${row.Nombres}"/></th>
                            <th scope="row"><c:out value="${row.Apellidos}"/></th>
                            <th scope="row"><c:out value="${row.Genero}"/></th>
                            <th scope="row"><c:out value="${row.F_nac}"/></th>
                            <th scope="row"><c:out value="${row.Doc_identidad}"/></th>
                            <th scope="row"><c:out value="${row.Correo}"/></th>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>