<?php
/*
	Developers: Dayla Crabtree, Bilen Dolly
	Content: Contains the database access information
*/

  /* Database Connection */
    $con = new mysqli(
      'localhost', 'root', '', '//database');

    // Check connection
      if ($con->connect_error) {
          die("<br/>Connection failed: " . $con->connect_error);
      } else {
        //echo "<br/>Connected successfully<br/>";
      }

   $con->select_db('/*database*/');
?>
