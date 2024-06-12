<?php
// includes the connection file.
include('../config/connection.php');
//include('functionSem.php');
session_start();


$sem = "sem".$_SESSION["Semester"] ;
/*
$year = "2021";

$nameFile = $sem. "_".$year;
echo $nameFile; */

$conn = mysqli_connect(LOCALHOST, DB_USERNAME, DB_PASSWORD);
$db_select = mysqli_select_db($conn, DB_NAME);
if ($db_select) {
    //echo "success";
}

$noOfStudent = $_SESSION["noOfStudents"];
$noOfGroups = $_SESSION["noOfGroups"] ;

$costTable = "SELECT * from cost";
$costTableQuery = mysqli_query($conn, $costTable);

$row = mysqli_fetch_assoc($costTableQuery);
$IAE = $row['IAE(20)'];
$TW_25 = $row['TW(25)'];
$TW_50 = $row['TW(50)'];
$OralPrac = $row['OralPrac'];
$MiniProject_25= $row['MiniProjectTW(25)']; //oral 
$MiniProject_50 = $row['MiniProjectTW(50)']; //oral
$Project_TW_25 = $row['MiniProjectOral(25)'];
$Project_TW_50 = $row['MiniProjectOral(50)'];

$cost_theory_IAE = $IAE * $noOfStudent;
$cost_TW_25 = $TW_25 * $noOfStudent; 
$cost_Oral = $OralPrac * $noOfStudent; //lab
$externalTALab = $row['TAExternalLab']; //lab
$externalLab = $cost_Oral; //lab
$labAssistant = $row['LabAssistant']; //lab
$peonLab = $row['Peon']; //lab
$cost_TW_50 = $TW_50 * $noOfStudent;
$costMiniProjectOral = $MiniProject_25 * $noOfGroups;
$costMiniProjectTA = $row['TAExternalMp'];
$costMiniProjectExternal = $costMiniProjectOral;
$labAssistantProject = $row['LabAssistantMp'];
$peonProject = $row['PeonMp']; 



/* end of cost function */

/* START OF MATH QUERY */
$totalMathRow= $cost_TW_25+$cost_theory_IAE;
$math = "UPDATE sem3 SET students = ? ,twMarks='25', twRs = ?, IAE= ?, totalRs = ? WHERE category = 'MATH'";
$stmt_math= mysqli_prepare($conn, $math);
$stmt_math->bind_param("iiii", $noOfStudent, $cost_TW_25, $cost_theory_IAE, $totalMathRow );
$stmt_math->execute();
/* END OF MATH QUERY */

/* START OF THEORY QUERY */
$theory = "UPDATE sem3 SET students = ? , IAE= ?, totalRs = ? WHERE category = 'THEORY'";
$stmt_theory= mysqli_prepare($conn, $theory);
$stmt_theory->bind_param("iii", $noOfStudent, $cost_theory_IAE, $cost_theory_IAE );
$stmt_theory->execute();
/* END OF THEORY QUERY */

/* START OF LAB QUERY */

$labTotal = $cost_TW_25 + $cost_Oral + $externalTALab + $externalLab + $labAssistant + $peonLab;
$lab = "UPDATE sem3 SET students = ? ,twMarks='25', oralPrac ='OR + PR', oralPracMark = '25', twRs = ?, oralpracRs= ?, TaExternal =?, ExternalLab =?, labAss= ?, peon =?, totalRs = ? WHERE category = 'LAB'";
$stmt_lab = mysqli_prepare($conn, $lab);
$stmt_lab->bind_param("iiiiiiii", $noOfStudent, $cost_TW_25, $cost_Oral, $externalTALab, $externalLab, $labAssistant, $peonLab, $labTotal );
$stmt_lab->execute();

/* END OF LAB QUERY */

/* START OF LAB with no TW QUERY */

$labNoTW = "UPDATE sem3 SET students = ?, twMarks='25' , twRs= ?, totalRs = ? WHERE category = 'NoTWLab'";
$stmt_labNoTW= mysqli_prepare($conn, $labNoTW);
$stmt_labNoTW->bind_param("iii", $noOfStudent, $cost_TW_25, $cost_TW_25);
$stmt_labNoTW->execute();

/* END OF LAB with no TW QUERY */

/* START OF Skills Lab QUERY */

$totalSkillLab= $cost_TW_50 + $cost_Oral + $externalTALab + $externalLab + $labAssistant + $peonLab;
$skillLab = "UPDATE sem3 SET students = ?, twMarks='50',  twRs= ?, oralPrac ='OR + PR', oralPracMark = '25', oralpracRs= ?, TaExternal=?, ExternalLab = ?, labAss= ?, peon =?, totalRs = ? WHERE category = 'SKILLLAB'";
$stmt_skillLab= mysqli_prepare($conn, $skillLab);
$stmt_skillLab->bind_param("iiiiiiii", $noOfStudent, $cost_TW_50, $cost_Oral, $externalTALab, $externalLab, $labAssistant, $peonLab, $totalSkillLab  );
$stmt_skillLab->execute();

/* END OF Skills Lab QUERY */

/* START OF Mini Project Odd Sem QUERY */

$totalProjectOdd= 930 + $costMiniProjectOral + $costMiniProjectTA + $costMiniProjectExternal + $labAssistantProject + $peonProject;
$MpOdd = "UPDATE sem3 SET students = ?, twMarks='25',  twRs= '930', oralPrac ='OR + PR', oralPracMark = '25', oralpracRs= ? , TaExternal=?, ExternalLab = ?, labAss= ?, peon =?, totalRs = ? WHERE category = 'MPODD'";
$stmt_skillLab= mysqli_prepare($conn, $MpOdd);
$stmt_skillLab->bind_param("iiiiiii", $noOfGroups, $costMiniProjectOral, $costMiniProjectTA, $costMiniProjectExternal, $labAssistantProject, $peonProject, $totalProjectOdd  );
$stmt_skillLab->execute();


/* END OF Mini Project Odd Sem QUERY */
header('location:table.php');





?>
