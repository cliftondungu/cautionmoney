<%@ include file="/includes/header.html" %>

<div class="content">
  
<div class="w3-container w3-center w3-teal">
  <h1>Caution Money Refund Application</h1>
 
</div>
<br>
<br>

  <div class="w3-card-4">
  <div class="w3-container w3-teal">
    <h2>Add Student</h2>
  </div>
  <form class="w3-container" action="eligible" method="post">
    <p>      
    <label class="w3-text-teal"><b>Reg No</b></label>
    <input class="w3-input" name="regNo" type="text" required></p>
    
    
    <div style="color:red"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></div>
    <p>
    <button class="w3-button w3-block w3-section w3-teal w3-ripple w3-padding">Add</button>
    </p>
  </form>
</div>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<%@ include file="/includes/footer.jsp" %>
    