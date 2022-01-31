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
  
    <%
		String message = (String) request.getAttribute("message");
		%>
		
		<div class="w3-panel w3-pale-green w3-border w3-display-container">
		<span onclick="this.parentElement.style.display='none'"
  		class="w3-button w3-large w3-display-topright">&times;</span>
  		<h3><%=message %></h3>	
  		
		</div>
	    

    
    <br>
    
 	
  
     <a style="padding-right: 10px;" href="<%=request.getContextPath()%>/viewapproved"><button class="w3-center w3-btn w3-white w3-border w3-border-blue w3-round-large">View Approved List</button></a>
 	
 <a style="padding-right: 10px;" href="<%=request.getContextPath()%>/viewall"><button class="w3-center w3-btn w3-white w3-border w3-border-blue w3-round-large">View All Applicants</button></a>
  <a style="padding-right: 150px;" href="<%=request.getContextPath()%>/addstu.jsp"><button class="w3-center w3-btn w3-white w3-border w3-border-blue w3-round-large">Add Eligible Students</button></a>
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