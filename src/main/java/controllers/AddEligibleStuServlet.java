package controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daos.ApplicationDao;
import models.EligibleStu;

/**
	 * 
	
/**
 * Servlet implementation class AddEligibleStuServlet
 */
@WebServlet("/eligible")
public class AddEligibleStuServlet extends HttpServlet {
	
	



	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)   
	         throws ServletException, IOException {  
	        response.setContentType("text/html");  
	        PrintWriter out=response.getWriter();  
	        
	          
	        String regNo=request.getParameter("regNo");  
	        
	          
	          
	        EligibleStu el=new EligibleStu();  
	        el.setRegNo(regNo);  
	       
	          
	        int status=ApplicationDao.save(el);  
	        String message="";
	        String url = "";
	        if(status>0){  
	            message ="Record added successfully!"; 
	            url ="added.jsp";
	            request.setAttribute("message", message);
	         
	            request.getRequestDispatcher(url).include(request, response);  
	        }else{  
	            out.println("Sorry! Record already exist!");  
	            
	        }
	        
	        
	          
	        out.close();  
	    }  
	  
   

}
