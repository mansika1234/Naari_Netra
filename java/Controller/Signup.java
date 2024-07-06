package Controller;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.InsertSignup;
import POJO.GetterSetterSignUp;
@WebServlet("/aaa")
public class Signup extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String uname = request.getParameter("uname");
		String upass = request.getParameter("upass");
		String umail = request.getParameter("umail");
		String unum = request.getParameter("unum");
		String g1name = request.getParameter("g1name");
		String g1relation = request.getParameter("g1relation");
		String g1num = request.getParameter("g1num");
		GetterSetterSignUp user = new GetterSetterSignUp();
		user.setUname(uname);
		user.setUpass(upass);
		user.setUmail(umail);
		user.setUnum(unum);
		user.setG1name(g1name);
		user.setG1relation(g1relation);
		user.setG1num(g1num);
		
		InsertSignup d=new InsertSignup();
		d.save(user);
		response.sendRedirect("index.jsp");
		
	}
	

}
