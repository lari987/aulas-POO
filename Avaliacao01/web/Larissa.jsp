<%-- 
    Document   : Larissa.jsp
    Created on : 27 de set. de 2021, 16:06:48
    Author     : Larry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina 1</title>
       
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <% if(username!=null){%>
        <h2>RA: 1290482012017</h2>
        <h3>Nome: Larissa Michelazzo Lisboa</h3>
        <h3>Semestre que Ingressou na Fatec: 4º ciclo</h3>
        <a href='https://github.com/lari987'>Link para o meu github</a>
        <br><br>
        <table border="1">
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
            <h2 style="color: red">Necessário fazer login para ver o conteudo!</h2>
            <%}%>
    </body>
</html>
