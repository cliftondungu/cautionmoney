<%@ include file="/includes/header.html" %>


<% //In case, if Admin session is not set, redirect to Login page
if((request.getSession(false).getAttribute("Admin")== null) )
{
%>
<jsp:forward page="login.jsp"></jsp:forward>
<%} %>

<div class="content">
	<div class="w3-container w3-center  w3-teal">
  <h1>Caution Money Refund Application</h1>
  
 
	</div>
	<br>
  
    <h3>Welcome, <%=request.getAttribute("userName") %></h3>
	    

    
    <br>
    
 	
  
     <a style="padding-right: 70px;" href="<%=request.getContextPath()%>/viewapproved"><button class="w3-center w3-btn w3-white w3-border w3-border-blue w3-round-large">View Approved List</button></a>
 	
 <a style="padding-right: 70px;" href="<%=request.getContextPath()%>/viewall"><button class="w3-center w3-btn w3-white w3-border w3-border-blue w3-round-large">View All Applicants</button></a>
  <a href="<%=request.getContextPath()%>/addstu.jsp"><button class="w3-center w3-btn w3-white w3-border w3-border-blue w3-round-large">Add Eligible Students</button></a>
  <br>
  <br>

    <a href="<%=request.getContextPath()%>/logout"><button  class="w3-btn w3-left w3-white w3-border w3-border-red w3-round-large">Logout</button></a>
    
 
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
   <br>
   <br>
   <br>
   
   </div>
   

<%@ include file="/includes/footer.jsp" %>