<?php
$db_host = 'localhost';
$db_username = 'root';
$db_password = '';
$db_database = 'LibraryDB';

$connect = @mysqli_connect($db_host, $db_username, $db_password, $db_database) or die('Connection error');

// $query = "SELECT * FROM Book WHERE BookTitle = '". $_POST['form_input_booktitle'] . "' or ISBN = '". $_POST['form_input_booktitle'] . "'";

//$query = "SELECT * FROM Book WHERE Publisher = '". $_POST['form_input_publisher'] . "'";

//@mysqli_multi_query($connect, $query) or die('Error running query: ' . mysqli_errno($connect));
//$result =mysqli_use_result($connect);

$stmt = mysqli_prepare($connect, "SELECT * FROM Book WHERE Publisher = ?");
mysqli_stmt_bind_param($stmt, "ss", $_POST['form_input_publisher']);
mysqli_stmt_execute($stmt);
$result = mysqli_stmt_get_result($stmt);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SQL Injection Prototype</title>
	<style>
		table{
			maring: 0 auto;
			font-size: large;
			border: 1px solid black;
		}
		
		h1{
			text-align: center;
			color: #006600;
			font-size: xx-large;
			font-family: 'Gill sans', 'Gill Sans MT', ' Calibri', 'Trebuchet MS', 'sans-serif';
		}
		
		td{
			background-color: #E4F5D4;
			border: 1px solid black;
		}
		
		th,
		td{
			font-weight: bold;
			border: 1px solid black;
			padding: 10px;
			text-align: center;
		}
		
		td{
			font-weight: lighter;
		}
	</style>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">	
</head>

<body>
    <div style="display:none;"><?php print_r($_POST); ?></div>
<h1>Query</h1>
<!-- <?php $query_display = "SELECT * FROM Book WHERE BookTitle = '". $_POST['form_input_booktitle'] . "' or ISBN = '". $_POST['form_input_booktitle'] . "'";?> -->
<?php $query_display = "SELECT * FROM Book WHERE Publisher = '". $_POST['form_input_booktitle'] . "'";?>
<div><pre style="color:#00f;"><?php echo $query_display; ?></pre></div>

<h1>Result</h1>
<table border="1">
	<tr>
		<th>ISBN</th>
		<th>BookTitle</th>
		<th>Author</th>
		<th>Publisher</th>
		<th>Borrowed_Date</th>
		<th>Returned_Date</th>
	</tr> 
	<?php     
		   while($row = mysqli_fetch_array($result)){      
			echo "<tr><td>".$row[0];
			echo "</td><td>".$row[1];
			echo "</td><td>".$row[2];
			echo "</td><td>".$row[3];
			echo "</td><td>".$row[4];
			echo "</td><td>".$row[5]."</td><tr>";
		}                
		echo "</table>"      
                ?>
<p><a href="index.html">Back to the Login Screen</a></p>
<p><a href="search.php">Search For More Books</a></p>
</body>
</html>
