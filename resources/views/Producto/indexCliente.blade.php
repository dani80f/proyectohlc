@extends('layout.plantilla')
@section('title','home')
@section('content')

    <h1>Tienda informática Cliente</h1>

    <form method="post" action="{{route('logout')}}">
        @csrf
        <input type="submit" value="Cerrar Sesion">

    </form>

    <h2>Listado de productos</h2>
    <table border="1">
        <tr>
            <th>Nombre</th>
            <th>Descripcion</th>
            <th>Precio</th>
            <th>Stock</th>
            <th>Imagen</th>
            <th><a href="{{ route('carrito.index') }}" style="color: white">Carrito</a></th>
        </tr>



        @foreach($productos as $prod)

            <tr>

                <td>{{$prod->nombre}}</td>
                <td>{{$prod->descripcion}}</td>
                <td>{{$prod->precio}}€</td>
                <td>{{$prod->stock}}</td>
                <td><img src="{{ asset($prod->urlImagen) }}"  width="100"></td>
                <td>

                    <form action="{{route('carrito.store',$prod)}}" method="post">@csrf<input type="submit" value="Añadir al carrito"></form>



                </td>


            </tr>
        @endforeach


    </table>
    {{$productos->links()}}

@endsection


