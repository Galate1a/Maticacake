<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Validation\ValidatesRequests; // Tambahkan ini
use Illuminate\Foundation\Auth\Access\AuthorizesRequests; // Tambahkan ini

abstract class Controller
{
    use AuthorizesRequests, ValidatesRequests; // Gunakan trait ini di sini
}