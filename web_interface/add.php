<?php
    session_start()
?>
<!--the actual sign up page with which the user interacts, the header is almost identical to index page-->
<head lang="en">
    <title>New Member</title>
    <link rel="stylesheet" href="style.css">
    <meta charset="utf-8">
    <meta name="viewport" content="width = device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable = no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
</head>

<body>
    
    <section class="header" style="background-image: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), url(banner.jpg);">
            <h1>New Member Form</h1><br>          
            <div class="input-group"> <!--this is where user inputs data, action is taken in the signup script-->
                <form action="assign.php" class="form-control" method="post">
                    <p><input type="text" name="name" placeholder=" Name"></p>
                    <p><input type="text" name="address" placeholder=" Address"></p>
                    <p><input type="text" name="email" placeholder=" Email"></p>
                    <p><input type="int" name="zip" placeholder=" Zip"></p>
                    <p><input type="text" name="gender" placeholder=" Gender"></p>
                    <p><input type="date" name="date_of_birth" placeholder=" Date of birth"></p>
                    <button type="submit" class="input-group-text btn" name="submit">Submit!</button><br>
                    <p><a href="customer.php">*Existing Members</a></p>
                </form>
            </div>
        
            <?php
                // what the user will be shown upon ommiting errors or successfully signing up
                if(isset($_GET["error"])){
                    if ($_GET["error"] == "emptyinput"){
                        echo "<p><em>Please fill in all the fields!</em></p>";
                    }
                    else if ($_GET["error"] == "none"){
                        echo "<p><em>Oh! Member added successfully</em></p>";
                    }
                    else if ($_GET["error"] == "stmtfailed"){
                        echo "<p><em>Oh! Something went wrong. Please try again.</em></p>";
                    }
                }

            ?>
        
        </section> 
    
</body>

