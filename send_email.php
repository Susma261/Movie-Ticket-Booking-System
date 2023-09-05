<?php

function sendConfirmationEmail($bookingDetails) {
    $apiKey = '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'; 
    $fromEmail = 'susmasuki@gmail.com'; 
    $toEmail = 'susmasuki@gmail.com'; 

    $email = new \SendGrid\Mail\Mail();
    $email->setFrom($fromEmail, 'Susma');
    $email->setSubject('Movie Seat Booking Confirmation');
    $email->addTo($toEmail);
    $email->addContent(
        "text/html",
        "<p>Thank you for booking seats for the movie. Here are your booking details:</p><p>" . $bookingDetails . "</p>"
    );

    $sendgrid = new \SendGrid($apiKey);

    try {
        $response = $sendgrid->send($email);
        return true;
    } catch (Exception $e) {
        return false;
    }
}

$bookingDetails = 'Seats: A1, A2, A3';
if (sendConfirmationEmail($bookingDetails)) {
    echo 'Confirmation email sent successfully.';
} else {
    echo 'Confirmation email could not be sent.';
}?>
