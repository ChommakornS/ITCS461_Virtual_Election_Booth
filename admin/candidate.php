<?php include ('session.php');?>
<?php 
    include ('head.php');
    require '../database/dbcon.php';
?>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <?php include ('side_bar.php');?>

        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="row">
                <!-- <div class="col-lg-12" style="padding-bottom: 20px;">
                    <h3 class="page-header">Candidates List</h3>
                </div> -->

                

				<!-- <button class="btn btn-success" data-toggle="modal" data-target="#addCandidateModal"></button> -->
				<!-- ?php include ('add_candidate_modal.php');?> -->
				
				<hr>
				
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="modal-title" id="myModalLabel">         
                                            <div class="panel panel-primary">
                                                <div class="panel-heading">
                                                    Candidates List
                                                </div>    
                                            </div>
                                        </h4>
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>Position</th>
                                        <th>Firstname</th>
                                        <th>Lastname</th>
                                        <th>Party</th>
                                        <th>Gender</th>
                                        <!-- <th>Image</th> -->
                                        <!-- <th>Action</th> -->
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                        $bool = false;
                                        $query = $conn->query("SELECT * FROM candidate ORDER BY candidate_id DESC");;
                                        if($query->num_rows > 0){
                                            while($row = $query->fetch_array()){
                                                $candidate_id=$row['candidate_id'];
                                                $poste_id = $row ['position'];
                                                $poste = $conn->query("SELECT name FROM postes WHERE id = '$poste_id'")->fetch_array() or die(mysql_error());
                                                $poste_name = $poste['name'];   
                                    ?>
                                    <tr>
                                        <td><?php echo $poste_name;?></td>
                                        <td><?php echo $row ['firstname'];?></td>
                                        <td><?php echo $row ['lastname'];?></td>
                                        <td><?php echo $row ['year_level'];?></td>
                                        <td><?php echo $row ['gender'];?></td>
                                        <!-- <td width="50"><img src="?php echo $row['img']; ?>" width="50" height="50" class="img-rounded"></td> -->
                                        <!-- <td width="50"><img src="admin/?php echo $row['img']; ?>" width="50" height="50" class="img-rounded"></td> -->

                                        <!-- <td style="text-align:center">
                                                <a rel="tooltip"  title="Delete" id="?php echo $candidate_id; ?>" href="#delete_user?php echo $candidate_id; ?>" data-target="#delete_user?php echo $candidate_id?>" data-toggle="modal"class="btn btn-danger btn-outline"><i class="fa fa-trash-o"></i> Delete</a>	
                                            ?php include ('delete_candidate_modal.php'); ?>
                                                <a rel="tooltip"  title="Edit" id="?php echo $row['candidate_id'] ?>" href="#edit_candidate?php echo $row['candidate_id'] ?>"  data-toggle="modal"class="btn btn-success btn-outline"><i class="fa fa-pencil"></i> Edit</a>		
                                            ?php require 'edit_candidate_modal.php';?>
                                        </td> -->
                                    </tr>
                                    
                                    <?php }} ?>
                                </tbody>
                            </table>
                        </div>
                        <!-- /.table-responsive -->                        
                    </div>
                    <!-- /.panel-body -->
                </div>
                    <!-- /.panel -->
              
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
    <?php include('../scripts/script.php');?>

</body>

</html>

