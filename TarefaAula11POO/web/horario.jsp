<%-- 
    Document   : horario.jsp
    Created on : 25 de out. de 2021, 16:00:05
    Author     : Larry
--%>

<%@page import="model.Horario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Horario horarioAtual = new Horario(17,51,35);
    Horario horarioIntervalo = new Horario(17,12,8);
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Horário - Java OO</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>HORÁRIO</h2>
        <h3>Horário Atual:</h3>
        <div><%= horarioAtual.getHorario() %></div>
        <h3>Horário do Intervalo:</h3>
        <div><%= horarioIntervalo.getHorario() %></div>
    </body>
</html>
