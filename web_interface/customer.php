<?php
    include_once('connection.php');
    $query = "SELECT * FROM customer";
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
      <h1 style="color:white">Members:</h1>  
        <table align = "center">  
            <tr style="font-size:20px; background-color: #0072A0; color: white;">
                    <th style="text-align:center">ID</th>
                    <th style="text-align:center">Name</th>
                    <th style="text-align:center">Address</th>
                    <th style="text-align:center">Email</th>
                    <th style="text-align:center">Zip</th>
                    <th style="text-align:center">Gender</th>
                    <th style="text-align:center">Date of Birth</th>
                    <th style="text-align:center">Delete</th>
                </tr>
                <?php
                    while($rows = mysqli_fetch_array($result)){
                 ?>       
                        <tr style="background-color:#ADD8E6; border: 1px solid azure;">
                            <td><u><?php echo $rows['id']?></u></td>
                            <td><?php echo $rows['full_name']?></td>
                            <td><?php echo $rows['address']?></td>
                            <td><?php echo $rows['email']?></td>
                            <td><?php echo $rows['zip']?></td> 
                            <td><?php echo $rows['gender']?></td> 
                            <td><?php echo $rows['date_of_birth']?></td> 
                            <td><a href="delete.php?del=<?php echo $rows['id']?>">Delete</a></td>
                        </tr>
                 <?php
                    }
                 ?>
          </table><br>
        
</body>
</html>
