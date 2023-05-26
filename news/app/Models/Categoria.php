<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Noticia;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Categoria extends Model
{
    use HasFactory;
    protected $table = 'categoria';
    public $timestamps = false;

    public function noticias(): HasMany
    {
        return $this->hasMany(Noticia::class)->orderByRaw('data desc')->take(3);
    }

}
