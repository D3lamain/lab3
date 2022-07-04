<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        table, td, th {
            border: 1px solid black;
            border-collapse: collapse;
        }
    </style>
    <script src="script.js">

    </script>
</head>
<body>
<form action="" method="post" id = "vendor">
    <input type="text" name="vendor">
    <input type="submit" value="find"><br>

</form>
<br>
<form action="" method="post" id = "category">
    <input type="text" name="category">
    <input type="submit" value="find"><br>

</form>
<br>
<form action="" method="post" id = "price">
    <input placeholder="Min:" type="text" name="min_price">
    <input placeholder="Max:" type="text" name="max_price">
    <input type="submit" value="find"><br>

</form>
<hr>
<div id="content">

</div>
</body>
</html>
