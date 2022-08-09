<?php    
$serverName = "localhost";
$serverUsername = "root";
$serverPassword = "";
$dbName = "import_database";   

//Create a connection
$conn = mysqli_connect($serverName, $serverUsername, $serverPassword, $dbName);

//Die if connection was not successful
if(!$conn){
    die("Connection failed:".mysqli_connect_error());
}
