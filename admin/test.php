<?php

$servername = "localhost";
$username = "root";
$password = "";
$database = "siiro";

// Membuat Koneksi
$conn = mysqli_connect($servername,$username,$password,$database);

// mengecek Koneksi

if(!$conn){
	die("Gagal Koneksi ke database". mysqli_connect_error());
}


$sql = 'SELECT * FROM mou ORDER BY id DESC';
$query = mysqli_query($conn,$sql);
?>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>

<style>
	 tfoot {
    display: table-header-group;
}
.dataTables_filter, .dataTables_info { display: none; }
.searchable { display: none; }

</style>

<div style="overflow-x:auto;">
<table name="item" id="item" class="display" width="100%" cellspacing="0">
	<thead>
		<tr>
			<th>No</th>
			<th>Document ID</th>
			<th>Partners</th>
			<th>Programs</th>
			<th>Continent</th>
			<th>Countries</th>
			<th>Start</th>
			<th>End</th>
		</tr>
	</thead>
	<tfoot>
		<tr>
			<th id="nomor">No</th>
			<th>Document ID</th>
			<th>Partners</th>
			<th>Programs</th>
			<th>Continent</th>
			<th>Countries</th>
			<th>Start</th>
			<th>End</th>
		</tr>
	</tfoot>
	<tbody>
		<?php $id = 1; foreach ($query as $mou) { ?>
		<tr>
			<td><?php echo $id++; ?></td>
			<td><?php echo $mou['document_id']; ?></td>
			<td><?php echo $mou['partener']; ?></td>
			<td><?php echo $mou['program']; ?></td>
			<td><?php echo $mou['continent']; ?></td>
			<td><?php echo $mou['country']; ?></td>
			<td><?php if($mou['start'] == '0000-00-00'){ echo 'Unspecificed';}else{ $mou['start'];} ?></td>
			<td><?php if($mou['end'] == '0000-00-00'){ echo 'Unspecificed';}else{ $mou['end'];} ?></td>
		</tr>
		<?php
		}
		?>
	</tbody>
</table>
</div>

<?php mysqli_close($conn); ?>
<script>
	
	   // Setup - add a text input to each footer cell
 $('#item tfoot th').each( function () {
     var title = $(this).text();
     $(this).html( '<input type="text" placeholder="Search" />' );
 } );

// DataTable
 var otable = $('#item').DataTable();

 // Apply the search
 otable.columns().every( function () {
 
     var that = this;
     $( 'input', this.footer() ).on( 'keyup change', function () {
         if ( that.search() !== this.value ) {
             that
                 .search( this.value )
                 .draw();
         }
     } );
 } );

</script>
