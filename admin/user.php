
<?php include ('session.php');?>
<?php include ('head.php');?>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <?php include ('side_bar.php');?>

        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="page-header">System User List</h3>
					
                </div>
				
				<button class="btn btn-success" data-toggle="modal" data-target="#add_user">Add User</button>

                <!-- /.col-lg-12 -->
			
				
				<hr/>
				
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="modal-title" id="myModalLabel">         
												<div class="panel panel-primary">
													<div class="panel-heading">
														User Data List
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
                                         
                                            <th>Username</th>
                                            <th>Password</th>
                                            <th>Firstname</th>
                                            <th>Lastname</th>
                                            
                                            <!-- <th>Action</th> -->
                                        </tr>
                                    </thead>
                                    <tbody>
									
                                        <tr>
										<?php 
										require '../database/dbcon.php';
										$bool = false;
										$query = $conn->query("SELECT * FROM user ORDER BY user_id DESC");
										while($row = $query->fetch_array()){
										$user_id=$row['user_id'];
										?>
											
											<td><?php echo $row ['username'];?></td>
                                            <td><?php echo $row ['password'];?></td>
                                            <td><?php echo $row ['firstname'];?></td>
                                            <td><?php echo $row ['lastname'];?></td>
                                            <!--  -->
                                        </tr>
										
                                       <?php } ?>
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

    <?php include ('../scripts/script.php');?>

</body>

</html>

