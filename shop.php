<?php
$db = new PDO("mysql:host=127.0.0.1;dbname=shop", "root", "");


if (isset($_POST["vendor"])) {
    $statement = $db->prepare("SELECT items.name, price, quantity, quality FROM items inner join vendors on FID_Vender = ID_Vendors WHERE Vendors.name=?");
    $statement->execute([$_POST["vendor"]]);
    echo "<table>";
    echo " <tr>
 <th> name  </th>
 <th> price </th>
 <th> quantity </th>
 <th> quality </th>
</tr> ";
    while ($data = $statement->fetch()) {
        echo " <tr>
 <th> {$data['name']}  </th>
 <th> {$data['price']} </th>
 <th> {$data['quantity']} </th>
 <th> {$data['quality']} </th>
</tr> ";
    }
    echo "</table>";
}

if (isset($_POST["category"])) {
    $statement = $db->prepare("SELECT items.name, price, quantity, quality FROM items inner join Categories on FID_Category = ID_Categories WHERE Categories.name=?");
    $statement->execute([$_POST["category"]]);
    $txt= "<table>";
    $txt.= " <tr>
 <th> name  </th>
 <th> price </th>
 <th> quantity </th>
 <th> quality </th>
</tr> ";
    while ($data = $statement->fetch()) {
        $txt.=  " <tr>
 <th> {$data['name']}  </th>
 <th> {$data['price']} </th>
 <th> {$data['quantity']} </th>
 <th> {$data['quality']} </th>
</tr> ";
    }
    $txt.=  "</table>";
    echo json_encode($txt);
}
if (isset($_POST["min_price"])) {
    $statement = $db->prepare("SELECT items.name, price, quantity, quality FROM items WHERE price between ? and ?");
    $statement->execute([$_POST["min_price"], $_POST["max_price"]]);
    echo "<table>";
    echo " <tr>
 <th> name  </th>
 <th> price </th>
 <th> quantity </th>
 <th> quality </th>
</tr> ";
    while ($data = $statement->fetch()) {
        echo " <tr>
 <th> {$data['name']}  </th>
 <th> {$data['price']} </th>
 <th> {$data['quantity']} </th>
 <th> {$data['quality']} </th>
</tr> ";
    }
    echo "</table>";
}
