<%-- 
    Document   : tabela-price.jsp
    Created on : 13 de set. de 2021, 15:53:49
    Author     : Larry
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    String errorMessage = null;
    double valor = 0, taxa = 0, parcelas = 0;

    try{
     valor = Double.parseDouble(request.getParameter("valor"));
    }catch(Exception e){
    errorMessage = "erro ao ler parametro mes";
    }
    try{
     taxa = Double.parseDouble(request.getParameter("taxa"));
    }catch(Exception e){
    errorMessage = "erro ao ler parametro ano";
    }
    try{
     parcelas = Double.parseDouble(request.getParameter("parcelas"));
    }catch(Exception e){
    errorMessage = "erro ao ler parametro mes";
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h1 style="text-align: center">Calculo de Amortização:</h1>
        
        <%
            double porcentagem = (taxa / 100);
            double s = valor * porcentagem;
            double p = s *Math.pow(1 + porcentagem, parcelas);
            double r = Math.pow(1 + porcentagem, parcelas) - 1;
            double resultado = p/r;
            DecimalFormat deci = new DecimalFormat("0.00");
            
            double g = resultado - s;
            double amortizacao = g * Math.pow(1 + porcentagem, parcelas - 1);
            //double amortizacao = a1*Math.pow(1 + porcentagem, parcelas - 1);
            %>
            
            <form style="text-align: center">
            <input type="number" name="valor" placeholder="valor em R$"/>
            <input type="number" name="taxa" placeholder="taxa de juros em %"/>
            <input type="number" name="parcelas" placeholder="parcelas mensais"/>
            <input type="submit" value="Mostrar"/>
        </form>
            <br>
            <h2 style="text-align: center">Resultado:</h2>
            <h3 style="text-align: center">R$<%= deci.format(amortizacao) %></h3>
            <br><br><br><br><br>
            <h3><a href="index.jsp">Voltar</a></h3>
            <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
