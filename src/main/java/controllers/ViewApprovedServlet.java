package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daos.ApplicationDao;
import models.Application;


@WebServlet("/viewapproved")  
public class ViewApprovedServlet extends HttpServlet { 
	
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)   
               throws ServletException, IOException {  
        response.setContentType("text/html");  
        
          
        List<Application> applicationList=ApplicationDao.getAllEligibleApplications();
        
          
       request.setAttribute("applicationList", applicationList);
       
       RequestDispatcher rd = request.getRequestDispatcher("viewlist.jsp");
		rd.forward(request, response);
      
    }  
}  
