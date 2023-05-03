<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <title>News</title>
    <link rel="stylesheet" href="css/estilo.css">
  </head>
  <body>
    <header>
      Campo Grande Noticias
    </header>
    <nav>
      <ul>
        @foreach($categorias as $categoria)
          <li><a href="#">{{$categoria->descricao}}</a></li>
        @endforeach
      </ul>
    </nav>
    <main>
      <h1>Últimas Notícias</h1>
      <!-- carrossel -->
      <div id="carouselPrincipal" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
          @foreach($ultimasNoticias as $noticia)
          <button type="button" data-bs-target="#carouselPrincipal" data-bs-slide-to="{{$loop->index}}" class="active" aria-current="true" aria-label="Slide {{($loop->index+1)}}"></button>
          @endforeach
        </div>
        <div class="carousel-inner">
        @foreach($ultimasNoticias as $noticia)
          <div class="carousel-item {{$loop->first?'active':''}} ratio" style="--bs-aspect-ratio: 20%;">
            <img src="/storage/imagens/{{$noticia->imagem}}" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
              <h5>{{$noticia->titulo}}</h5>
              <p>{{$noticia->autor->nome}} - {{$noticia->data->format('d/m/Y')}}</p>
            </div>
          </div>
        @endforeach
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselPrincipal" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselPrincipal" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
    </main>
    <div class="artigos">
      @foreach($categorias as $categoria)
      <article>
        <h1>{{$categoria->descricao}}</h1>
        <!-- carrossel -->
        <div id="carousel-cat{{$loop->index}}" class="carousel slide" data-bs-ride="carousel">
          <div class="carousel-indicators">
            @foreach($categoria->noticias as $noticia)
            <button type="button" data-bs-target="#carousel-cat{{$loop->parent->index}}" data-bs-slide-to="{{$loop->index}}" class="active" aria-current="true" aria-label="Slide {{($loop->index+1)}}"></button>
            @endforeach
          </div>
          <div class="carousel-inner">
            @foreach($categoria->noticias as $noticia)
            <div class="carousel-item {{$loop->first?'active': ''}} ratio" style="--bs-aspect-ratio: 50%;">
              <img src="/storage/imagens/{{$noticia->imagem}}" class="d-block w-100" alt="...">
              <div class="carousel-caption d-none d-md-block">
                <h5>{{$noticia->titulo}}</h5>
                <p>{{$noticia->autor->nome}} - {{$noticia->data->format('d/m/Y')}}</p>
              </div>
            </div>
            @endforeach
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carousel-cat{{$loop->index}}" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carousel-cat{{$loop->index}}" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>

      </article>
      @endforeach
    </div>
    <footer>
      Construção de Paginas Web III @ ifms2023.a
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
  </body>
</html>
