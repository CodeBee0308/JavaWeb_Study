<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2020/10/20
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%--
        request.getScheme() 它可以获取请求的协议
        request.getServerName() 获取请求的服务器 ip 或域名
        request.getServerPort() 获取请求的服务器端口号
        getContextPath() 获取当前工程路径
        request.getMethod() 获取请求的方式（GET 或 POST）
        request.getRemoteHost() 获取客户端的 ip 地址
        session.getId() 获取会话的唯一标识
    --%>
    <%
        pageContext.setAttribute("req",request);
    %>
    <%= request.getScheme()%>
    协议：${ req.scheme }<br/>
    服务器 ip：${ pageContext.request.serverName }<br/>
    服务器端口：${ pageContext.request.serverPort }<br/>
    获取工程路径：${ pageContext.request.contextPath }<br/>
    获取请求方法：${ pageContext.request.method }<br/>
    获取客户端 ip 地址：${ pageContext.request.remoteHost }<br/>
    获取会话的 id 编号：${ pageContext.session.id }<br/>
</body>
</html>
