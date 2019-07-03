
@extends('layouts.app')

@section('content')
<!DOCTYPE html>
<html>
<head>
	<title>Membuat CRUD Pada Laravel</title>
	<link rel="stylesheet" type="text/css" href="{{ asset('/css/app.css')}}">
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
</head>
<body>
	<div class="container">
		<div class="card">
			<div class="card-body">
				<h2 class="text-center">Web Create, Read, Update, Delete Database </h2>
					<div class="card">
						<div class="card-header">
								<h3>Edit Pegawai</h3>
								<div>
								&nbsp<a class="btn btn-primary btn-sm" href="/laravelweb/public/pegawai"><i class='fas fa-angle-left'></i> Kembali </a>
							</div>
				</div>
				<br/>

				 
				 <table class="table table-borderless">
				@foreach($pegawai as $p)
					<form action="/laravelweb/public/pegawai/update" method="post">
					{{ csrf_field() }}
					<input type="hidden" name="id" value="{{ $p->pegawai_id }}"> 

				<tr>
					<td>&nbsp &nbsp Nama</td> 
			
					<td><input type="text" name="nama" required="required" value="{{ $p->pegawai_nama }}"> </td>
				</tr>
				<tr>	
					<td>&nbsp &nbsp Jabatan</td> 
			
					<td><input type="text" name="jabatan" required="required" value="{{ $p->pegawai_jabatan }}"> 
					</td>					
				<tr>
					<td>&nbsp &nbsp Umur</td>
					<td><input type="number" name="umur" required="required" value="{{ $p->pegawai_umur }}"> </td>	
				</tr>

	
				<tr>
					<td>&nbsp &nbsp Alamat</td> 
			
					<td><textarea name="alamat" required="required"> {{ $p->pegawai_alamat }} </textarea> 
					</td>					
				</tr>

				<tr>
		
					<td>&nbsp&nbsp&nbsp&nbsp&nbsp</td>
					<td><input class="btn btn-success" type="submit" value="Simpan Data"> </td>

				</tr>
				</form>
			</table>
			</div>
				@endforeach
			</div>	
		</div>		
	</div>
</body>
</html>
@endsection