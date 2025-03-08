@extends('layout.plantilla')
@section('title','home')
@section('content')

<h1>Carrito de compra</h1>

    <a href="{{ route('producto.index') }}">Volver a página principal</a>
    <table border="1">
        <tr>
        <th>Producto</th>
        <th>Precio por unidad</th>
        <th>Cantidad</th>
        <th>Imagen</th>
        <th>Eliminar Producto</th>
        </tr>

        @foreach($carrito as $car)
            <tr>
            <td>{{$car->nombre}}</td>
            <td>{{$car->precio}}</td>
                <td>{{$car->cantidad}}</td>

                <td><img src="{{ asset($car->imagen) }}"  width="100"></td>
                <td><form action="{{ route('carrito.destroy',$car) }}" method="post">@csrf @method('delete')<input type="submit" value="Eliminar Producto"> </form></td>
            </tr>


        @endforeach


    </table>

    <form action="{{ route('carrito.update') }}" method="post">

        @csrf
        @method('put')

        <input type="submit" value="Comprar">

    </form>

@endsection
