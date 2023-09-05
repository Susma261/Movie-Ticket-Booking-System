<?php
$con=mysqli_connect('localhost','root','','movie_booking');
if(!$con){
    die(mysqli_error("Error"+$con));
}?>