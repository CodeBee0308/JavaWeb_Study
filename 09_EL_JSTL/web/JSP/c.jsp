<%@ page import="edu.cn.ahpu.pojo.Person" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2020/10/19
  Time: 19:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <%
        Person person = new Person();
        person.setName("测试员");
        person.setPhones(new String[]{"00000000000","11111111111","22222222222"});

        List<String> cities = new ArrayList<>();
        cities.add("北京") ;
        cities.add("上海") ;
        cities.add("深圳") ;
        cities.add("广州") ;
        person.setCities(cities);


        Map<String, Object> map = new HashMap<>();
        map.put("key1","value1") ;
        map.put("key2","value 2") ;
        map.put("key3","value3") ;
        map.put("key4","value4") ;
        person.setMap(map);

        pageContext.setAttribute("Person",person);
    %>
    Person对象的所有信息为：${ Person }<br/>
    Person对象的电话信息(字符串数组)：${ Person.phones }<br/>
    Person对象的单个电话信息(字符串数组中的元素)：${ Person.phones[0] }<br/>
    Person对象的城市信息(List集合)：${ Person.cities }<br/>
    Person对象的单个城市信息(List集合中的元素)：${ Person.cities[0] }<br/>
    Person对象的单个城市信息(List集合中的元素)：${ Person.cities[1] }<br/>
    Person对象的Map信息(Map集合)：${ Person.map }<br/>
    <hr/>
    【特殊】Person对象的Map信息(Map集合中的元素)：${ Person.map.key2 }


</body>
</html>
