<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\product;
use App\Models\confirmorders;

class AdminController extends Controller
{

    public function product()
    {
        return view('admin.product');
    }
    public function uploadproduct(Request $request)
    {
        $data =new product;
        $image = $request->image;
        $imagename = time().'.'.$image->getClientOriginalExtension();
        $request->image->move('productimage',$imagename);

        $data->image=$imagename;

        $data->product_name= $request->product_name;
        $data->price= $request->price;
        $data->description= $request->description;
        $data->quantity= $request->quantity;

        $data->save();

        return redirect()->back()->with('message','Product added Sucessfully');
    }

    public function getproduct()
    {
        $data = product::all();
        return view('admin.producttable',compact('data'));
    }
    public function deleteproduct($id)
    {
        $data = product::find($id);
        $data-> delete();
        return redirect()->back()->with('message','Product Deleted');

        
    }
    public function updateproduct($id)
    {
        $data = product::find($id);
        
        return view('admin.updateproduct',compact('data'));;

        
    }
    public function updateproductdata(Request $request,$id)
    {
        $data = product::find($id);
        $image = $request->image;
        if($image)
        {
        $imagename = time().'.'.$image->getClientOriginalExtension();
        $request->image->move('productimage',$imagename);

        $data->image=$imagename;
        }

        $data->product_name= $request->product_name;
        $data->price= $request->price;
        $data->description= $request->description;
        $data->quantity= $request->quantity;

        $data->save();

        return redirect()->back()->with('message','Updated Product Sucessfully');
        
       

        
    }
    public function getoreders()
    {
        $data = confirmorders::all();
        return view('admin.confrimorders',compact('data'));
    }
}
