
package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.InsertBlockUser;

@WebServlet("/BlockUser")
public class BlockUser extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		String email = req.getParameter("umail");
		InsertBlockUser bd=new InsertBlockUser();
		bd.InsertUser(email);
		resp.sendRedirect("blockuser2.jsp");
		
		
		
		
        
	
	}
}



