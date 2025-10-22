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

    $query = "SELECT p.full_name, p.position, p.price, p.points, p.total_points, t.team_name, t.manager_name, t.stadium 
            FROM players p 
            INNER JOIN teams t ON p.fk_team = t.team_id
            ORDER BY p.total_points DESC";

    $result = mysqli_query($connect, $query);

    if(!$result) {
        die('<p style="color:red;">Error: ' . mysqli_error($connect) . '</p');
    }

    if (mysqli_num_rows($result) > 0) {
        echo "<table>";
        echo "<tr>
                <th>Full Name</th>
                <th>Position</th>
                <th>Price</th>
                <th>Points</th>
                <th>Total Points</th>
                <th>Team Name</th>
                <th>Manager Name</th>
                <th>Home Stadium</th>
              </tr>";

        while ($row = mysqli_fetch_assoc($result)) {
            echo "<tr>";
            echo "<td>" . $row['full_name'] . "</td>";
            echo "<td>" . $row['position'] . "</td>";
            echo "<td>" . $row['price'] . "</td>";
            echo "<td>" . $row['points'] . "</td>";
            echo "<td>" . $row['total_points'] . "</td>";
            echo "<td>" . $row['team_name'] . "</td>";
            echo "<td>" . $row['manager_name'] . "</td>";
            echo "<td>" . $row['stadium'] . "</td>";
        }
        echo "</table>";
    } else {
        echo "<p>No players found.</p>";
    }

    mysqli_close($connect);
    ?>

    <footer>
        <p>© 2025 Fantasy Premier League Database | Matchweek 7 stats</p>
    </footer>

</body>

</html>