<?php
include("koneksi.php");//fungsi gabung file
if(isset($_POST['simpan'])){
	$query_tambah_data= "insert into barang(merek,harga) values
('".$_POST['merek']."',
'".$_POST['harga']."')";
$proses_data=mysqli_query($rumah,$query_tambah_data);
if($proses_data){
	echo 'Tambah Data Berhasil';
}else{
	echo 'mysqli_error'();
}

}
?>
<form method="POST" action="">
<table>
<tr>
<td>Nama Barang</td>
<td><input name="merek" type="text"></td>
</tr>
<tr>
<td>Harga</td>
<td><input name="harga" type="number"></td>
</tr>
<tr>
<td><input name="simpan"  type="submit"></td>
</tr>
</table>
</form>