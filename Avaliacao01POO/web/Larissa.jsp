<%-- 
    Document   : Larissa.jsp
    Created on : 3 de out. de 2021, 22:58:58
    Author     : Larry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página 1</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <br>
        <% if(nomeusuario!=null){%>
        <h3 style="text-align: center">RA: 1290482012017</h3>
        <h3 style="text-align: center">Nome: Larissa Michelazzo Lisboa</h3>
        <h3 style="text-align: center">Semestre que Ingressei na Fatec: 4ª ciclo</h3>
        <div style="text-align: center"><a href='https://github.com/lari987'>Link para o meu github</a></div>
        <br><br>
        <table border="1" style="width: 580px; height: 300px; margin-left: 28%; background-color:lightpink ">
            <tr>
                <th>Disciplinas Cursadas</th>
            </tr>
              <tr>
                <td>Banco de Dados</td>
              </tr>
               <tr>
                <td>Engenharia de Software III</td>
               </tr>
               <tr>
                <td>Programação Orientada a Objetos</td>
               </tr>
               <tr>
                <td>Linguagem de Programação IV - INTERNET</td>
               </tr>
               <tr>
                <td>Sistemas Operacionais II</td>
               </tr>
               <tr>
                <td>Ingles IV</td>
               </tr>
               <tr>
                <td>Metodologia da Pesquisa Científico-Tecnológica</td>
               </tr>
        </table>
            <%}else{%>
        <h2 style="color : crimson">É necessário fazer Login para acessar o conteúdo!</h2>
        <%}%>
    </body>
</html>
