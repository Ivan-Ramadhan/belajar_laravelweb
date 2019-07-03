<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
 
use App\Gambar;

use File;

class UploadController extends Controller
{
    public function upload()
    {
        $gambar = Gambar::get();
    	return view('upload',['gambar' => $gambar]);
    }

    public function proses_upload(Request $request)
    {
    	$this->validate($request, [
    		'file' => 'required|file|mimes:jpeg,png,jpg,pdf,docx,xlsx,xlx,csv,mp4,mp3|max:1024000000000000000000000000000000',
    		'keterangan' => 'required',

    	]);

    	// Simpan data file yang diupload ke variabel $file
    	$file = $request->file('file');

    	// // nama file
    	// echo 'File Name : '.$file->getClientOriginalName();
    	// echo '<br>';

    	// // ekstensi file
    	// echo 'File Extension: '.$file->getClientOriginalExtension();
     //    echo '<br>';
    	// // real path
    	// echo 'File Real Path:'.$file->getRealPath();
    	// echo '<br>';

    	// // ukuran file
    	// echo 'File Size: '.$file->getSize();
    	// echo '<br>';

    	// // tipe mime
    	// echo 'File Mime Type: '.$file->getMimeType();
        $nama_file = time()."_".$file->getClientOriginalName();

    	// isi dengan nama folder tempat kemana file diupload
    	$tujuan_upload = 'data_file';

    	// upload file
    	$file->move($tujuan_upload,$nama_file);

        Gambar::create([
            'file' => $nama_file,
            'keterangan' => $request->keterangan,
        ]);

        return redirect()->back();

    }

    public function hapus($id)
    {
        // hapus file

        $gambar = Gambar::where('id',$id)->first();
  //download  return response()->download('data_file/'.$gambar->file);
        File::delete('data_file/'.$gambar->file);

        // hapus data
        Gambar::where('id',$id)->delete();

       return redirect()->back();



    }

    public function download($id)
    {
        $gambar = Gambar::where('id',$id)->first();

        return response()->download('data_file/'.$gambar->file);
    }


}
