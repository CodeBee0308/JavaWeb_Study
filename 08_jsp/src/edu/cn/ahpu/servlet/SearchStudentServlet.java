package edu.cn.ahpu.servlet;

import edu.cn.ahpu.pojo.Student;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class SearchStudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 获取请求的参数
        // 发sql语句查询学生的信息
        // 使用for循环生成查询到的数据做模拟
        List<Student> stuList = new ArrayList<Student>();
        for (int i = 0 ;i < 10 ;i++){
            int j = i + 1 ;
            stuList.add(new Student(j ,"name" + j,18 + j,"0560-" + j)) ;
        }

        req.setAttribute("stuList",stuList);
        req.getRequestDispatcher("/test/showStudent.jsp").forward(req,resp);
    }
}
