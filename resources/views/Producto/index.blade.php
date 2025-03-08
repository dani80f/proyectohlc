@extends('layout.plantilla')
@section('title','home')
@section('content')

    <h1>Tienda informática</h1>

    <a href="{{route('producto.create')}}">Añadir un nuevo producto</a>

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
            <th>Acciones</th>
        </tr>



            @foreach($productos as $prod)

            <tr>

                <td>{{$prod->nombre}}</td>
                <td>{{$prod->descripcion}}</td>
                <td>{{$prod->precio}}€</td>
                <td>{{$prod->stock}}</td>
                <td><a href="{{route('producto.show',$prod)}}"><img src="{{ asset($prod->urlImagen) }}"  width="100"></a></td>
                <td>

                    <form action="{{route('producto.edit',$prod)}}" method="get"><input type="submit" value="Modificar Producto"></form>
                    <form action="{{route('producto.destroy',$prod)}}" method="post">@csrf @method('delete')<input type="submit" value="Borrar producto"></form>


                </td>


            </tr>
            @endforeach


    </table>
    {{$productos->links()}}

@endsection


