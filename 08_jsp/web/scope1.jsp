<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2020/10/17
  Time: 10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Scope1页面</title>
</head>
<body>
<h1>Scope1页面</h1>
<%
    // pageContext内置对象
    pageContext.setAttribute("key","pageContext");
    // request内置对象
    request.setAttribute("key","request");
    // session内置对象
    session.setAttribute("key","session");
    // application内置对象
    application.setAttribute("key","application");
%>
pageContext内置对象：<%=pageContext.getAttribute("key")%><br/>
request内置对象：<%=request.getAttribute("key")%><br/>
session内置对象：<%=session.getAttribute("key")%><br/>
application内置对象：<%=application.getAttribute("key")%><br/>

<%-- 请求转发只是一次请求但是却不再是一个jsp页面了
    <%
        request.getRequestDispatcher("/scope2.jsp").forward(request,response);
    %>
--%>
<%--
    <jsp:forward page=""></jsp:forward> 是请求转发标签，它的功能就是请求转发
        page 属性设置请求转发的路径
 --%>
<jsp:forward page="/scope2.jsp"></jsp:forward>
</body>
</html>
