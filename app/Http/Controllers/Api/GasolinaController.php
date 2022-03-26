<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\NivGasolina;

class GasolinaController extends Controller
{
    public function index() {
        $nivelesGasolina = NivGasolina::select('id', 'nivel')->get();
        return $nivelesGasolina;
    }
}
