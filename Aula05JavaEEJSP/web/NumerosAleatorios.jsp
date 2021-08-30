<%-- 
    Document   : NumerosAleatorios
    Created on : 30 de ago. de 2021, 17:21:25
    Author     : Larry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    String errorMessage = null;
    double n = 0;
    
    try{
     n = Double.parseDouble(request.getParameter("n"));
    }catch(Exception e){
    errorMessage = "erro ao ler parametro n";
    }
%>
<html>
    <head>
        <title>JavaEE - JSP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>JavaEE</h1>
        <h2>Java Server Pages</h2>
        <h3><a href="index.html">Voltar</a></h3>
        <h3>Números Aleatórios</h3>
        <table border="1">
            <tr>
                <th>indice</th>
                <th>Número</th>
            </tr>
            <%for(int i = 1; i <= n; i++) {%>
            <tr>
                <td><%= i %></td>
                <td><%= ((int)(100*Math.random())) %></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
