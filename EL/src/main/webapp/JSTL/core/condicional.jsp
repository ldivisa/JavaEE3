<%-- 
    Document   : newjspindex
    Created on : 6 de jan. de 2025, 18:25:12
    Author     : ZeDaManga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Expression Language:</h1>
        O numero 1 é : ${param.num1}<br><!-- comment -->
        O numero 2 é : ${param.num2}<br>
        O maior deles é o : ${(Integer.parseInt(param.num1)) > (Integer.parseInt(param.num2)) ? param.num1 : param.num2}
        
        
        <h1>Java:</h1>
        <% 
            Integer num1=Integer.parseInt(request.getParameter("num1"));
            Integer num2=Integer.parseInt(request.getParameter("num2"));
         %>   
            O numero 1 é : <%=num1%><br>
            O numero 2 é : <%=num2%><br>
            O maior número é :
            <% if (num1>num2)
                out.print(num1);
                else if (num1<num2)
                    out.print(num2);
                    else
                        out.print("Nenhum - são iguais");
            %>
        
      
    </body>
</html>
