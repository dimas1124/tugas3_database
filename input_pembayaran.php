<?php
include("koneksi.php");//fungsi gabung file
if(isset($_POST['simpan'])){
	$query_tambah_data= "insert into input_pembayaran(barang_id,Qty,harga) values
('".$_POST['barang_id']."',
'".$_POST['Qty']."',
'".$_POST['harga']."')";
$proses_data=mysqli_query($rumah,$query_tambah_data);
if($proses_data){
	echo 'Berhasil di bayar';
}else{
	echo mysqli_error();
}

}
?>
<form method ="post" action=""><!--Form untuk kirim data ke DB-->
<table border="1"><!--name harus sama dengan database-->
	<tr>
		<td>Barang_id</td>
		<td><input name="barang_id" type="number"></td>
	</tr>
	<tr>
		<td>Qty</td>
		<td><input name="Qty" type="number"></td>
	</tr>
	<tr>
		<td>Harga</td>
		<td><input name="harga" type="number"></td>
	</tr>
	<tr>
		<td><input name="simpan" type="submit"></td>
	</tr>
</table>
</form>