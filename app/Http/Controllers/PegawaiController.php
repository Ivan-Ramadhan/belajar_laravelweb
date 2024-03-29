<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
// use App\pegawai;

class PegawaiController extends Controller
{
    public function index()
    {
    //	return pegawai::select("*")->get();
    //	return "hallo";
    	// ambil data dari tabel pegawai
    	$pegawai = DB::table('pegawai')->paginate(10);

    //	return $pegawai;
    	// kirim data ke view index
    	return view('index',['pegawai' => $pegawai]);

    }

    // method view form input tambah
	public function tambah()
	{
		//memanggil view tambah
		return view('tambah');
	}

	// method untuk insert data ke table pegawai
	public function store(Request $request)
	{
		// insert data ke table pegawai
		DB::table('pegawai')->insert([
			'pegawai_nama' => $request->nama,
			'pegawai_jabatan' => $request->jabatan,
			'pegawai_umur' => $request->umur,
			'pegawai_alamat' => $request->alamat

		]);
		// alihkan halaman ke halaman pegawai
		return redirect('/pegawai');
	}

	public function edit($id)
	{
		// ambil data pegawai berdasarkan id yang dipilih
		$pegawai = DB::table('pegawai')->where('pegawai_id',$id)->get();
		// passing data pegawai yang didapat ke view edit.blade.php
		return view('edit',['pegawai' => $pegawai]);
	}

	public function update(Request $request)
	{
		// update data pegawai
		DB::table('pegawai')->where('pegawai_id',$request->id)->update([
			'pegawai_nama' => $request->nama,
			'pegawai_jabatan' => $request->jabatan,
			'pegawai_umur' => $request->umur,
			'pegawai_alamat' => $request->alamat

		]);
		// redirect halaman ke halaman pegawai
		return redirect('/pegawai');
	}

	//function hapus data pegawai
	public function hapus($id)
	{
		// hapus data pegawai berdasarkan id yang dipilih
		DB::table('pegawai')->where('pegawai_id',$id)->delete();

		// redirect halaman ke halaman pegawai
		return redirect('/pegawai');


	}

	public function cari(Request $request)
	{
		// menangkap data pencarian
		$cari = $request->cari;

		// mengambil data dari table pegawau sesuai pencarian data
		$pegawai = DB::table('pegawai')->where('pegawai_nama','like',"%".$cari."%")->paginate();

		// mengirim data pegawai ke view index
		return view('index',['pegawai'=>$pegawai]);

	}


}
