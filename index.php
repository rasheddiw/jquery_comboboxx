<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Combo Box Search</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script type="text/javascript">
	
	$(document).ready(function(){

		$('#employee_div').load("allrecord.php");
		$('#depart_dropdown').change(function()
		{

			var selected = $(this).val();
			$('#desig_div').load("desig.php",{selected_depart:selected});
		});

		$("#refresh").click(function()
		{

			$("#employee_div").load("allrecord.php");
		});
	});
</script>

</head>
<body>
	<div class="container">
		<br><br>
		<center><h1><strong>Search Employee Records</strong></h1></center>
		<br>
		<div class="row">
			<form method="post" class="form-horizontal">
				<label class="control-label col-sm-3">Department</label>
				<div class="col-sm-2">
					<select name="department" class="form-control" id="depart_dropdown">
						<option>----Select----</option>
						<?php 

							require('config.php');
							$db = new Db;
							$result = $db->getDepartment();
							while($row=mysqli_fetch_array($result))
							{
		echo "<option value=".$row['depart_id'].">".$row['depart_name']."</option>";
							}

							

							$db->closeCon();

						?>
					</select>
				</div>
				<div class="col-sm-2" id="desig_div">
					
				</div>
				<button type="button" name="refresh" id="refresh" class="btn btn-primary"> Refresh </button>
			</form>
		</div>

		<div class="row">
			<br>
		</div>
			<div class="row" id="employee_div">			
			
		</div>
	</div>

</body>
</html>