

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Voting System</title>
    <!-- Add your CSS links here -->
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <?php
    if (!isset($_GET['token']) || $_GET['token'] != "DQOL2024") {
        header("location:index.php");
    }
    include('voteHead.php');
    require 'database/dbcon.php';
    session_start();
    ?>
    <script src="js/voteCard.js"></script>
    <?php include('side_bar_anonyme_user.php'); ?>
    <form method="POST" action="results.php?token=DQOL2024" class="rootContainer">
        <div class="refreshDiv">
            <button class="refreshButton" type="submit" name="submit"><i class="fa fa-refresh fa-large"></i> Refresh</button>
        </div>
        <div class="rowCard">
            <?php
            $count = 0; // Initialize count variable
            $postes = $conn->query("SELECT `id`, `name` , `class_name` FROM `postes`");
            if (!$postes) {
                die("Error: " . mysqli_error($conn));
            }
            $postes_class = array();
            while ($poste = $postes->fetch_array()) {
                $query = $conn->query("SELECT * FROM `candidate` WHERE `position` = " . $poste['id']);
                if (!$query) {
                    die("Error: " . mysqli_error($conn));
                }
                if ($query->num_rows > 0) {
                    $queryVote = $conn->query("SELECT count(*) as total FROM `votes` WHERE `voters_id` = " . $poste['id'] . "");
                    if (!$queryVote) {
                        die("Error: " . mysqli_error($conn));
                    }
                    $total = $queryVote->fetch_array();
                    while ($fetch = $query->fetch_array()) {
                        $id = $fetch['candidate_id'];
                        $queryVote = $conn->query("SELECT count(*) as nbVotes FROM `votes` WHERE candidate_id = '$id'");
                        if (!$queryVote) {
                            die("Error: " . mysqli_error($conn));
                        }
                        $nbVotes = $queryVote->fetch_array();
                        ?>
                        <div class="columnCard">
                            <div class="card">
                                <img src="admin/<?php echo $fetch['img'] ?>">
                                <div class="containerCard">
                                    <h2 class="nameCard"><?php echo $fetch['firstname'] . " " . $fetch['lastname'] ?></h2>
                                    <p class="levelCard"><?php echo $fetch['year_level'] ?></p>
                                    <div class="reportBar">
                                        <span class="bar">
                                            <span class="value"></span>
                                        </span>
                                        <div class="skill-per" per="<?php echo $nbVotes['nbVotes']; ?>"><?php echo $nbVotes['nbVotes']; ?> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php
                        // Increase count after each card
                        $count++;
                        // Check if 4 cards have been displayed
                        if ($count % 4 == 0) {
                            // If yes, close the current row and start a new one
                            echo '</div><div class="rowCard">';
                        }
                    }
                }
            }
            ?>
        </div>
    </form>
    <?php include('scripts/script.php') ?>
    <script>
        $('.skill-per').each(function() {
            var $this = $(this);
            var value = ($(this).parent().children()[0]).childNodes[1];
            var per = $this.attr('per');
            $this.css("width", per + '%');
            $({
                animatedValue: 0
            }).animate({
                animatedValue: per
            }, {
                duration: 1000,
                step: function() {
                    value.style.width = this.animatedValue + '%';
                    $this.attr('per', Math.floor(this.animatedValue) + '%');
                },
                complete: function() {
                    value.style.width = this.animatedValue + '%';
                    $this.attr('per', Math.floor(this.animatedValue) + '%');
                }
            });
        });
    </script>
</body>
</html>
