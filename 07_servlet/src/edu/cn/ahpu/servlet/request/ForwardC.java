package edu.cn.ahpu.servlet.request;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ForwardC extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("ForwardC的doGet方法执行了");
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/a/b/c/d.html");
        requestDispatcher.forward(request,response);
    }
}
