<?php
    
    require_once("connection.php");
        
    if(isset($_GET['del'])){
        
        $rows['id'] = $_GET['del'];
        $query = "DELETE FROM customer WHERE id = '".$rows['id']."'";
        $result = mysqli_query($conn, $query);
        
        if($result){
            header("location:customer.php");
        }
        else{
            echo "Deletion falied!";
        }
    }
    else{
        header("location:customer.php");
    }
?>