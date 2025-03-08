@extends('layout.plantilla')
@section('title','show '. $producto->nombre)
@section('content')

<h1>Información de {{$producto->nombre}}</h1>
<a href="{{route('producto.index')}}">Volver a pagina principal</a>


    <img src="{{ asset($producto->urlImagen) }}"  width="300">
    <table border="1">
        <tr>
        <th>ID</th>
        <th>Nomnbre</th>
        <th>Descripcion</th>
        <th>Precio</th>
        <th>Stock</th>
        <th>Fecha de creación del producto</th>
        <th>Última actualización</th>
        </tr>
        <tr>

            <td>{{$producto->id}}</td>
            <td>{{$producto->nombre}}</td>
            <td>{{$producto->descripcion}}</td>
            <td>{{$producto->precio}}</td>
            <td>{{$producto->stock}}</td>
            <td>{{$producto->created_at}}</td>
            <td>{{$producto->updated_at}}</td>


        </tr>
    </table>

@endsection
