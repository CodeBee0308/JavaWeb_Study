package edu.cn.ahpu.servlet.response;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Response1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Response1 程序执行");
        // 方式一：
        // 设置响应状态码302 ，表示重定向，（已搬迁）
        // resp.setStatus(302);
        // 设置响应头，说明新的地址在哪里
        // resp.setHeader("location","http://localhost:8080/07_servlet/response2");

        // 方式二：【推荐使用】
        resp.sendRedirect("http://localhost:8080/07_servlet/response2");

    }
}
