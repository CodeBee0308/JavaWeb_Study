package edu.cn.ahpu.servlet.request;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;

public class RequestAPIServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        // getRequestURI()					获取请求的资源路径
        System.out.println("工程的相对路径为：" + request.getRequestURI());
        // getRequestURL()					获取请求的统一资源定位符（绝对路径）
        System.out.println("工程的绝对路径为：" + request.getRequestURL());
        // getRemoteHost()				获取客户端的ip地址
        /**
         * 在IDEA中，使用localhost访问时，得到的客户端 ip 地址是 ===>>> 127.0.0.1<br/>
         * 在IDEA中，使用127.0.0.1访问时，得到的客户端 ip 地址是 ===>>> 127.0.0.1<br/>
         * 在IDEA中，使用 真实ip 访问时，得到的客户端 ip 地址是 ===>>> 真实的客户端 ip 地址<br/>
         */
        System.out.println(request.getRemoteHost());
        // getHeader()						获取请求头
        System.out.println(request.getHeader("User-Agent"));
        // getMethod()					获取请求的方式GET或POST
        System.out.println(request.getMethod());


        // getParameter()、getParameterValues()    获取请求参数
        System.out.println("用户名：" + request.getParameter("username"));
        System.out.println("密码：" + request.getParameter("password"));

        String[] hobbies = request.getParameterValues("hobby");
        System.out.println("兴趣爱好：" + Arrays.asList(hobbies));

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 设置请求体的字符集为UTF-8，从而解决post请求的中文乱码问题
        // 也要在获取请求参数之前调用才有效
        req.setCharacterEncoding("UTF-8");

        // getParameter()、getParameterValues()    获取请求参数
        System.out.println("用户名：" + req.getParameter("username"));
        System.out.println("密码：" + req.getParameter("password"));

        String[] hobbies = req.getParameterValues("hobby");
        System.out.println("兴趣爱好：" + Arrays.asList(hobbies));
    }
}
