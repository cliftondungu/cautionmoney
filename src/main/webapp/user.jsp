<%@ include file="/includes/header.html" %>

<% //In case, if User session is not set, redirect to Login page.
if((request.getSession(false).getAttribute("User")== null) )
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
   
    
    <a style="padding-right: 500px;" href="application.jsp"><button class="w3-center w3-btn w3-white w3-border w3-border-red w3-round-large">Apply For Refund</button></a>
 
    <a href="<%=request.getContextPath()%>/logout"><button  class="w3-btn w3-white w3-border w3-border-red w3-round-large">Logout</button></a>
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
   <br>
   <br>
   
   
  

  
   
   
 
 <%@ include file="/includes/footer.jsp" %>