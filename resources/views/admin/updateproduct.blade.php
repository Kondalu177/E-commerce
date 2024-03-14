<!DOCTYPE html>
<html lang="en">
  <head>
    <base href="/public">
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
        <div class="col-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Update Products</h4>

                    @if(session()->has('message'))

                    <div class="alert alert-success">
                        <button type="button" class="close" data-dismiss='alert'>x</button>
                        {{session()->get('message')}}

                    </div>
                    @endif
                    
                    <form class="forms-sample" action="{{url('updateproductdata', $data->id)}}" method="post" enctype="multipart/form-data">
                        @csrf
                      <div class="form-group">
                        <label for="exampleInputName1">Product Name</label>
                        <input type="text" name="product_name" class="form-control" id="exampleInputName1" value='{{$data->product_name}}'>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail3">Price</label>
                        <input type="text" name="price" class="form-control" id="exampleInputEmail3" value='{{$data->price}}'>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputPassword4">Description</label>
                        <input type="text" name="description" class="form-control" id="exampleInputPassword4" value='{{$data->description}}'>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputCity1">Quantity</label>
                        <input type="text" name="quantity" class="form-control" id="exampleInputCity1" value='{{$data->quantity}}'>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputCity1">Old Image</label><br>
                        <img height='100' width='100' src="/productimage/{{$data->image}}">
                      </div>
                      <div class="form-group">
                        <label>Chnage the Image</label> 
                        <div class="input-group col-xs-12">
                          <input type="file" name="image" class="form-control file-upload-info"  placeholder="Upload Image">
                          
                        </div>
                      </div>
                      <button type="submit" class="btn btn-primary mr-2">Submit</button>
                      
                    </form>
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