<%-- 
    Document   : Larissa.jsp
    Created on : 18 de out. de 2021, 16:24:22
    Author     : Larry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Minhas Informações</title>
    </head>
    <body>
         <%@include file="WEB-INF/jspf/header.jspf" %>
         <% if(session.getAttribute("username")==null){%>
         <h2 style="color: palevioletred">Você não tem permissão para ver essa página!</h2>
         <%}else{%>
         <h2>Minhas Informações</h2>
         <h3>RA: 1290482012017</h3>
         <h3>Nome: Larissa Michelazzo Lisboa</h3>
         <h3>Semestre que Ingressou na Fatec: 4º ciclo</h3>
         <div><a href='https://github.com/lari987'>Link para o meu github</a></div>
         <br>
         <table border="1" style="width : 620px; height: 100px; margin-left: 28%; background-color: lightpink">
             <tr>
                 <th>Disciplina:</th>
                 <th>Professor:</th>
             </tr>
             <tr>
                 <td style="color: white">Banco de Dados</td>
                 <td style="color: white">Simone Maria Viana Romano</td>
             </tr>
             <tr>
                 <td style="color: white">Engenharia de Software III</td>
                 <td style="color: white">Renata Neves Ferreira</td>
             </tr>
             <tr>
                 <td style="color: white">Programação Orientada a Objeto</td>
                 <td style="color: white">Ricardo Pupo Larguesa</td>
             </tr>
             <tr>
                 <td style="color: white">Linguagem de Programação IV - Internet</td>
                 <td style="color: white">Jonatas Cerqueira Dias</td>
             </tr>
             <tr>
                 <td style="color: white">Sistemas Operacionais II</td>
                 <td style="color: white">Fábio Pessoa de Sá</td>
             </tr>
             <tr>
                 <td style="color: white">Inglês IV</td>
                 <td style="color: white">Graziela Pigatto Bohn</td>
             </tr>
              <tr>
                 <td style="color: white">Metodologia da Pesquisa Cientifíca-Tecnológica</td>
                 <td style="color: white">Sabrina Martins Boto</td>
             </tr>
         </table>
         <%}%>
    </body>
</html>
