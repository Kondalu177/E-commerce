<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    @include('admin.css')
  </head>
  <body>
    <div class="container-scroller">
      <!-- partial:partials/_sidebar.html -->
      @include('admin.sidebar')
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_navbar.html -->
        @include('admin.navbar')
        <!-- partial -->
        <div class="main-panel" >
        <div class="col-lg-12 grid-margin stretch-card">
                
                <div class="card">
                  <div class="card-body">
                  @if(session()->has('message'))

                    <div class="alert alert-success">
                        <button type="button" class="close" data-dismiss='alert'>x</button>
                        {{session()->get('message')}}

                    </div>
                    @endif
                    <h4 class="card-title">Products table</h4>
                    <!-- <p class="card-description"> Add class <code>.table-dark</code>
                    </p> -->
                    <div class="table-responsive">
                      <table class="table table-dark">
                        <thead>
                          <tr>
                            <th> # </th>
                            <th> Product name </th>
                            <th> Price </th>
                            <th> Quantity </th>
                            <th> Image </th>
                            <th> action </th>
                          </tr>
                        </thead>
                        <tbody>
                            @foreach($data as $product)
                          <tr>
                            <td> {{$product->id}} </td>
                            <td> {{$product->product_name}} </td>
                            <td> {{$product->price}} </td>
                            <td> {{$product->quantity}} </td>
                            <td><img height="50" width="50" src="/productimage/{{$product->image}}" alt="product image"> </td>
                            <td><a type="button" href="{{url('updateproduct',$product->id)}}" class="btn btn-outline-secondary btn-icon-text"> Edit
                                    </a>
                                <a type="button" href="{{url('deleteproduct',$product->id)}}" class="btn btn-outline-danger btn-icon-text">
                                 Delete </a>
                            </td>
                          </tr>
                          @endforeach
                         
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
        </div>
        
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    @include('admin.js')
    <!-- End custom js for this page -->
  </body>
</html>