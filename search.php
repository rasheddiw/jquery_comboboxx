<table class="table table-striped table-responsive">
	<tr>
		<th>Employee Id</th>
		<th>Name</th>
		<th>Phone</th>
		<th>Email</th>
		<th>Address</th>		
	</tr>
	<?php 

		require('config.php');

		$db = new Db();

		$result = $db->getEmployee($_POST['selected_desig']);

		while ($row = mysqli_fetch_array($result))
		 {
			echo "<tr>
					<td>".$row['emp_id']."</td>
					<td>".$row['name']."</td>
					<td>".$row['phone']."</td>
					<td>".$row['email']."</td>
					<td>".$row['emp_address']."</td>					
				</tr>";
		}

		$db->closeCon();
	?>
</table>