package Controller;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.InsertSignup;
import DAO.Update;
import DAO.UpdateCookieData;
import POJO.GetterSetterCookieUpdate;


@WebServlet("/eee")
public class UpdateProfileCookie extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String uname = request.getParameter("uname");
		String umail = request.getParameter("umail");
		String unum = request.getParameter("unum");
		
		String g1name = request.getParameter("g1name");
		String g1relation = request.getParameter("g1relation");
		String g1num = request.getParameter("g1num");
		
		GetterSetterCookieUpdate user1 = new GetterSetterCookieUpdate();
		user1.setUname(uname);
		user1.setUmail(umail);
		user1.setUnum(unum);
		
		user1.setG1name(g1name);
		user1.setG1relation(g1relation);
		user1.setG1num(g1num);
		UpdateCookieData ud=new UpdateCookieData();
		ud.save(user1);
		response.sendRedirect("Profile3.jsp");

}
}
