package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.InsertSosDetail;

import java.text.SimpleDateFormat;  
import java.util.Date; 
@WebServlet("/Sos")
public class Sos extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
	    Date date = new Date();
	    InsertSosDetail insos = new InsertSosDetail();
	    insos.InsertSos(formatter.format(date));
	    resp.sendRedirect("Profile.jsp");
	    
	}


}

 