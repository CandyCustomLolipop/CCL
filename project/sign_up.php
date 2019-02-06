<?php
/*
	Developers: Dayla Crabtree, Bilen Dolly
	Content: Will allow users to create an account.
*/

	include ('header.cshtml');

  if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    /* Validation */
  		if (isset($_POST['fname'], $_POST['lname']) &&
  			is_string($_POST['fname']) && is_string($_POST['fname']) ) {

  	/* Variables */
  				$firstname = $_POST['fname'];
  				$lastname = $_POST['lname'];
  				$email = $_POST['email'];
  				$confirmEmail = $_POST['confirmEmail'];
  				$password = $_POST['password'];
  				$confirmPassword = $_POST['confirmPassword'];
          $phone = $_POST['phone'];
          $address = $_POST['address'];
          $confirmAddress = $_POST['confirmAddress'];

    /* Exceptions */
      try {
        if (
            empty($firstname) ||
            empty($lastname) ||
            empty($email) ||
            empty($confirmEmail) ||
            empty($password) ||
            empty($confirmEmail) ||
            empty($password) ||
            empty($confirmPassword) ||
            empty($address) ||
            empty($confirmAddress))
            throw new Exception('Make sure to
              enter all required fields.');

            if ($password != $confirmPassword)
              throw new Exception('The passwords do not match');

            if ($email != $confirmEmail)
              throw new Exception('The emails do not match');

              // MySQL file connection.
        				include ('includes/connect.php');
        				$result = $con->query(
        					"SELECT * FROM users
        					WHERE email = '$email'");


              if ($result->num_rows > 0) {
        				throw new Exception('A user has already been created with this email.  Please try another.');
        			}

              // Password encryption
        			$password = $con->real_escape_string(
        				password_hash($password, PASSWORD_BCRYPT));

             // Insert variables into database
           		$q = "INSERT INTO users ()
           		VALUES ('$firstname', '$lastname', '$email', '$confirmEmail', '$password', '$confirmPassword',
                      '$phone', '$address', '$confirmAddress')";

              if ($con->query($q)) {
              	/* Register the user in the database...*/
                	echo "<p>Thank you <b>$firstname $lastname</b>, you may continue to your account page.</p>";
                  echo '<a href="login.php">My New Account</a><br/>';
              }
      }  catch (Exception $ex) {
      echo '<div class="error">' . $ex->getMessage() . '</div>';
    }
  }
}
?>

<form id="sign" action="" method="post" action="" class="sign_up">

  <!-- Form Title -->
    <h3> Sign Up </h3>
    <br><br><br><br>

  <!-- The rest of the form layout is written here. -->

  <label> Name: </label>
  <input type="text" name="fname" id="fname"
   required="required" placeholder="First" size="20" maxlength="40"
   value ="<?php if (isset($_POST['fname'])) echo $_POST['fname']; ?>"/>

  <input type="text" name="lname" id="lname"
   required="required" placeholder="Last" size="20" maxlength="40"
   value ="<?php if (isset($_POST['lname'])) echo $_POST['lname']; ?>"/>

   <br><br>
  <label> Email: </label>

  <input type="email" name="email" id="email"
   required="required" placeholder="Email Address" size="20" maxlength="60"
   value="<?php if (isset($_POST['email'])) echo $_POST['email']; ?>"/>

  <input type="email" name="confirmEmail" id="confirmEmail"
   required="required" placeholder="Re-Enter Email Address"size="20" maxlength="60"
   value = "<?php if (isset($_POST['confirmEmail'])) echo $_POST['confirmEmail']; ?>"/>

   <br><br>
  <label> Password: </label>

  <input type="password" name="password" id="password"
   required="required" placeholder="Password" size="20" maxlength="60"
    value = ""/> <!-- @Request.Form["password"] -->

  <input type="password" name="confirmPassword" id="confirmPassword"
   required="required" placeholder="Re-Enter Password" size="20" maxlength="60"
    value = ""/>

    <br><br>
  <label> Phone: </label>

  <input type="tel" name="phone" id="phone" placeholder="740-123-4567" size="10" maxlength="20"
   value = "<?php if (isset($_POST['phone'])) echo $_POST['phone']; ?>"/>

   <br><br>
  <label> Address: </label>

  <input type="text" name="address" id="address" placeholder="Enter Address" size="20" maxlength="60"
   value = "<?php if (isset($_POST['address'])) echo $_POST['address']; ?>"/>

  <input type="text" name="confirmAddress" id="confirmAddress" placeholder="Re-Enter Address"size="20" maxlength="60"
   value = ""/>

  <button  type="submit" value="Submit">Confirm</button>

  <!-- <input type="button" onclick="myFunction()" value="Reset"> -->
</form>
<?php
	//include ('footer.php');
?>
</body>
</html>
