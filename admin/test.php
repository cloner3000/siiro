<?php 

$data = "001/AIP/IRO-NSP/6/2018";
$data2 = explode('/', $data);
$data3 = $data2[0]+1;
print_r($data2);

// menambah nomor
$tahun = date('Y');
$bulan = date('m');

echo "<br>";
echo $data3;
?>