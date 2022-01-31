<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.List" %>
<%@ page import="models.Application" %>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
      <title>Report</title>
   </head>
   <body>
      <h1>Eligible Applicants</h1>
      <table cellpadding="1"  cellspacing="1" border="1" bordercolor="gray">
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
                  if (apps != null) {
                      response.setContentType("application/vnd.ms-excel");
                      response.setHeader("Content-Disposition", "inline; filename="+ "applicantsdetails.xls");
                  }
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
   </body>
</html>