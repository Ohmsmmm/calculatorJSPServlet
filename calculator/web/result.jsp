<%-- 
    Document   : result
    Created on : Oct 28, 2020, 3:28:18 PM
    Author     : jirap
--%>
<%@page import="controller.calculator, java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            <%
                String num1 = request.getParameter("num1");
                String num2 = request.getParameter("num2");
                double result = (Double)request.getAttribute("ans");
                String msg;
                if(request.getParameter("plus")!= null) {
                    msg = "The result of " + num1 + " + " + num2 + "is: " + result;
                    out.println(msg);
                }
                if(request.getParameter("minus")!= null) {
                    msg = "The result of " + num1 + " - " + num2 + "is: " + result;
                    out.println(msg);
                }
                if(request.getParameter("multiply")!= null) {
                    msg = "The result of " + num1 + " * " + num2 + "is: " + result;
                    out.println(msg);
                }
                if(request.getParameter("devide")!= null) {
                    Double Num2 = Double.parseDouble(num2);
                    if(Num2 == 0){
                        msg = "Cant't Devide By 0";
                    }else msg = "The result of " + num1 + " / " + num2 + "is: " + result;
                    out.println(msg);
                }
            %>
        </h1>
    </body>
</html>
