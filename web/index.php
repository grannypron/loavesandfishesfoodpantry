<?php

ini_set('display_errors', 1);
ini_set('log_errors', 1);
error_reporting(E_WARNING);

date_default_timezone_set('America/New_York');

mysql_connect("0.0.0.0","","");
@mysql_select_db("pantry") or die( "Unable to select database");


$date = "NOW()";

if ($_REQUEST["date"]) {
  $date = "'" . $_REQUEST["date"] . "'";
}


$query1 = "SELECT CONCAT(LastName, ', ', FirstName,  ' - ', ifnull(Date(Signature1Date), ' '), ' ',  
          ifnull(Date(Signature2Date), ' '), ' ',  ifnull(Date(Signature3Date), ' '), ' ',  
          ifnull(Date(Signature4Date), ' '), ' ',  ifnull(Date(Signature5Date), ' '), ' ',  
          ifnull(Date(Signature6Date), ' ')) AS 'CLIENTS WHO SIGNED TODAY' 
          FROM pantry.intake 
          WHERE Date(Signature1Date) = Date(" . $date . ")
            OR Date(Signature2Date) = Date(" . $date . ")
            OR Date(Signature3Date) = Date(" . $date . ")
            OR Date(Signature4Date) = Date(" . $date . ")
            OR Date(Signature5Date) = Date(" . $date . ")
            OR Date(Signature6Date) = Date(" . $date . ")";

$query2 = "SELECT Count(ID) FROM pantry.intake WHERE Date(Signature1Date) = Date(" . $date . ")  OR Date(Signature2Date) = Date(" . $date . ")   OR Date(Signature3Date) = Date(" . $date . ")  OR Date(Signature4Date) = Date(" . $date . ")  OR Date(Signature5Date) = Date(" . $date . ")  OR Date(Signature6Date) = Date(" . $date . ")";  
$query3 = "SELECT SUM(IF(Line1_Name IS NULL, 0, 1) + IF(Line2_Name IS NULL, 0, 1) + IF(Line3_Name IS NULL, 0, 1) + IF(Line4_Name IS NULL, 0, 1) + IF(Line5_Name IS NULL, 0, 1) + IF(Line6_Name IS NULL, 0, 1)) FROM pantry.intake WHERE Date(Signature1Date) = Date(" . $date . ")  OR Date(Signature2Date) = Date(" . $date . ")   OR Date(Signature3Date) = Date(" . $date . ")  OR Date(Signature4Date) = Date(" . $date . ")  OR Date(Signature5Date) = Date(" . $date . ")  OR Date(Signature6Date) = Date(" . $date . ")";  
$query4 = "SELECT SUM(IF(Line1_Age <= 18, 1, 0) + IF(Line2_Age <= 18, 1, 0) + IF(Line3_Age <= 18, 1, 0) + IF(Line4_Age <= 18, 1, 0) + IF(Line5_Age <= 18, 1, 0) + IF(Line6_Age <= 18, 1, 0)) FROM pantry.intake WHERE Date(Signature1Date) = Date(" . $date . ")  OR Date(Signature2Date) = Date(" . $date . ")   OR Date(Signature3Date) = Date(" . $date . ")  OR Date(Signature4Date) = Date(" . $date . ")  OR Date(Signature5Date) = Date(" . $date . ")  OR Date(Signature6Date) = Date(" . $date . ")";  
$query5 = "SELECT SUM(IF(Line1_Age >= 65, 1, 0) + IF(Line2_Age >= 65, 1, 0) + IF(Line3_Age >= 65, 1, 0) + IF(Line4_Age >= 65, 1, 0) + IF(Line5_Age >= 65, 1, 0) + IF(Line6_Age >= 65, 1, 0)) FROM pantry.intake WHERE Date(Signature1Date) = Date(" . $date . ")  OR Date(Signature2Date) = Date(" . $date . ")   OR Date(Signature3Date) = Date(" . $date . ")  OR Date(Signature4Date) = Date(" . $date . ")  OR Date(Signature5Date) = Date(" . $date . ")  OR Date(Signature6Date) = Date(" . $date . ")";

$result1 = mysql_query($query1);
$result1num = mysql_numrows($result1);

$result2 = mysql_query($query2);
$result3 = mysql_query($query3);
$result4 = mysql_query($query4);
$result5 = mysql_query($query5);

mysql_close();


echo "# Sheets Signed: " . mysql_result($result2, 0) . "<br/>";
echo "# Family Members: "  . mysql_result($result3, 0) . "<br/>";
echo "# 18 and under: " . mysql_result($result4, 0) . "<br/>";
echo "# 65 and over: " . mysql_result($result5, 0) . "<br/>";
echo "<hr/>";
echo("CLIENTS WHO SIGNED TODAY <br/>");

$i=0;
while ($i < $result1num) {
  echo mysql_result($result1,$i,"CLIENTS WHO SIGNED TODAY");
  echo "<br/>";
  $i++;
}


?> 