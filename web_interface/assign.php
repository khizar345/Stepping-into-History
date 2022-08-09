<?php
//occur when submit
if(isset($_POST["submit"])){
    //the different inputs submitted via post function
    $name = $_POST["name"];
    $address = $_POST["address"];
    $age = $_POST["email"];
    $zip = $_POST["zip"];
    $gender = $_POST["gender"];
    $date_of_birth = $_POST["date_of_birth"];
    
    require_once 'connection.php';
    require_once 'functions.php';
    //error handlers
    if(emptyInputSignup($name, $address, $age, $zip, $gender, $date_of_birth) !== false){
        header("location: add.php?error=emptyinput");
        exit();
    }
    
    //if everything goes well with no errors a user is created, i.e. placed in the database
    createUser($conn, $name, $address, $age, $zip, $gender, $date_of_birth);
}

else{
    //redirects user to customer page upon success
    header("location: customer.php");
}

