<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%--<%@ page import="java.io.Writer" %>--%>

<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 20/05/19
  Time: 4:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dictionary = new HashMap<>() ;
%>

<%
    dictionary.put("hello", "Xin chào");
    dictionary.put("goodbye", "Tạm biệt");
    dictionary.put("book", "Quyển sách");

    String input = request.getParameter("input");

    String result = dictionary.get(input);

    if (result != null) {
        out.println("word: " + input);
        out.println("translate: " + result);

    } else {
        out.println("Not found");
    }
%>
</body>
</html>
