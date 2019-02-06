<?php
/*
	Developers: Dayla Crabtree, Bilen Dolly
	Content: The main page includes a login and candy customization link for users as well as
					 the sign up page link.
*/

	include ('header.cshtml'); // Includes html for navigation and website title
	include ('login.php');
?>

<br><br><br>
<div>
<h1> Create your own!     Or</h1>

<form class="login">
	<h3>Login</h3>
		<br><br><br><br>
	<label>Username:</label>

	<input type="email" name="email" id="email"
	 required="required" placeholder="Email Address" size="20" maxlength="60"
	 value=""/>
<br><br>
	<label>Password:</label>

	<input type="password" name="password" id="password"
   required="required" placeholder="Password" size="20" maxlength="60"
    value = ""/>

</form>
</div>
<?php
	include ('footer.php');
?>
