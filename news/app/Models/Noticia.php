<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use App\Models\Categoria;
use App\Models\Autor;

class Noticia extends Model
{
    use HasFactory;
    protected $table = 'noticia';
    public $timestamps = false;
    protected $casts = [
        'data' => 'datetime:Y-m-d',
    ];
    public function categoria(): BelongsTo
    {
       return $this->belongsTo(Categoria::class);
    }

    public function autor(): BelongsTo
    {
       return $this->belongsTo(Autor::class);
    }
}
