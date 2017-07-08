<?php

ini_set('display_errors', 1);
ini_set('log_errors', 1);
error_reporting(E_WARNING);




include("_acp-ml\modules\phpmailer\class.phpmailer.php");



ob_start();

include '.\index.php';

$mailcontent = ob_get_contents();

// Close the buffer and clean it

ob_end_clean();

//if (mail($to, $subject, $body)) {
//  echo("<p>Message successfully sent!</p>");
//}
$mail = new PHPMailer(); 
$mail->IsSMTP(); // send via SMTP
$mail->SMTPAuth = true; // turn on SMTP authentication
$mail->Username = ""; // SMTP username
$mail->Password = ""; // SMTP password
$webmaster_email = ""; //Reply to this email ID
$email=""; // Recipients email ID
$name=""; // Recipient's name
$mail->From = $webmaster_email;
$mail->FromName = $webmaster_email;
$mail->AddAddress($email,$name);
$mail->AddAddress("",$name);
$mail->AddAddress("",$name);
$mail->AddReplyTo($webmaster_email,$webmaster_email);
$mail->Subject = "Loaves & Fishes Stats";
$mail->Body = $mailcontent;
$mail->IsHTML(true); // send as HTML

if(!$mail->Send())
{
echo "Mailer Error: " . $mail->ErrorInfo;
}
else
{
echo "Message has been sent";
}

?>
