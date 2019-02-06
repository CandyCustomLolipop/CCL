<?php
/*
	Developers: Dayla Crabtree, Bilen Dolly
	Content: Allows users to log out of their account.
*/

session_start();
session_unset();
session_destroy();

unset($_SESSION["account_connect.php"]);

// If no cookie is present, redirect user.
	if (!isset($_COOKIE['user_id'])) {

		/* Login functions */
		include ("includes/connect.php");
		$con->select_db('../book_comic');

			// Defines two functions used by the login/logout process.
			function redirect_user ($page = '../login.php') {

				/* Defines URL, http:// plus the host name plus the current directory */
					$url = 'http://' . $_SERVER['HTTP_HOST'] . dirname($_SERVER['PHP_SELF']);

			 // Removes trailing slashes.
					$url = rtrim($url, '/\\');

			 // Adds page
					$url .= '/' . $page;

			 // Redirects the user.
					header("Location: $url");
					exit(); // Quits script.

			} // Ends redirect_user() function.

	 } else { // Cancels the session.
			setcookie ('user_id', '', time()-3600, '/', '', 0, 0);
			setcookie ('first_name', '', time()-3600, '/', '', 0, 0);

			$_SESSION = array(); // Clears variables.
			session_destroy(); // Destroys session.
			setcookie ('PHPSESSID', '', time()-3600, '/', '', 0, 0); // Destroys cookie.
	 }
	header('Location: ../');
?>
