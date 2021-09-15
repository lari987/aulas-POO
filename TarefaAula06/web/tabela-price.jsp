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
    double valor = 0, taxa = 0, meses = 0;

    try{
     valor = Double.parseDouble(request.getParameter("valor"));
    }catch(Exception e){
    errorMessage = "erro ao ler parametro valor";
    }
    try{
     taxa = Double.parseDouble(request.getParameter("taxa"));
    }catch(Exception e){
    errorMessage = "erro ao ler parametro taxa";
    }
    try{
     meses = Double.parseDouble(request.getParameter("meses"));
    }catch(Exception e){
    errorMessage = "erro ao ler parametro meses";
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h1>Calculo de Amortização:</h1>
        <form>
            <input type="number" name="valor" placeholder="valor em R$"/>
            <input type="number" name="taxa" placeholder="taxa de juros em %"/>
            <input type="number" name="meses" placeholder="parcelas mensais"/>
            <input type="submit" value="Mostrar"/>
        </form>
        <br>
        <%
            double porcentagem = (taxa / 100);
            double parcela = (valor*porcentagem) /(1-(1/(Math.pow(1 + porcentagem,meses))));
            
            DecimalFormat deci = new DecimalFormat("0.00");
            
            //double a = resultado - juros;
            //double amortizacao = g * Math.pow(1 + porcentagem, parcelas - 1);
            String vazio = "-";
            %>
            <table border="1">
                <tr>
                    <th>Período</th>
                    <th>Saldo Devedor</th>
                    <th>Parcela</th>
                    <th>Juros</th>
                    <th>Amortização</th>
                </tr>
                <%for(int i = 0; i <= meses; i++){%>
                <tr>
                <%if(i == 0){%>
                 <td><%= i %></td>
                 <td><%= valor %></td>
                 <td><%= vazio %></td>
                 <td><%= vazio %></td>
                 <td><%= vazio %></td>
                 <%}else{%>
                  <%double juros = valor * porcentagem;
                    double a = parcela - juros;
                    double saldo = valor - a;
                    valor = saldo;
                  %>
                 <td><%= i %></td>
                 <td><%= deci.format(saldo) %></td>
                 <td><%= deci.format(parcela) %></td>
                 <td><%= deci.format(juros) %></td>
                 <td><%= deci.format(a) %></td>
                 <%}%>
                 <%}%>
                </tr>
            </table>
            <h3><a href="index.jsp">Voltar</a></h3>
            <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
