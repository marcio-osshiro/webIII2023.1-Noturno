@extends('template')

@section('conteudo')
  <h1>Listagem de Notícias</h1>
  <a href="novo" class="btn btn-primary">Novo</a>
  <table class="table table-bordered table-striped">
    <thead>
      <tr>
        <th>ID</th>
        <th>Titulo</th>
        <th>Autor</th>
        <th>Data</th>
        <th>Categoria</th>
        <th></th>
        <th></th>
      </tr>
    </thead>
    <tbody>
      @foreach($noticias as $noticia)
          <tr>
            <td>{{$noticia->id}}</td>
            <td>{{$noticia->titulo}}</td>
            <td>{{$noticia->autor->nome}}</td>
            <td>{{$noticia->data->format('d/m/Y')}}</td>
            <td>{{$noticia->categoria->descricao}}</td>
            <td><a class='btn btn-primary' href='editar/{{$noticia->id}}'>+</a></td>
            <td><a class='btn btn-danger' href='excluir/{{$noticia->id}}'>-</a></td>
          </tr>
      @endforeach

   </tbody>
  </table>
@endsection
