<?php

$selectedSeats = $_POST['selectedSeats']; // Retrieve selected seats from the form

$bookingReference = "BOOK-" . strtoupper(substr(md5(uniqid()), 0, 8));

session_start();
$_SESSION['bookingReference'] = $bookingReference;
$_SESSION['selectedSeats'] = $selectedSeats;

header("Location: booking_details.html?bookingReference=" . urlencode($bookingReference));
