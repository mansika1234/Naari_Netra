
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.ValidateAdminLogin;
import POJO.GetterSetterAdminLogin;

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		String uname = req.getParameter("u1name");
		String upass = req.getParameter("upass");
		
		
		
		GetterSetterAdminLogin u=new GetterSetterAdminLogin();
		u.setSname(uname);
		u.setSpass(upass);
		
		ValidateAdminLogin v=new ValidateAdminLogin();
        int i=v.Check(uname,upass);
        
        	if(i==1)
            {
        		
            	RequestDispatcher rd=req.getRequestDispatcher("AdminProfile.jsp");	
            	rd.include(req, resp);
            }
                
            else
            { 
            	
    			RequestDispatcher rd=req.getRequestDispatcher("AdminLogin2.jsp");
    			rd.include(req, resp);
               
                 
            }
            	
        }
        
	
	}




