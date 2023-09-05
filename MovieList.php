<?php
include 'connect.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Data Display</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
    <header>
        <h1>Movie Data</h1>
    </header>
    <div class="container my-5">
        <form method="post">
            <input type="text" placeholder="Search" name="search">
            <button class="btn btn-dark btn-sm" name="submit">Search</button>
        </form>
        <div classs="container my-5">
            <table class="table">
                <?php
                $con = mysqli_connect('localhost', 'root', '', 'movie_booking');
                if (!$con) {
                    die(mysqli_error("Error" + $con));}

                if (isset($_POST['submit'])) {
                    $search = $_POST['search'];
                    $sql = "select * from `d5496ff6_ac6b_41ae_a075_3080227dba65` where movie_name like '%$search%' or 
                    theatre_name like '%$search%'
                 or theatre_location like' %$search%' or release_date like '%$search%'";
                    $result = mysqli_query($con, $sql);
                    if ($result) {
                        if (mysqli_num_rows($result) > 0) {
                            echo '<thead>
                        <tr>
                        <th>Movie name</th>
                        <th>Theatre Name</th>
                        <th>Theatre Location</th>
                        <th>Release Date</th>
                        </tr></thead>';
                            while ($row = mysqli_fetch_assoc($result)) {
                                echo '<tbody> <tr>
                                    <td><a href="index.html">' . $row['movie_name'] . '</a></td>

                    <td>'.$row['theatre_name'].'</td>
                    <td>'.$row['theatre_location'].'</td>
                     <td>'.$row['release_date'].'</td>
                        </tr></tbody>';
                            }
                        } else {
                            echo '<h2 class=text-danger>Movie is not available</h2>';
                        }
                    }
                }
                ?>
                </table>
                <table>
                    <tr>
                        <th>Movie Name</th>
                        <th>Theatre Name</th>
                        <th>Theatre Location</th>
                        <th>Release Date</th>
                    </tr>
                    <?php
                    $conn = mysqli_connect("localhost", "root", "", "movie_booking");
                    if ($conn->connect_error) {
                        die("Connection failed:" . $conn->connect_error);
                    }
                    $sql = "select  movie_name,theatre_name,theatre_location,release_date from d5496ff6_ac6b_41ae_a075_3080227dba65";
                    $result = $conn->query($sql);
                    if ($result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {
                            echo "<tr><td>" . $row["movie_name"] . "</td><td>". $row["theatre_name"] . "</td><td>"  . $row["theatre_location"] . "</td><td>" . $row["release_date"] . "</td></tr>";

                        }
                        echo "</table>";
                    } else {
                        echo "0 result";
                    }
                    $conn->close();
                    ?></table>

            </table>
        </div>
    </div>


</body>

</html>