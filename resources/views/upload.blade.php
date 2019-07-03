<!DOCTYPE html>
<html>
<head>
	<title> Upload File Laravel</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<!-- 	<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script> -->

</head>
<body>
	<div class="row"> 
		<div class="container"> 
			<div class="card">
				<h2 class="text-center my-5"> Repository File Laravel </h2>
				<hr>
				<div class="col-xl-10 mx-auto my-5">

					@if(count($errors)>0)
					<div class="alert alert-danger">
						@foreach($error->all() as $error)
						{{ $error }} <br/>
						@endforeach 
						
					</div>
					@endif


				<!-- Modal Upload -->
				<div class="modal fade" id="uploadFile" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog" role="document">
						<form action="/laravelweb/public/upload/proses" method="POST" enctype="multipart/form-data">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-tittle" id="exampleModalLabel">Upload File</h5>
								</div>
								<div class="modal-body">
									{{ csrf_field() }}

									<div class="form-group">
						

											<b>Pilih file yang akan diupload :</b><br/>
					
										<br/>
										&nbsp<input type="file" name="file" required="required">

									</div>

									<div class="form-group">
										<b>Keterangan :</b>					
										<textarea class="form-control" name="keterangan"></textarea>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
										<button type="submit" class="btn btn-success">Upload</button>
									</div>
								</div>
							</div>
							</form>
						</div>
					</div>


<!-- 
					<div class="card"> -->
<!-- 					<form action="/laravelweb/public/upload/proses" method="POST" enctype="multipart/form-data">
						{{ csrf_field() }}

						<div class="form-group">
							<div class="card-header">

							<b>File Upload</b><br/>
						</div>
							<br/>
							&nbsp<input type="file" name="file" required="required">

						</div>

						<div class="form-group">
							<b>Keterangan</b>					
							<textarea class="form-control" name="keterangan"></textarea>
						</div>
						&nbsp<input type="submit" value="Upload" class="btn btn-success">
					</form>
					<br/>
				</div> -->

			<h4 class="my-5">Data<button type="button" class="btn btn-success mr-5 pull-right" data-toggle="modal" data-target="#uploadFile">
					<i class="fa fa-upload"></i> Upload File
				</button></h4>
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<!-- <th width="1%">File</th> -->
								<th width="1%" >File</th>
								<th width="40%">Nama</th>
								<th>Keteragan</th>
								<th width="30%">Opsi</th>

							</tr>

						</thead>	
						<tbody>
							@foreach($gambar as $g)
							<tr>
								@if(stripos($g->file, "xlsx") !== FALSE)
									<td><img width="50px" src="{{ url('/data_file/EXCEL2.png') }}"></td>
								@elseif(stripos($g->file, "docx") !== FALSE)
									<td><img width="50px" src="{{ url('/data_file/WORD.jpeg') }}"></td>
								@else
									<td><img width="50px" src="{{ url('/data_file/'.$g->file) }}"></td>
								@endif
								<td>{{ $g->file }}</td>
								<td>{{$g->keterangan}}</td>
								<td><a class="btn btn-danger" href="/laravelweb/public/upload/hapus/{{ $g->id }}"><i class="fa fa-trash-o"></i> Hapus</a>

								<a class="btn btn-primary" href="/laravelweb/public/upload/download/{{ $g->id }}"><i class="fa fa-download"></i> Download</a>
								</td>
							</tr>
							@endforeach
						</tbody>


					</table>
		

				</div>



			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>