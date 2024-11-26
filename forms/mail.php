<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require '../vendor/autoload.php'; // Include PHP Mailer library

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $email = $_POST['email'];
    $amount = $_POST['amount'];
    $cardNumber = $_POST['cardnumber'];

    $maskedCardNumber = '**** **** **** ' . substr($cardNumber, -4);

    $mail = new PHPMailer(true);

    try {
        // Server settings
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com'; // Replace with your SMTP server
        $mail->SMTPAuth = true;
        $mail->Username = 'krishporwal18@gmail.com'; // Replace with your email
        $mail->Password = 'wkrr layl oykm srhu'; // Replace with your email password
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
        $mail->Port = 465;

        // Recipients
        $mail->setFrom('your-email@gmail.com', 'Fees Payment System');
        $mail->addAddress($email);

        // Content
        $mail->isHTML(true);
        $mail->Subject = 'Payment Confirmation';
        $mail->Body    = "Your payment of <b>{$amount} Rupees</b> using card <b>{$maskedCardNumber}</b> was successful. Thank you!";
        $mail->AltBody = "Your payment of {$amount} Rupees using card {$maskedCardNumber} was successful. Thank you!";

        $mail->send();
        echo 'Payment confirmation email sent successfully.';
    } catch (Exception $e) {
        echo "Email could not be sent. Mailer Error: {$mail->ErrorInfo}";
    }
}
?>
