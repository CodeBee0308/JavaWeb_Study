<%@ page import="java.util.Map" %>
<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2020/10/16
  Time: 20:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" language="java"
         errorPage="/errorPage.jsp" isErrorPage="true" %>
<html>
  <head>
    <title>工程首页</title>
  </head>
  <body>
  <%--声明类结构，包括属性、方法、(静态)代码块、内部类
  <%!
    private String name ;
    private Integer id ;
    private String email ;
    private static Map<String,String> map ;
  %>
  <%!
    public int sum(int a,int b){
        return a + b ;
    }
  %>
  <%!
    static {
        map.put("key3","value3") ;
        map.put("key4","value4") ;
    }
  %>
  <%!
    public static class innerClass2{
        private String name ;
        private int age ;
        private String email ;
    }
  %>
  --%>
  <hr/>
  <%-- 表达式脚本，用于输出整数、浮点数、字符串甚至是对象 --%>
  <%= 3.1415926%><br/>
  <%= "String字符串就是一个对象"%><br/>
  <hr/>

  <%-- 代码脚本：以在 jsp 页面中，编写我们自己需要的功能 --%>
  <%
    for (int i = 0 ;i < 10 ;i++){
      System.out.print(i + "、");
  %>
  本次输出i的值为：<%= i%><br/>
  <%
    }
  %>
  <table border="1">
      <%
          // 循环输出
          for (int j = 0; j < 10; j++) {
      %>
      <tr>
          <td>第<%= j + 1%>行</td>
          <td>第<%= 2 %>列</td>
      </tr>
      <%
          }
      %>

  </table>
  </body>
</html>
