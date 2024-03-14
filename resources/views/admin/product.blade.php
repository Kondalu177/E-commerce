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
        <div class="col-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Add Products</h4>

                    @if(session()->has('message'))

                    <div class="alert alert-success">
                        <button type="button" class="close" data-dismiss='alert'>x</button>
                        {{session()->get('message')}}

                    </div>
                    @endif
                    
                    <form class="forms-sample" action="{{url('uploadproduct')}}" method="post" enctype="multipart/form-data">
                        @csrf
                      <div class="form-group">
                        <label for="exampleInputName1">Product Name</label>
                        <input type="text" name="product_name" class="form-control" id="exampleInputName1" placeholder="Product Name">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail3">Price</label>
                        <input type="text" name="price" class="form-control" id="exampleInputEmail3" placeholder="price">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputPassword4">Description</label>
                        <input type="text" name="description" class="form-control" id="exampleInputPassword4" placeholder="Description">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputCity1">Quantity</label>
                        <input type="text" name="quantity" class="form-control" id="exampleInputCity1" placeholder="Quantity">
                      </div>
                      
                      <div class="form-group">
                        <label>File upload</label> 
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