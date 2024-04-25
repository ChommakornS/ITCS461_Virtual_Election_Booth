<?php
	require_once 'repositories/voter_repository.php';
	require_once 'environnements/dev.php';
	
	$voter_repo = new VoterRepository();

	if (isset($_POST['login'])) {
		$idno = $_POST['idno'];
		$password = $_POST['password'];
	
		$voter = $voter_repo->getVoterByIdNumber($idno);
	
		if ($voter !== null) {
			//Verify password
			$isPasswordCorrect = password_verify($password, $voter['password']);
			if (!$isPasswordCorrect) {
				echo "<center><br><font color='red' size='3'>Incorrect password</font></center>";
				echo "<div id='countdown' style='font-size:16px; color: black;'></div>";
				echo "<div id='resultLink' style='display:none;'><br>Results Available <a href='" . RESULTS_LINK . "'>here</a></div></center>";				
				// die();
			}else if ($voter['status'] == 'Voted') {
				echo "<br><center><font color='red' size='3'>You Can Only Vote Once</font>";
				echo "<div id='countdown' style='font-size:16px; color: black;'></div>";
				echo "<div id='resultLink' style='display:none;'><br>Results Available <a href='" . RESULTS_LINK . "'>here</a></div></center>";
			} else if ($voter['account'] != 'Active') {
				echo "<center><br><font color='red' size='3'>Your account is still inactive</font>";
				echo "<center><br><font color='red' size='3'>Please wait admin activate your account</font>";
				echo "<div id='countdown' style='font-size:16px; color: black;'></div>";
				echo "<div id='resultLink' style='display:none;'><br>Results Available <a href='" . RESULTS_LINK . "'>here</a></div></center>";
			} else {
				session_start();
				$_SESSION['voters_id'] = $voter['voters_id'];
				header('location:vote.php');
			}
		} else {
			echo "<center><br><font color='red' size='3'> There is no account</center>";
			echo "<div id='countdown' style='font-size:16px; color: black;'></div>";
			echo "<div id='resultLink' style='display:none;'><br>Results Available <a href='" . RESULTS_LINK . "'>here</a></div></center>";

		}
	}
?>

<script>
    // Define the duration of the countdown
    var seconds = 10;
    var countdownElement = document.getElementById('countdown');
    var resultLink = document.getElementById('resultLink');

    function updateCountdown() {
        countdownElement.textContent = 'Results will be available in ' + seconds + ' seconds.';
        seconds--;
        if (seconds < 0) {
            clearInterval(countdownTimer);
            countdownElement.style.display = 'none'; // Hide countdown
            resultLink.style.display = 'block'; // Show the results link
        }
    }

    var countdownTimer = setInterval(updateCountdown, 1000);
</script>
