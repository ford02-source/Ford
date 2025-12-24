<?php
$servernama = "fdb1030.awardspace.net";
$username = "4514083_halimzz";
$password = "HLN_0012";
$dbname = "4514083_halimzz";

$conn = mysqli_connect($servernama, $username, $password, $dbname);

if(!$conn){
    die("Koneksi Gagal: " . mysqli_connect_error());
}
?>