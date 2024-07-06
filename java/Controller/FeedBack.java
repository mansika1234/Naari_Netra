package Controller
;

import java.io.IOException;


import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.InsertFeedback;

@WebServlet("/ccc")
public class FeedBack extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		String feedback = req.getParameter("feedback");
		InsertFeedback ins = new InsertFeedback();
		ins.Insert(feedback);
		resp.sendRedirect("feedback2.jsp");
		
		
		
		
		
		
	}

}
