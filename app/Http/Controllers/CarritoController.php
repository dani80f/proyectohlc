<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use  App\Models\Carrito;
use  App\Models\Producto;
use Illuminate\Support\Facades\Auth;

class CarritoController extends Controller
{
    public function index(){
        $usuarioId = Auth::id();
        $carrito = Carrito::where('idCliente', $usuarioId)->get();
        //$usuario = User::find($usuarioId);

        $productos = Producto::paginate(5);



        return view('carrito.index', compact('productos', 'carrito'));

    }

    public function store($id)
    {
        $usuarioId = Auth::id();
        $producto=Producto::find($id);


        if (Carrito::where('idProducto', $id)->where('idCliente', $usuarioId)->exists()) {

            $carrito=Carrito::where('idProducto', $id)->where('idCliente', $usuarioId)->first();
            $carrito->cantidad=$carrito->cantidad+1;
            $carrito->save();


        }else{

            $carrito=new Carrito();


            $carrito->idCliente=$usuarioId;
            $carrito->idProducto=$id;
            $carrito->cantidad=1;
            $carrito->imagen=$producto->urlImagen;
            $carrito->nombre=$producto->nombre;
            $carrito->precio=$producto->precio;
            $carrito->save();


        }

        return redirect()->route('producto.index');





    }

    public function destroy($id){

        $carrito=Carrito::find($id);
        $carrito->delete();
        return redirect()->route('carrito.index');

    }

    public function update(){

        $id=Auth::id();

        $carrito=Carrito::where('idCliente',$id)->get();
        $productos=Producto::all();

        foreach ($carrito as $car){

            foreach ($productos as $producto){


                if($car->idProducto===$producto->id){

                    if ($car->cantidad>$producto->stock){

                        break;

                    }else{

                        $producto->stock=$producto->stock-$car->cantidad;
                        $producto->save();
                        $car->delete();

                    }

                }

            }

        }

        return redirect()->route('carrito.index');


    }


}
