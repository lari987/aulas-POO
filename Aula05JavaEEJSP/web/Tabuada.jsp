<%-- 
    Document   : Tabuada
    Created on : 30 de ago. de 2021, 17:35:31
    Author     : Larry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    String errorMessage = null;
    int num = 0;
    
    try{
     num = Integer.parseInt(request.getParameter("num"));
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
        <h3>Tabuada</h3>
        <table>
            <%for(int i = 1; i <= 10; i++) {%>
            <tr>
                <td><%= num %></td>
                <td>x</td>
                <td><%= i %></td>
                <td>=</td>
                <td><%= (num*i) %></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>