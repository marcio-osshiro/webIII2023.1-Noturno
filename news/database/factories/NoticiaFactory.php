<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Categoria;
use App\Models\Autor;
/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Noticia>
 */
class NoticiaFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
      $caminho = storage_path().'/app/public/imagens/';
      $imagem = $this->faker->image($caminho, 640, 480, 'animals', false, true);
      return [
              'titulo' => $this->faker->sentence,
              'descricao' => $this->faker->realText,
              'data' => $this->faker->date,
              'autor_id' => Autor::orderbyRaw('RANDOM()')->take(1)->first()->id,
              'categoria_id' => Categoria::orderbyRaw('RANDOM()')->take(1)->first()->id,
              'imagem' => $imagem,
          ];
    }
}
