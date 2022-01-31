<%@ include file="/includes/header.html" %>

<br>
<br>

<div class="content">
  
<div class="w3-container w3-center w3-teal">
  <h1>Caution Money Refund Application</h1>
 
</div>
<br>
<br>
<div class="w3-card-4">
  <div class="w3-container w3-teal">
    <h2>Register</h2>
  </div>
  <form class="w3-container" action="apply" method="post">
    <p>      
    <label class="w3-text-teal"><b>First Name</b></label>
    <input class="w3-input w3-border w3-sand" name="firstName" type="text" required></p>
    <p>      
    <label class="w3-text-teal"><b>Last Name</b></label>
    <input class="w3-input w3-border w3-sand" name="lastName" type="text" required></p>
    <p>
    <p>      
    <label class="w3-text-teal"><b>Registration No</b></label>
    <input class="w3-input w3-border w3-sand" name="regNo" type="text" required></p>
    <p>      
    <label class="w3-text-teal"><b>Bank Name</b></label>
    <select class="w3-select" name="bank" >
  <option value="" disabled selected>Choose your bank</option>
  <option value="kcb">KCB</option>
  <option value="equity">EQUITY</option>
  <option value="co-op">CO-OPERATIVE</option>
</select>
    </p>
    <p>      
    <label class="w3-text-teal"><b>Branch Name</b></label>
    <input class="w3-input w3-border w3-sand" name="branchName" type="text" required></p>
    <p>      
    <label class="w3-text-teal"><b>Account No</b></label>
    <input class="w3-input w3-border w3-sand" name="accountNo" type="number" required></p>
     <p>      
    <label class="w3-text-teal"><b>ID No</b></label>
    <input class="w3-input w3-border w3-sand" name="idNo" type="number" required></p>
     <p>      
    <label class="w3-text-teal"><b>Mobile No</b></label>
    <input class="w3-input w3-border w3-sand" name="mobileNo" type="number"required></p>
    <p>
    <button class="w3-button w3-block w3-section w3-teal w3-ripple w3-padding">Register</button>
    </p>
  </form>
</div>
</div>
<br>
<br>


<%@ include file="/includes/footer.jsp" %>
    