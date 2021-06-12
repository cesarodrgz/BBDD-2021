<%-- 
    Document   : proceso
    Created on : 06-05-2021, 09:34:33 PM
    Author     : Julio Chica
--%>

<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insertar Datos</title>
    </head>
    <body>
        <h3 align="center">Datos Insertados en la Base de Datos de Oracle</h3>
        <%
            String nombres = request.getParameter("txtnombre");
            String apellidos = request.getParameter("txtapellido");
            String genero = request.getParameter("txtgenero");
            String fecha = request.getParameter("txtfecha");
            String dui = request.getParameter("txtdui");
            String pasaporte = request.getParameter("txtpasaporte");
            String nit = request.getParameter("txtnit");
            String nup = request.getParameter("txtnup");
            String direccion = request.getParameter("txtdireccion");
            String telefono = request.getParameter("txttelefono");
            String correo = request.getParameter("txtcorreo");
            String rs = request.getParameter("txtrs");
            String cv = request.getParameter("cv");
            
            FileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);

            //cv es la HttpServletRequest que recibimos del formulario.
            //Los items obtenidos serán cada uno de los campos del formulario,
            //tanto campos normales como ficheros subidos.
                //List items = upload.parseRequest(cv));

            //Se recorren todos los items, que son de tipo FileItem
                for (Object item : items) {
                    FileItem uploaded = (FileItem) item;

                    // Hay que comprobar si es un campo de formulario. Si no lo es, se guarda el fichero
                    // subido donde nos interese
                    if (!uploaded.isFormField()) {
                        // No es campo de formulario, guardamos el fichero en algún sitio
                        File fichero = new File("/tmp", uploaded.getName());
                        uploaded.write(fichero);
                    } else {
                        // es un campo de formulario, podemos obtener clave y valor
                        String key = uploaded.getFieldName();
                        String valor = uploaded.getString();
                    }
}
            
            String user = "system";
            String password = "12345";
            String sql = "INSERT into POSTULANTE(NOMBRES,APELLIDOS,GENERO,F_NAC,DOC_IDENTIDAD,PASAPORTE,NIT,NUP,DIRECCION,TELEFONO,CORREO,RS,CV)values ('" + nombres + "','" + apellidos + "','" + genero + "','" + fecha + "','" + dui + "','" + pasaporte + "','" + nit + "','" + nup + "','" + direccion + "','" + telefono + "','" + correo + "','" + rs + "','" + cv + "')";
            
            Connection conexion = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE",user,password);
            Statement statement = conexion.createStatement();
            ResultSet tabla = statement.executeQuery(sql);
        %> 
        <table border="0" align="center">
            <tbody>
                <tr>
                    <%//Link para llevar directo a la jsp con los datos de la tabla
                    %>
                    <td><a href="listar.jsp">Ver los datos de la Tabla</a></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
