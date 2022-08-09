<?php

function emptyInputSignup($name, $address, $age, $zip, $gender, $date_of_birth){
    $result;
    if(empty($name) || empty($address) || empty($age) || empty($zip) || empty($gender) || empty($date_of_birth)){
        $result = true;
    }
    else{
        $result = false;
    }
    return $result;
    }

function createUser($conn, $name, $address, $age, $zip, $gender, $date_of_birth){
    $sql = "INSERT INTO customer (full_name, address, email, zip, gender, date_of_birth) VALUES(?, ?, ?, ?, ?, ?);";
    $stmt = mysqli_stmt_init($conn);
    if(!mysqli_stmt_prepare($stmt, $sql)){
        header("location: customer.php?error=stmtfailed");
        exit();
    }
    
    mysqli_stmt_bind_param($stmt, "ssssss", $name, $address, $age, $zip, $gender, $date_of_birth);
    mysqli_stmt_execute($stmt);
    mysqli_stmt_close($stmt);
    header("location: customer.php?new_member_added_successfully");
    exit();
}

