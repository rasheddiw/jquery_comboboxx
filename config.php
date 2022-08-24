<?php 

error_reporting(0);

class Db
{
	public $con;
	function __construct()
	{
		$this->con = mysqli_connect("localhost","root","") or die(mysqli_error());

		mysqli_select_db($this->con, "mydb") or die(mysqli_error());
	}

	public function getDepartment()
	{
		$query = "SELECT * FROM department";
		$result = mysqli_query($this->con,$query);
		return $result;
	}

	public function getDesignation($department)
	{
		$query = "SELECT * FROM designation WHERE depart_id=".$department."";
		$result= mysqli_query($this->con, $query);
		return $result;
	}

	public function getAllEmployee()
	{
		$query = "SELECT e.emp_id,e.name,e.phone,e.email,e.emp_address,d.desig_name FROM employee AS e, designation AS d WHERE e.desig_id=d.desig_id";

		$result=mysqli_query($this->con, $query) or die(mysqli_error());
		return $result;
	}

	public function getEmployee($designation)
	{
		$query = "SELECT * FROM employee WHERE desig_id=".$designation."";
		$result=mysqli_query($this->con, $query);
		return $result;
	}

	public function closeCon()
	{
		mysqli_close($this->con);
	}
}

?>