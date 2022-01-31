package controllers;

import java.io.IOException;  
import java.io.PrintWriter;  
  
import javax.servlet.ServletException;  
import javax.servlet.annotation.WebServlet;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import daos.ApplicationDao;
import models.Application;  
@WebServlet("/apply")  
public class SaveServlet extends HttpServlet {  
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)   
         throws ServletException, IOException {  
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
        
          
        String firstName=request.getParameter("firstName");  
        String lastName=request.getParameter("lastName");  
        String regNo=request.getParameter("regNo");  
        String bank=request.getParameter("bank"); 
        String branchName=request.getParameter("branchName");  
        String accountNo=request.getParameter("accountNo");  
        String idNo=request.getParameter("idNo");  
        String mobileNo=request.getParameter("mobileNo");  
          
          
        Application app=new Application();  
        app.setFirstName(firstName);  
        app.setLastName(lastName);  
        app.setRegNo(regNo);  
        app.setBank(bank);
        app.setBranchName(branchName); 
        app.setAccountNo(accountNo);  
        app.setIdNo(idNo);  
        app.setMobileNo(mobileNo);  
          
        int status=ApplicationDao.save(app);  
        String message="";
        String url = "";
        if(status>0){  
            message ="Details submitted successfully!"; 
            url ="welcome.jsp";
            HttpSession session = request.getSession(); //Creating a session
            session.setAttribute("firstName", firstName); //setting session attribute
            request.setAttribute("message", message);
            request.setAttribute("firstName", firstName);
            
           
            request.getRequestDispatcher(url).include(request, response);  
        }else{  
            out.println("Sorry! Record already exist!");  
            
        }
        
        
          
        out.close();  
    }  
  
}  