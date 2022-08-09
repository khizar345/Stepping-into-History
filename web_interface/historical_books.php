<?php
    include_once('connection.php');
    $query = "SELECT * FROM historical_books";
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
      <h1 style="color:white">Historical Books:</h1>  
        <table align = "center">  
            <tr style="font-size:20px; background-color: #0072A0; color: white;">
                    
                    <th style="text-align:center">ISBN</th>
                    <th style="text-align:center">Tittle</th>
                    <th style="text-align:center">Author</th>
                    <th style="text-align:center">Publisher</th>
                </tr>
                <?php
                    while($rows = mysqli_fetch_array($result)){
                 ?>       
                        <tr style="background-color:#ADD8E6; border: 1px solid azure;">
                            
                            <td><?php echo $rows['ISBN']?></td>
                            <td><?php echo $rows['tittle']?></td>
                            <td><?php echo $rows['author']?></td>
                            <td><?php echo $rows['publisher']?></td> 
                        </tr>
                 <?php
                    }
                 ?>
          </table><br>
        
</body>
</html>
