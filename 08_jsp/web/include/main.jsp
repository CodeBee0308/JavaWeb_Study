<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2020/10/17
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页面</title>
</head>
<body>
<h1>头部信息</h1>
<h1>主体内容</h1>

<%--
    include file=""%> 就是静态包含
        file 属性指定你要包含的jsp页面的路径
        地址中第一个斜杠 / 表示为http://ip:port/工程路径/  映射到代码的web目录

     静态包含的特点：
        1、静态包含不会翻译被包含的jsp页面。
        2、静态包含其实就是把被包含的jsp页面代码拷贝到包含的位置然后执行输出。
    <%@ include file="/include/footer.jsp"%>
--%>

<%--
    <jsp:include page=""></jsp:include>     这是动态包含
    page 属性是指定你要包含的jsp页面的路径
    动态包含也可以像静态包含一样。把被包含的内容执行输出到包含位置

    动态包含的特点：
        1、动态包含会把包含的jsp页面也翻译成为java代码
        2、动态包含底层代码使用如下代码去调用被包含的jsp页面执行输出。
            JspRuntimeLibrary.include(request, response, "/include/footer.jsp", out, false);
        3、动态包含，还可以传递参数
    --%>
<jsp:include page="/include/footer.jsp">
    <jsp:param name="username" value="root"></jsp:param>
    <jsp:param name="password" value="password"></jsp:param>
</jsp:include>
</body>
</html>
