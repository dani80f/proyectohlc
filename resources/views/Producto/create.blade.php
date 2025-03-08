@extends('layout.plantilla')
@section('title', 'crear')
@section('content')

    <h1>Añade un nuevo producto</h1>

    <form action="{{route('producto.store')}}" method="post" enctype="multipart/form-data">
        @csrf

        <label>
            Nombre del Producto:
            <input type="text" name="nombre">
        </label><br>

        <label>
            Descripción del Producto:
           <textarea name="descripcion" rows="6" ></textarea>
        </label><br>

        <label>
            Precio del Producto:
            <input type="number" name="precio" step="0.01" min="0">
        </label><br>

        <label>
            Stock del Producto:
            <input type="number" name="stock" min="1">
        </label><br>

        <label>
            Imagen del Producto:
            <input type="file" name="urlImagen" accept="image/*">
        </label><br>

        <input type="submit" value="Añadir Producto">
    </form>

@endsection
