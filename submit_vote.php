<!-- ?php
	include("database/dbcon.php");
	session_start();
	$postes = $conn->query("SELECT `id` , `class_name` FROM `postes`") or die(mysqli_errno());
	$posteID; //Don't delete
	if(!isset($_SESSION['voters_id'])){
		header("location:index.php");
	}
	while ($poste = $postes->fetch_array()){
		$posteClassName = $poste['class_name'];
		
		if( isset( $_SESSION[ $posteClassName . "_id"] ) && $_SESSION[ $posteClassName. "_id"] !=""){
			
			$posteID = $_SESSION[ $posteClassName. "_id"];
			$conn->query("INSERT INTO `votes` (`candidate_id` , `voters_id` , `poste_class_name`) VALUES( '$posteID', '$_SESSION[voters_id]','$poste[class_name]')") ;//or die(mysql_error());
		}else{
			$conn->query("INSERT INTO `votes` (`candidate_id` , `voters_id` , `poste_class_name`) VALUES( 0, '$_SESSION[voters_id]','$poste[class_name]')") ; //or die(mysql_error());
		}
	}
	$conn->query("UPDATE `voters` SET `status` = 'Voted' WHERE `voters_id` = '$_SESSION[voters_id]'") or die(mysql_error());
	session_destroy();
	header("location:index.php");	
?>  -->
<!-- !!!!!!!!!!!!!good -->
<!-- ?php
    include("database/dbcon.php");
    session_start();
    $postes = $conn->query("SELECT `id` , `class_name` FROM `postes`") or die(mysqli_errno());
    $posteID; //Don't delete
    if(!isset($_SESSION['voters_id'])){
        header("location:index.php");
    }
    while ($poste = $postes->fetch_array()){
        $posteClassName = $poste['class_name'];
        
        if( isset( $_SESSION[ $posteClassName . "_id"] ) && $_SESSION[ $posteClassName. "_id"] !=""){
            
            $posteID = $_SESSION[ $posteClassName. "_id"];
            $conn->query("INSERT INTO `votes` (`candidate_id` , `voters_id` , `poste_class_name`) VALUES( '$posteID', '$_SESSION[voters_id]','$poste[class_name]')") ;//or die(mysql_error());
        }else{
            $conn->query("INSERT INTO `votes` (`candidate_id` , `voters_id` , `poste_class_name`) VALUES( 0, '$_SESSION[voters_id]','$poste[class_name]')") ; //or die(mysql_error());
        }
    }
    $conn->query("UPDATE `voters` SET `status` = 'Voted' WHERE `voters_id` = '$_SESSION[voters_id]'") or die(mysql_error());
    session_destroy();
?>
<!DOCTYPE html>
<html>
<head>
    <title>Success</title>
</head>
<body>
    <script>
        // Display the popup message
        alert("You have been successfully voted. Thank you");
        // Redirect to index.php after displaying the message
        window.location.href = "index.php";
    </script>
</body>
</html> -->


<?php
    include("database/dbcon.php");
    session_start();
    $postes = $conn->query("SELECT `id` , `class_name` FROM `postes`") or die(mysqli_errno());
    $posteID; //Don't delete
    if(!isset($_SESSION['voters_id'])){
        header("location:index.php");
    }
    while ($poste = $postes->fetch_array()){
        $posteClassName = $poste['class_name'];
        
        if( isset( $_SESSION[ $posteClassName . "_id"] ) && $_SESSION[ $posteClassName. "_id"] !=""){
            
            $posteID = $_SESSION[ $posteClassName. "_id"];
            $conn->query("INSERT INTO `votes` (`candidate_id` , `voters_id` , `poste_class_name`) VALUES( '$posteID', '$_SESSION[voters_id]','$poste[class_name]')") ;//or die(mysql_error());
        }else{
            $conn->query("INSERT INTO `votes` (`candidate_id` , `voters_id` , `poste_class_name`) VALUES( 0, '$_SESSION[voters_id]','$poste[class_name]')") ; //or die(mysql_error());
        }
    }
    $conn->query("UPDATE `voters` SET `status` = 'Voted' WHERE `voters_id` = '$_SESSION[voters_id]'") or die(mysql_error());
    session_destroy();
?>
<!DOCTYPE html>
<html>
<head>
    <title>Success</title>
</head>
<body>
    <script>
        // Display the popup message
        alert("You have been successfully voted. Thank you");
        // Countdown function
        function countdown() {
            var seconds = 10;
            function tick() {
                seconds--;
                document.getElementById('countdown').innerHTML = seconds;
                if(seconds > 0) {
                    setTimeout(tick, 1000);
                } else {
                    // Redirect to results.php after countdown
                    window.location.href = "results.php?token=DQOL2024";
                }
            }
            tick();
        }
        // Start countdown when the page loads
        window.onload = function() {
            countdown();
        };
    </script>
    <div style="text-align: center; margin-top: 50px;">
    	<p style="font-size: 24px;">You can see the vote result after <span id="countdown" style="font-size: 36px; font-weight: bold;">10</span> seconds</p>
	</div>

</body>
</html>


