<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use  App\Models\Producto;
use Illuminate\Support\Facades\Auth;


class ProductoController extends Controller
{
    public function index(){
        $usuarioId = Auth::id();
        $usuario = User::find($usuarioId);

        $productos = Producto::paginate(5);

        if ($usuario->perfil=="admin") {
            return view('producto.index', compact('productos'));

        }



        return view('producto.indexCliente', compact('productos'));

    }

    public function create(){

        return view('producto.create');

    }

    public function store(Request $request){

        $imagenUrl = null;

        if ($request->hasFile('urlImagen')) {


            $imagen = $request->file('urlImagen');
            $nombreImagen = time() . '_' . $imagen->getClientOriginalName();
            $imagen->move(public_path('imagenes'), $nombreImagen);
            $imagenUrl = 'imagenes/' . $nombreImagen;

        }

        $producto = new Producto();

        $producto->nombre = $request->nombre;
        $producto->descripcion = $request->descripcion;
        $producto->precio = $request->precio;
        $producto->stock = $request->stock;
        $producto->urlImagen = $imagenUrl;
        $producto->save();

        return redirect()->route('producto.index');



    }

    public function show($id){

        $producto= Producto::find($id);

        return view('producto.show', compact('producto'));


    }

    public function edit($id){

        $producto= Producto::find($id);

        return view('producto.edit', compact('producto'));

    }

    public function update(Request $request)
    {

        $id=$request->id;
        $producto = Producto::find($id);

        if ($request->hasFile('urlImagen')) {


            if ($producto->urlImagen && file_exists(public_path($producto->urlImagen))) {
                unlink(public_path($producto->urlImagen));
            }

            $imagen = $request->file('urlImagen');
            $nombreImagen = time() . '_' . $imagen->getClientOriginalName();
            $imagen->move(public_path('imagenes'), $nombreImagen);
            $imagenUrl = 'imagenes/' . $nombreImagen;

            $producto->urlImagen = $imagenUrl;
        }

        $producto->nombre = $request->nombre;
        $producto->descripcion = $request->descripcion;
        $producto->precio = $request->precio;
        $producto->stock = $request->stock;



        $producto->save();

        return redirect()->route('producto.index');
    }

    public function destroy($id)
    {
        $producto= Producto::find($id);


            if ($producto->urlImagen && file_exists(public_path($producto->urlImagen))) {
                unlink(public_path($producto->urlImagen));
            }



        $producto->delete();
        return redirect()->route('producto.index');

    }

}
