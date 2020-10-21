<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2020/10/20
  Time: 9:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
//    1. 值为 null 时 ；
    pageContext.setAttribute("emptyNull",null);
//    2. 值为空串时 ；
    request.setAttribute("emptyStr","");
//    3. 值为 Object 类型的数组且长度为零时 ；
    session.setAttribute("emptyArr",new Object[]{});
//    4. 值为 List集合且集合中元素个数为零时；
    List<String> list = new ArrayList<String>() ;
    application.setAttribute("emptyList",list);
//    5. 值为 Map集合且集合中元素个数为零时；
    Map<String,Object> map = new HashMap<String,Object>() ;
    session.setAttribute("emptyMap",map);

%>

    ${ empty emptyNull }<br/>
    ${ empty emptyStr }<br/>
    ${ empty emptyArr }<br/>
    ${ empty emptyList }<br/>
    ${ empty emptyMap }

</body>
</html>
