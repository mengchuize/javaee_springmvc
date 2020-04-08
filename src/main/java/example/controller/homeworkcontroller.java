package example.controller;

import example.daos.HomeworkD;
import example.daos.TeacherD;
import example.model.Homework;
import example.model.Teacher;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;

@Controller
@RequestMapping("/homework")
public class homeworkcontroller {

    @RequestMapping(value = "/hw", method = RequestMethod.POST)
    public void homework(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String hname = request.getParameter("hname");
        java.sql.Date btime = new java.sql.Date(System.currentTimeMillis());
        System.out.println("request.getParameter(hname):"+request.getParameter("hname"));
        System.out.println("request.getParameter(edate):"+request.getParameter("edate"));
        System.out.println("request.getSession().getAttribute(tname):"+request.getSession().getAttribute("tname"));
        java.sql.Date edate=strToDate(request.getParameter("edate"));

        HomeworkD td=new HomeworkD();
        Homework t=new Homework(hname,btime,edate,request.getSession().getAttribute("tname").toString(),0);
        td.add(t);
        request.getRequestDispatcher( "/statics/submitsuccess.jsp").forward(request,response);
    }
    public static java.sql.Date strToDate(String strDate) {
        String str = strDate;
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date d = null;
        try {
            d = format.parse(str);
        } catch (Exception e) {
            e.printStackTrace();
        }
        java.sql.Date date = new java.sql.Date(d.getTime());
        return date;
    }
}