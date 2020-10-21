package edu.cn.ahpu.servlet.request.servlet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ContextServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ServletContext context = getServletConfig().getServletContext();
        // 功能一：获取web.xml中配置的上下文参数(cntext-param)
        String username = context.getInitParameter("username");
        String password = context.getInitParameter("password");
        System.out.println("context-param中username的值为：" + username + "、密码为：" + password);

        // 作用二：获取当前工程的工程路径；
        String contextPath = context.getContextPath();
        System.out.println(contextPath);
        //  / 斜杠被服务器解析地址为:http://ip:port/工程名/  映射到IDEA代码的web目录<br/>
        String realPath = context.getRealPath("/");
        System.out.println(realPath);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
