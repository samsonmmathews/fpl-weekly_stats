<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FPL Database</title>
</head>
<body>

    <h1>Fantasy Premier League Database</h1>

    <?php
        include 'connect.php';

        $query = "SELECT * FROM players ORDER BY total_points DESC";
        $result = mysqli_query($connect, $query);

        if (mysqli_num_rows($result) > 0)
        {
            echo "full_name - price - points - total points <br>";
            while ($row = mysqli_fetch_assoc($result)) {
                echo $row['full_name'] . " - " . $row['price'] . " - " . $row['points'] .  " - " . $row['total_points'] . "<br>";
            }
        }
        else {
            echo "No players found.";
        }

        mysqli_close($connect);
    ?>
    
</body>
</html>