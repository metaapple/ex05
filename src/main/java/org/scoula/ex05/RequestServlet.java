package org.scoula.ex05;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/request")
public class RequestServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //요청받은 처리를 다 했음.(db처리, 암호화처리....)
        //결과를 넣기 위한 jsp파일을 호출하자.

        //jsp에 결과를 보내야함.
        //jsp를 호출할 때 request, response를 같이 보내면서 호출
        //request의 속성으로 설정해서 같이 보냄.
        req.setAttribute("username", "홍길동");
        req.setAttribute("useraddress", "서울");

        RequestDispatcher dispatcher = req.getRequestDispatcher("/req.jsp");
        dispatcher.forward(req, resp);

//        req.getRequestDispatcher("/req.jsp").forward(req, resp);

    }
}
