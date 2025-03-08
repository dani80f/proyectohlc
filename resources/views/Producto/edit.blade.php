@extends('layout.plantilla')
@section('title','edit '. $producto->nombre)
@section('content')
    <a href="{{route('producto.index')}}">Volver a pagina principal</a>

    <form action="{{route('producto.update')}}" method="post"  enctype="multipart/form-data">

        @csrf
        @method('put')

        <input type="number" value="{{$producto->id}}" readonly name="id"><br>

        <label>
            Nombre del Producto:
            <input type="text" name="nombre" value="{{$producto->nombre}}">
        </label><br>

        <label>
            Descripción del Producto:
            <textarea name="descripcion" rows="6" >{{$producto->nombre}}</textarea>
        </label><br>

        <label>
            Precio del Producto:
            <input type="number" name="precio" step="0.01" min="0" value="{{$producto->precio}}">
        </label><br>

        <label>
            Stock del Producto:
            <input type="number" name="stock" min="1" value="{{$producto->stock}}">
        </label><br>

        <label>
            Imagen del Producto:
            <input type="file" name="urlImagen" accept="image/*">
        </label><br>

        @if($producto->urlImagen)
            <label>
                Imagen Actual:
                <img src="{{ asset($producto->urlImagen) }}" style="max-width: 200px;">
            </label><br>
        @endif

        <input type="submit" value="Actualizar Producto">

    </form>


@endsection
