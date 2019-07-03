@extends('layouts.app')

@section('content')
<!DOCTYPE html>
<html>
<head> 
<!-- 	<title> Membuat CRUD Pada Laravel </title>
	<link rel="stylesheet" type="text/css" href="{{ asset('/css/app.css')}}"> -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>

<style type="text/css">
	.pagination li{
		float: left;
		list-style-type: none;
		margin:5px;
	}

</style>
	<div class="container">
		<div class="card">
			<div class="card-body">


				<h2 class="text-center">Web Create, Read, Update, Delete Database </h2>
				<h3>Data Pegawai</h3>
				<br/>
			<!-- 	<p>Cari Data Pegawai : </p> -->
				<form action="/laravelweb/public/pegawai/cari" method="GET">
					<input type="text" name="cari" placeholder="Cari Pegawai ..." value="{{ old('cari' )}}">
					<input type="submit" value="Cari">

			
					<br/>
					<br/>

				<a class="btn btn-success" href="/laravelweb/public/pegawai/tambah"> + Tambah Pegawai Baru </a> 
				<a class="btn btn-primary pull-right" href="/laravelweb/public/pegawai/tambah"> CRUD Eloquent </a>
				<br/>
				<br/>

				<table class="table table-bordered table-hover table-striped">
					<thead class="thead-dark" >
						<tr>

							<th>Nama</th>
							<th>Jabatan</th>
							<th>Umur</th>
							<th>Alamat</th>
							<th>Opsi</th>

						</tr>
					</thead>
					@foreach($pegawai as $p)
					<tr>
						<td>{{ $p -> pegawai_nama}}</td>
						<td>{{ $p -> pegawai_jabatan}}</td>
						<td>{{ $p -> pegawai_umur}}</td>
						<td>{{ $p -> pegawai_alamat}}</td>
						<td>
							<a class="btn btn-warning btn-sm" href="/laravelweb/public/pegawai/edit/{{$p->pegawai_id}}">
								<span class="glyphicon glyphicon-pencil"></span>
								Edit
							</a>

							<a class="btn btn-danger btn-sm" href="/laravelweb/public/pegawai/hapus/{{$p->pegawai_id}}"><span class="glyphicon glyphicon-trash"></span>
								Hapus
							</a>
						</td>
					</tr>
					@endforeach

				</table>
		
				Halaman: {{ $pegawai->currentPage() }} <br/>
				Jumlah data: {{ $pegawai->total() }} <br/>
				Data Per Halaman: {{ $pegawai->perPage() }} <br/>

				{{ $pegawai->links() }}
			</div>

		</div>

	</div>
</body>
</html>
@endsection