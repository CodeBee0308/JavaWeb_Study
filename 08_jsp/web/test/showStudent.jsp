<%@ page import="java.util.ArrayList" %>
<%@ page import="edu.cn.ahpu.pojo.Student" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2020/10/17
  Time: 12:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生信息展示页面</title>
</head>
<body>
<%-- 输出一个表格，里面有 10 个学生信息 --%>
<%
    List<Student> stuList = (List<Student>) request.getAttribute("stuList");
%>
<table align="center" width="650px">
    <tr>
        <td>学号</td>
        <td>姓名</td>
        <td>年龄</td>
        <td>电话</td>
    </tr>
    <%
        for(Student stu :stuList){
    %>
    <tr>
        <td><%= stu.getId()%></td>
        <td><%= stu.getName()%></td>
        <td><%= stu.getAge()%></td>
        <td><%= stu.getPhone()%></td>
        <%
            }
        %>
    </tr>
</table>
</body>
</html>
