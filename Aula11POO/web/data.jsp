<%-- 
    Document   : data.jsp
    Created on : 25 de out. de 2021, 08:46:00
    Author     : Larry
--%>

<%@page import="model.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Data padrao = new Data();
    
    Data hoje = new Data();
    hoje.dia = 25;
    hoje.mes = 10;
    hoje.ano = 2021;
    
    Data ricardoNiver = new Data(1,7,1979); // obj instanceado com o construtor
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Data - Java OO</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>CLASSE DATA</h2>
        <h3>Data padrão da classe:</h3>
        <div> <%= padrao.dia %>/<%= padrao.mes %>/<%= padrao.ano %> </div>
        <h3>Data de hoje:</h3>
        <div> <%= hoje.dia %>/<%= hoje.mes %>/<%= hoje.ano %> </div>
        <h3>Data de nascimento do Professor:</h3>
        <div> <%= ricardoNiver.getData() %> </div>
    </body>
</html>
