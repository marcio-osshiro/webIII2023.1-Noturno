@extends('template')

@section('conteudo')
  <h1>Listagem de Autores</h1>
  <a href="novo" class="btn btn-primary">Novo</a>
  <table class="table table-bordered table-striped">
    <thead>
      <tr>
        <th>ID</th>
        <th>Figura</th>
        <th>Nome</th>
        <th>E-mail</th>
        <th></th>
        <th></th>
        <th></th>
      </tr>
    </thead>
    <tbody>
      @foreach($autores as $autor)
          <tr>
            <td>{{$autor->id}}</td>
            <td>
              @if ($autor->imagem != "")
                <img style="width: 50px;" src="/storage/imagens/{{$autor->imagem}}">
              @endif            </td>
            <td>{{$autor->nome}}</td>
            <td>{{$autor->email}}</td>
            <td><a class='btn btn-primary' href='editar/{{$autor->id}}'>+</a></td>
            <td><a class='btn btn-danger' href='excluir/{{$autor->id}}'>-</a></td>
            <td><a class='btn btn-primary' href='mensagem/{{$autor->id}}'>Mensagem</a></td>
          </tr>
      @endforeach

   </tbody>
  </table>
@endsection
