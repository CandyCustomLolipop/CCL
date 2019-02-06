<?php

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    /* Variables */
      $email = $_POST['email'];
      $password = $_POST['password'];

      try { // If these fields are empty it will ask the user to provide information in these.
           if (empty($email) ||
               empty($password))
           throw new Exception('Enter all fields.');

      /* Takes user data from Candy Custom Lollipop's database */
      include ('includes/connect.php'); // Includes file connection.
           $q = "SELECT * FROM users
                 WHERE email = '$email'";

           $result = $con->query($q);

           if (!$result) // If login fails.
           throw new Exception("Login failed. Please try again.");

              $row = $result->fetch_assoc();
              $id = $row['user_id'];
              $firstName = $row['first_name'];
              $lastName = $row['last_name'];
              $phone = $row['phone'];
              $address = $row['address'];
              $email = $row['email'];
              $hash = $row['password'];

        /* Check password */
           if (password_verify($password, $hash)) {
                 // success! start session and redirect
                 session_destroy();
                    session_start();
                    $_SESSION['user_id'] = $id;
                    $_SESSION['first_name'] = $firstName;
                    $_SESSION['last_name'] = $lastName;
                    $_SESSION['phone'] = $phone;
                    $_SESSION['address'] = $address;
                    $_SESSION['email'] = $email;
                    $_SESSION['password'] = $password;
                    $_SESSION['edit'] = false;

                 header("Location: includes/login_connect.php");
          } else {
              throw new Exception("Login failed. Please try again.");
          }
    } // End of try statement.
    catch (Exception $ex) {
      echo '<div class="error">' . $ex->getMessage() . '</div>';
    }
  } // End of REQUEST_METHOD

?>
