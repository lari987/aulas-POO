<%-- 
    Document   : Soma
    Created on : 30 de ago. de 2021, 16:57:06
    Author     : Larry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    String errorMessage = null;
    double n1 = 0, n2 = 0, resultado = 0;
    
    try{
     n1 = Double.parseDouble(request.getParameter("n1"));
    }catch(Exception e){
    errorMessage = "erro ao ler parametro n1";
    }
    try{
     n2 = Double.parseDouble(request.getParameter("n2"));
    }catch(Exception e){
    errorMessage = "erro ao ler parametro n2";
    }
    resultado = n1 + n2;
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
        <h3>Soma</h3>
        <h4><%= n1 %> + <%= n2 %> = <%= resultado %></h4>
        
    </body>
</html>
