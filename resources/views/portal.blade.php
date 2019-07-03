@extends('layouts.app')

@section('content')
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>Portal Info Halaman</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity ="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="{{ asset('/css/app.css')}}">
 <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
 <style>
  body {
   font-family: 'Roboto', sans-serif;
   background-color: #ECF0F1;
  }
 </style>
</head>
<body>
 <div class="container-fluid" id="codelatte">
<!--   <nav class="navbar mb-3">
   <h3 class="mx-auto">Portal Info Halaman CODELATTE</h3>
  </nav> -->
  <div class="row justify-content-center text-center" style="margin-top: 3%;">
   <div class="card float-left col-md-3 mr-3" style="width: 20%;">
    <div class="card-body">
     <h2 class="card-title">CRUD Web</h2>
     <img class="img-fluid mb-3" src="{{ asset('/image/CRUD.png')}}" alt="Card image cap" style="height: 150px; widht: 150px;">
     <p class="card-text">Create, Remove, Delete, dan Update</p> <a href="/laravelweb/public/pegawai" class="btn btn-primary"><i class="fa fa-sign-in"></i> Kunjungi Halaman</a>
    </div>
   </div>
   <div class="card float-left col-md-3 mr-3" style="width: 20%;">
    <div class="card-body">
     <h2 class="card-title">Expor & Impor Excel</h2>
     <img class="img-fluid mb-3" src="{{ asset('/image/EXCEL2.png')}}" alt="Card image cap" style="height: 150px; widht: 150px;">
     <p class="card-text">Expor dan Impor File Excel ke Web</p> <a href="/laravelweb/public/siswa" class="btn btn-primary"><i class="fa fa-sign-in"></i> Kunjungi Halaman</a>
    </div>
   </div>
   <div class="card float-left col-md-3 mr-3" style="width: 20%;">
    <div class="card-body">
     <h2 class="card-title">Repository File</h2>
     <img class="img-fluid mb-3" src="{{ asset('/image/UPLOADFILE.jpeg')}}" alt="Card image cap" style="height: 150px; widht: 150px;">
     <p class="card-text">Upload file ke web dan download</p> <a href="/laravelweb/public/upload" class="btn btn-primary"><i class="fa fa-sign-in"></i> Kunjungi Halaman</a>
    </div>
   </div>
  </div>
  <div class="row justify-content-center mt-3 text-center">
   <div class="card float-left col-md-3 mr-3" style="width: 20%;">
    <div class="card-body">
     <h2 class="card-title">PDF Report</h2>
     <img class="img-fluid mb-3" src="{{ asset('/image/PDF.jpeg')}}" alt="Card image cap" style="height: 150px; widht: 150px;">
     <p class="card-text">Cetak File PDF</p> <a href="/laravelweb/public/karyawan" class="btn btn-primary"><i class="fa fa-sign-in"></i> Kunjungi Halaman</a>
    </div>
   </div>
   <div class="card float-left col-md-3 mr-3" style="width: 20%;">
    <div class="card-body">
     <h2 class="card-title">Mail Sender</h2>
     <img class="img-fluid mb-3" src="{{ asset('/image/MAIL.jpeg')}}" alt="Card image cap" style="height: 150px; widht: 150px;">
     <p class="card-text">Soon...</p> <a href="#" class="btn btn-primary"><i class="fa fa-sign-in"></i> Kunjungi Halaman</a>
    </div>
   </div>
   <div class="card float-left col-md-3 mr-3" style="width: 20%;">
    <div class="card-body">
     <h2 class="card-title">Graphic Chart</h2>
     <img class="img-fluid mb-3" src="{{ asset('/image/CHART.png')}}" alt="Card image cap" style="height: 150px; widht: 150px;">
     <p class="card-text">Soon...</p> <a href="#" class="btn btn-primary"><i class="fa fa-sign-in"></i> Kunjungi Halaman</a>
    </div>
   </div>
  </div>
 </div>
<!--  <p class="text-center" style="margin-top: 3%;">Copyright <i class="fa fa-copyright"></i> <a href="https://codelatte.org/">Codelatte</a> 2018 . All Rights Reserved.</p> -->
 <script>
  function changeWide(){
                document.getElementById("codelatte").className = "container-fluid";
              }
                function changeBoxed(){
                document.getElementById("codelatte").className = "container ";
              }
 </script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
 <script src="assets/js/bootstrap.min.js"></script>
</body>
</html>
@endsection