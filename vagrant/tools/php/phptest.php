<html>
<head>
    <title>PHP Test</title>
</head>
    <body>
    <?php echo '<p>Hello World</p>';

    // In the variables section below, replace user and password with your own MySQL credentials as created on your server
    $servername = 'localhost';
    $username = 'root';
    $password = 'root';
    $dbname = 'wp';

    // Create MySQL connection
    $conn = mysqli_connect($servername, $username, $password);

    // Check connection - if it fails, output will include the error message
//var_dump($conn);
    if (!$conn) {
        die('<p>Connection failed: <p>' . mysqli_connect_error());
    }
    echo '<p>Connected successfully</p>';

//$result = mysqli_query($conn, "show databases");
//$row = mysqli_fetch_row($result);
//var_dump($row);

    mysqli_select_db($conn, $dbname) or die("Could not open the db '$dbname'");
    ?>
</body>
</html>
