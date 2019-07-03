<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Karyawan;

use PDF;

class KaryawanController extends Controller
{
    //
	public function index()
	{
		$karyawan = Karyawan::all();
		return view('karyawan',['karyawan'=>$karyawan]);
	}

	public function cetak_pdf()
	{
		$karyawan = Karyawan::all();

		$pdf = PDF::loadview('karyawan_pdf',['karyawan'=>$karyawan]);
		return $pdf->download('laporan-karyawan-pdf');
	}


}
