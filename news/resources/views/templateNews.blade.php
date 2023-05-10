<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <title>News</title>
    <link rel="stylesheet" href="/css/estilo.css">
  </head>
  <body>
    <header>

      <a style="text-decoration: none;color: yellow;" href="{{url('/news')}}">Campo Grande Noticias</a>
    </header>
    <nav>
      <ul>
        @foreach($categorias as $categoria)
          <li><a href="/news/categoria/{{$categoria->id}}">{{$categoria->descricao}}</a></li>
        @endforeach
      </ul>
    </nav>

    @yield('conteudo')

    <footer>
      Construção de Paginas Web III @ ifms2023.a
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
  </body>
</html>
