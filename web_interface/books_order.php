<?php
    include_once('connection.php');
    $query = "SELECT * FROM historical_books_orders";
    $result = mysqli_query($conn, $query);
?>
<!DOCTYPE html>
<html>
<head>
    <title>Staff</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width = device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable = no">
    <style>
        table{
            width:1000px; line-height:55px; margin:auto; margin-top:60px; text-align: center; border: 1px solid black; border-collapse: collapse;
        }
        h1{
            text-align: center; padding-top: 20px; font: helvetica;
        }
        tr: {background-color: #ADD8E6;}
        td{
            border: 1px solid #F8F8FF;
        }
    </style>
</head>
<body style="background-image: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), url(banner2.jpg);">
    
      <?php include 'navbar.php'?>
    
      <h1 style="color:white">Books Order:</h1>  
        <table align = "center">  
            <tr style="font-size:20px; background-color: #0072A0; color: white;">
                    <th style="text-align:center">Customer</th>
                    <th style="text-align:center">Book</th>
                    <th style="text-align:center">Author</th>
                    <th style="text-align:center">Email</th>
                    <th style="text-align:center">Address</th>
                    <th style="text-align:center">Purchase Date</th>
                </tr>
                <?php
                    while($rows = mysqli_fetch_array($result)){
                 ?>       
                        <tr style="background-color:#ADD8E6; border: 1px solid azure;">
                            <td><u><?php echo $rows['Customer']?></u></td>
                            <td><?php echo $rows['Book']?></td>
                            <td><?php echo $rows['Author']?></td>
                            <td><?php echo $rows['Customer_Email']?></td>
                            <td><?php echo $rows['Customer_Address']?></td> 
                            <td><?php echo $rows['Purchase_Date']?></td>
                            
                        </tr>
                 <?php
                    }
                 ?>
          </table><br> 
</body>
</html>
