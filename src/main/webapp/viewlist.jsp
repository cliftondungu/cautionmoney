<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.List" %>
<%@ page import="models.Application" %>

<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
      <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
      <title>View List </title>
      <style>


.content {
  max-width: 800px;
  margin: auto;
  background: white;
  padding: 10px;
}
</style>
   </head>
   <body>
  	<div class="content">
  	<div class="w3-container w3-center  w3-teal">
  <h1>Caution Money Refund Application</h1>
  
 
	</div>
      <h1>Approved Applicants</h1>
      <form action="exporttoexcel" method="get">
         <table class="w3-table-all w3-card-4">
            <tr>
               <td>ID</td>
            <td>First Name</td>
            <td>Last Name</td>
            <td>Bank Name</td>
            <td>Branch Name</td>
            <td>Account No</td>
            <td>ID No</td>
            <td>Mobile No</td>
            <td>Reg No</td>
            </tr>
            <%
            
            List<Application> apps  = (List<Application>)request.getAttribute("applicationList");
               for(Application app: apps){
               %>
            <tr>
	            <td><%=app.getStuID()%></td>
	            <td><%=app.getFirstName()%></td>
	            <td><%=app.getLastName()%></td>
	             <td><%=app.getBank()%></td>
	            <td><%=app.getBranchName()%></td>
	            <td><%=app.getAccountNo()%></td>
	             <td><%=app.getIdNo()%></td>
	            <td><%=app.getMobileNo()%></td>
	            <td><%=app.getRegNo()%></td>
            </tr>
            <% 
               }
               %>
         </table>
         <br>
         
         <a href="<%=request.getContextPath()%>/exporttoexcel"><button class="w3-btn w3-white w3-border w3-border-green w3-round-large w3-ripple w3-teal">Export To Excel</button></a>
      </form>
      </div>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
   <%@ include file="/includes/footer.jsp" %>