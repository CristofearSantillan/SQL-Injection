<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box;}

body {
  background: url('book.jpg') no-repeat center;
  background-size: cover;
  width: 100%;
  height: 100vh;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #e9e9e9;
}
.topnav a {
  float: left;
  display: block;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}
.topnav a.active {
  background-color: #2196F3;
  color: white;
}

.topright {
  background-color: #ddd;
  color: black;
  position: absolute;
  right: 14px;
  font-size: 17px;
}
.wrapper{
	position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background: rgba(0, 0, 0,0.6);
    max-width: 800px;
    width: 100%;
    padding: 20px;
    display: flex;
    justify-content: space-between;
    border-radius: 20px;
}
.wrapper .input {
    width: 110%;
    padding: 20px 200px;
    border: none;
    border-radius: 20px;
    font-weight: bold;
}
.fas{
	position: absolute;
	top: 50%;
	left: 90%;
	transform: translate(-50%, -50%);
	font-size: 18px;
}
</style>
</head>
<body>
<div class="topnav">
  <a class="active" href="javascript:history.back()">Home</a>
  <a class="topright" href="index.html">Log Out</a>
	
<div class="wrapper">
	<form action="searchingBook.php" autocomplete="off" method="post">
		<input id="form_input_publisher" name="form_input_publisher" required="required" type="text" class="input"
 placeholder="Search by Book Publisher" name="search">
<div class="fas">
<button type="submit">Submit</button>
	
</body>
</html>
