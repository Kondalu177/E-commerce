<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Models\product;
use App\Models\orders;
use App\Models\confirmorders;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $data = product::all();
        $data = product::paginate(3);
                $user = auth()->user();
                $count= orders::where('phone',$user->phone)->count();
        return view('user.user',compact('data','count') );
    }
    public function user()
    {
        $data = product::all();
        $data = product::paginate(3);
                $user = auth()->user();
                $count= orders::where('phone',$user->phone)->count();

        return view('user.user',compact('data','count') );
    }


    public function addcart(Request $request,$id)
    {
        $data = product::find($id);
        
        if(Auth::id())
        {
            $user = auth()->user();
            $product = product::find($id);
            $orders =new orders;
            
            $orders->name=$user->name;
            $orders->phone=$user->phone;
            $orders->address=$user->address;
            $orders->product_name=$product->product_name;
            $orders->price=$product->price;
            $orders->quantity=$request->quantity;

            $orders->save();


            return redirect()->back()->with('message','Product added Sucessfully');

        }
        else
        {
            $data = product::all();
        $data = product::paginate(3);
                $user = auth()->user();
                $count= orders::where('phone',$user->phone)->count();

        return view('user.user',compact('data','count') );
        
    }
        
    }
    public function showcart()
    {
        
        $data = product::paginate(3);
                
                $user = auth()->user();
                $orders = orders::where('phone',$user->phone)->get();
                $count= orders::where('phone',$user->phone)->count();

        return view('user.showcart',compact('count','orders') );
    }
    public function confrimorder(Request $request)
    {
                $user = auth()->user();
                $name = $user->name;
                $phone = $user->phone;
                $email = $user->email;
                $address = $user->address;
                $city = $user->city;
                $zipcode = $user->zipcode;

            foreach($request->productname as $key=>$productname)
            {
                    $confrimorder =new confirmorders;

                    $confrimorder->product_name=$request->productname[$key];
                    $confrimorder->quantity=$request->quantity[$key];
                    $confrimorder->price=$request->price[$key];
                    $confrimorder->name = $name;
                    $confrimorder->phone = $phone;
                    $confrimorder->email = $email;
                    $confrimorder->shipping_address1 = $address;
                    $confrimorder->shipping_address2 = $address;
                    $confrimorder->shipping_address3 = $address;
                    $confrimorder->city = $city;
                    $confrimorder->zipcode = $zipcode;

                    $confrimorder->save();
                }

                return redirect()->back();
    }

    
}
