<?php

namespace App\Http\Controllers;

use App\Models\Hasil;
use App\Models\Criteria;
use App\Models\Alternative;
use App\Models\Normalisasi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

class DecisionController extends Controller
{
    
    public function showAlternatif()
    {
        $alternatives = Alternative::all();
        return view('saw-alternatif', ['alternatives' => $alternatives]);
    }
    
    public function showKriteria()
    {
        return view ('saw-kriteria', ['criteria' => Criteria::get()]);
    }
    
    public function showNormal()
    {
        return view ('saw-normalisasi', ['normal' => Normalisasi::get()]);
    }
    
    public function showHasil()
    {
        return view ('saw-hasil', ['hasil' => Hasil::orderByDesc('hasil')->get()]);
    }
}