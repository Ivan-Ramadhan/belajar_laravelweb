<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

// CRUD ROUTE
Route::get('/pegawai','PegawaiController@index');

// tambah pegawai
Route::get('/pegawai/tambah','PegawaiController@tambah');

// post input
Route::post('/pegawai/store','PegawaiController@store');

// edit data pegawai
Route::get('pegawai/edit/{id}','PegawaiController@edit');

// update data pegawai
Route::post('/pegawai/update','PegawaiController@update');

// hapus data pegawai
Route::get('/pegawai/hapus/{id}','PegawaiController@hapus');

// Cari Pegawai
Route::get('/pegawai/cari','PegawaiController@cari');

 
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/siswa','SiswaController@index');
Route::get('/siswa/export_excel','SiswaController@export_excel');
Route::post('/siswa/import_excel','SiswaController@import_excel');
Route::get('/siswa/testview','SiswaController@testview');

Route::get('/portal','PortalController@index');

Route::get('/upload', 'UploadController@upload');
Route::post('/upload/proses', 'UploadController@proses_upload');
Route::get('/upload/hapus/{id}', 'UploadController@hapus');
Route::get('/upload/download/{id}', 'UploadController@download');

Route::get('/karyawan','KaryawanController@index');
Route::get('/karyawan/cetak_pdf','KaryawanController@cetak_pdf');
