<?php
    include_once('connection.php');
    $query = "SELECT * FROM courses_overview";
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
      <h1 style="color:white">Courses:</h1>  
        <table align = "center">  
            <tr style="font-size:20px; background-color: #0072A0; color: white;">
                    <th style="text-align:center">Student</th>
                    <th style="text-align:center">Email</th>
                    <th style="text-align:center">DoB</th>
                    <th style="text-align:center">Course Tittle</th>
                    <th style="text-align:center">Instructor</th>
                    <th style="text-align:center">Start Date</th>
                    <th style="text-align:center">City</th>
                </tr>
                <?php
                    while($rows = mysqli_fetch_array($result)){
                 ?>       
                        <tr style="background-color:#ADD8E6; border: 1px solid azure;">
                            <td><u><?php echo $rows['Student']?></u></td>
                            <td><?php echo $rows['Student_Email']?></td>
                            <td><?php echo $rows['Student_DoB']?></td>
                            <td><?php echo $rows['Course_Tittle']?></td>
                            <td><?php echo $rows['Instrutor']?></td> 
                            <td><?php echo $rows['Course_Starts']?></td> 
                            <td><?php echo $rows['City']?></td> 
                        </tr>
                 <?php
                    }
                 ?>
          </table><br>
</body>
</html>
