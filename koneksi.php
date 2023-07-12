<?php 
$connect = new mysqli("localhost","root","","users");
if($connect){
}else{
	echo "Connection Failed";
	exit();
}
 ?>