package Controller;

import java.io.IOException;


import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.ValidateLogin;
import POJO.GetterSetterLogin;
import javax.servlet.http.Cookie;
@WebServlet("/bbb")
public class Login extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		String uname = req.getParameter("u1name");
		String umail = req.getParameter("u1mail");
		String upass = req.getParameter("upass");
		String remember2=req.getParameter("remember1");
		String s="selected";
		
		
		GetterSetterLogin u=new GetterSetterLogin();
		u.setSname(uname);
		u.setSmail(umail);
		u.setSpass(upass);
		
		
		ValidateLogin v=new ValidateLogin();
        int i=v.Check(uname,umail,upass);
        
        	if(i==1 && v.flag2!=1)
            {
        		
            	
            	if(remember2!=null && remember2.equals(s))
            	{
            		
            		Cookie ck1=new Cookie("username", uname);
            		ck1.setMaxAge(60*60*24*365);
            		resp.addCookie(ck1);
            		
            		Cookie ck2=new Cookie("password", upass);
            		ck2.setMaxAge(60*60*24*365);
            		resp.addCookie(ck2);
            		
            		Cookie ck3=new Cookie("status", "true");
            		ck3.setMaxAge(60*60*24*365);
            		resp.addCookie(ck3);
            		
            		Cookie ck4=new Cookie("email", umail);
            		ck4.setMaxAge(60*60*24*365);
            		resp.addCookie(ck4);
            		
            	
            	}
       		    
            	RequestDispatcher rd=req.getRequestDispatcher("Profile.jsp");	
            	rd.include(req, resp);
            }
                
            else
            { 
            	if(v.flag2==1)
            	{
            	     
            		RequestDispatcher rd=req.getRequestDispatcher("login3.jsp");
              		rd.include(req, resp);
            		
            	}
            	else
            	{
            		RequestDispatcher rd=req.getRequestDispatcher("login2.jsp");
        			rd.include(req, resp);
            	}
    			
               
                 
            }
            	
        }
        
	
	}




