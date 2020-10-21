package edu.cn.ahpu.servlet.request.servlet;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class HelloServlet implements Servlet{

    public HelloServlet() {
        System.out.println("构造器方法:servlet程序生命周期的第一步");
    }

    @Override
    public void init(ServletConfig servletConfig) throws ServletException {
        System.out.println("init()方法:servlet程序生命周期的第二步");
        // 作用一：可以获取Servlet程序的别名(Servlet-name)
        System.out.println("HelloServlet程序的别名:" + servletConfig.getServletName());
        // 作用二：获取初始化参数的值(init-param)
        System.out.println("初始化参数username的值" + servletConfig.getInitParameter("username"));
        System.out.println("初始化参数url的值" + servletConfig.getInitParameter("url"));
        // 作用三：获取ServletContext对象
        System.out.println("ServletContext对象为：" + servletConfig.getServletContext());
    }

    @Override
    public ServletConfig getServletConfig() {
        return null;
    }

    @Override
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
        System.out.println("service()方法:servlet程序生命周期的第三步");

        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        // 仅servletRequest的子接口httpservletrequest有getMethod()方法
        String method = httpServletRequest.getMethod();

        if ("GET".equals(method)){
            doGet();
        } else if ("POST".equals(method)){
            doPost();
        }
    }

    /**
     *
     */
    public void doGet(){
        System.out.println("请求的方式是GET");
    }

    /**
     *
     */
    public void doPost(){
        System.out.println("请求的方式是POST");
    }

    @Override
    public String getServletInfo() {
        return null;
    }

    @Override
    public void destroy() {
        System.out.println("destory()方法:servlet程序生命周期的第四步");

    }
}
