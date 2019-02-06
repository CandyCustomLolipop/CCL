<!DOCTYPE html>
<html>
	<head>
    <meta charset="utf-8">
    <meta name="" content="">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="Dayla Crabtree, Bilen Dolly">
    <title>Candy Custom</title>
		<link rel="stylesheet" href="../lib/w3.css"> <!-- external link from w3schools -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tangerine">
		<link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="style.css">
		<style>
		.w3-tangerine {
			font-family: "Tangerine", serif;
	    font-size: 50px;
			font-weight: bolder;
	    color: rgb(153, 0, 0);
	    text-align: center;
	    left: 100px;
			}
		</style>

		<script>
			function Total(qty,ud,total,value) {
 				qty=document.getElementById(qty);
 				ud>0?qty.value++:qty.value--;
 				qty.value=Math.max(qty.value,0);
 				document.getElementById(total).value=qty.value*value;
			}

			$(".basic").spectrum({
    color: "#f00",
    change: function(color) {
        $("#basic-log").text("change called: " + color.toHexString());
    }
});


		</script>
  </head>
<body>

	<svg width="100" height="100">
  <circle cx="50" cy="50" r="40" stroke="green" stroke-width="4" fill="yellow" />
</svg>

    <div id="page-wrap"> <!-- Aligns page -->

  	<div class="w3-container w3-tangerine">
    <p class="w3-jumbo">
  		<img src="images/logo.png" alt="logo" class="" height="100" width="100"></img>
  		Candy Custom Lolipop's
  	</p> <!-- Header -->
  </div>

  		<!-- Navigation -->
  		<ul id="nav">
  			<div>
    			<li><a class="navButton navHover" href="index.html">Home</a>
  				</li>
  			</div>

  			<div class="dropdown"> <!-- Edit Home button colors when this class is removed. -->
    			<li><a class="navButton navHover" href="login.html">Login</a>
  				</li>
  			</div>

  			<div class="dropdown"> <!-- Edit Home button colors when this class is removed. -->
    			<li><a class="navButton navHover" href="sign_up.html">Sign up</a>
  				</li>
  			</div>

  			<div class="dropdown"> <!-- Edit Home button colors when this class is removed. -->
    			<li><a class="navButton navHover" href="about.html">About</a>
  				</li>
  			</div>

  			<div class="dropdown"> <!-- Edit Home button colors when this class is removed. -->
    			<li><a class="navButton navHover" href="store.html">Store</a>
  				</li>
  			</div>
  		</ul>

  		<br><br><br>

			<div class="login">

				<input type="color" value="#0000ff" class="candy">
				<img type="color" src="images/lolipop.gif" height="50px" width="50px" class="candy"></img>
				<br>

				<select name="">
	   			<option class="" value="" style=""><img src"images/clip art/AtoZ.png"></img></option>

				<label>Quantity:</label>
					<input type='text' name='qty' id='qty' readonly=true value="0"/>
					<input type='button' name='subtract' onclick='Total("qty",-1,"total",10.50);' value='-'/>
					<input type='button' name='add' onclick='Total("qty",1,"total",10.50);' value='+'/>

	  		<label>	Price: </label>
					<input type='text' name='total' id='total' value="0" />
			</div>

			<br><br>

  <h3> Create your own! </h3>

  <div class="sample">
    <img src="images/logo.png" alt="logo" class="" height="100" width="190"></img>

    <td style="text-align:right">@row.Price</td>
    <tr>
      <td>@row.Id</td>
      <td>@row.Name</td>
      <td>@row.Description</td>
      <td style="text-align:right">@row.Price</td>
    </tr>
  </div>
  <div class="products">

<!---
  @{
    var db = Database.Open("");
    var query = "SELECT * FROM Store";
  }

  @foreach(var row in db.Query(query)) {
    /* This will change to not be in a table */
    <tr>
      <td>@row.Id</td>
      <td>@row.Name</td>
      <td>@row.Description</td>
      <td style="text-align:right">@row.Price</td>
    </tr>
  }
  -->
  </div>

</div>

</body>
</html>
