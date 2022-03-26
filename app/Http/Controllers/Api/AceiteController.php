<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\NivAceite;

class AceiteController extends Controller
{
    public function index() {
        $nivelesAceite = NivAceite::select('id', 'nivel')->get();
        return $nivelesAceite;
    }
}
