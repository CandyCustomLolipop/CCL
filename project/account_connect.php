<?php
/*
	Developers: Dayla Crabtree, Bilen Dolly
	Content: The account loads user information and includes a cart and payment method form.
*/

/* Creates connection */
  include ('connect.php');

  // Select statement takes data from database
    $q = 'SELECT * FROM users';

      include ('header.cshtml');
      include ('logout-button.php');

      $result = $con->query($q);
?>

<h3> My Account </h3>

  <p>Name: <?php echo $_SESSION['first_name']; echo " ";  echo $_SESSION['last_name'];?></p>
  <p>Email: <?php echo $_SESSION['email']; ?></p>
  <p>Phone: <?php echo $_SESSION['phone']; ?></p>
  <p>Address: <?php echo $_SESSION['address']; ?></p>

  <p><a href="">Payment Information</a></p>

  <p><a href="changePassword.php">Reset Password</a></p>

<?php
  include ("cart.php");
?>
