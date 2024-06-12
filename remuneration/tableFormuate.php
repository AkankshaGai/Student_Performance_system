<?php

include('../config/connection.php');
session_start();

$conn = mysqli_connect(LOCALHOST, DB_USERNAME, DB_PASSWORD);
$db_select = mysqli_select_db($conn, DB_NAME);
if ($db_select) {
    //echo "success";
}


if(isset($_POST['submit'])){
$Semester = $_POST['Semester'];  // Storing Selected Value In Variable
$noOfStudents = $_POST['noOfStudents'];
$noOfGroups = $_POST['noOfGroups'];

echo $noOfGroups;
echo $noOfStudents;
// Displaying Selected Value

$_SESSION["Semester"] = $Semester;
    $_SESSION["noOfStudents"] = $noOfStudents ;
    $_SESSION["noOfGroups"] = $noOfGroups;

    header('location:formulateSql.php');
}
?>