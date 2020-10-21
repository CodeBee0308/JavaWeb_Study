package edu.cn.ahpu.servlet.request;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Servlet2 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 获取请求的参数（办事的材料）查看
        String username = req.getParameter("username");
        // 查看 柜台1 是否有盖章
        Object key = req.getAttribute("Servlet1_key");
        System.out.println("Servlet1是否传过来Key:" + key);

        // 处理自己的业务
        System.out.println("Sevlet2处理自己的逻辑业务");
    }
}
