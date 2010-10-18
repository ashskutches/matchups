<?php
/* 
  - Replace 'mail@domain.com' with your email address
  - Replace 'Subject message here' with your subject message
*/


session_start();

if ($_POST['captcha'] == $_SESSION['captcha']) {
    $name    = trim($_POST['name']);
    $email   = trim($_POST['email']);
    $message = trim($_POST['message']);
    mail('mail@domain.com', 'Subject message here', $message, "From: ".$name." <".$email.">\r\nReply-to: ".$name." <".$email.">");
} else {
    die();
}
?>