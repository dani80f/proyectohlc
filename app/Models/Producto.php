<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Producto extends Model
{
    protected $table = 'producto';


    protected $fillable = [
        'nombre',
        'descripcion',
        'precio',
        'stock',
        'urlImagen',
    ];
}
