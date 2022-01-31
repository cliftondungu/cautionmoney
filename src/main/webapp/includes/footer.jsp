<%@page import ="java.util.*" %>
<% 
GregorianCalendar currentDate = new GregorianCalendar();
int currentYear = currentDate.get(Calendar.YEAR);

%>



<div class="w3-container w3-padding-small w3-teal content w3-center ">
 <p><small>&copy; Copyright <%= currentYear %></small></p>
  <p>Group 5, Associates</p>
</div>


</body>
</html>