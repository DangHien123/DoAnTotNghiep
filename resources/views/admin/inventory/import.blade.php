@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a>
                        </li>
                        <li class="breadcrumb-item"><a href="#">Nhập Kho</a></li>
                        {{-- <li class="breadcrumb-item active">Danh sách</li> --}}
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
	<div class="container-fluid">
	    <div class="row">
		   <div class="col-12">
			  <div class="card">
				 <div class="card-header">
					<div class="card-tools">
					    <div class="btn-group">
						   <a href="{{ route('admin.warehousing.add') }}"><button type="button" class="btn btn-block btn-info"><i class="fa fa-plus"></i> Tạo mới</button></a>
					    </div>
					</div>
				 </div>
                {{-- <div class="box-body">
                    <div class="col-md-12">
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th>Ngày</th>
                                    <th>Số lượng</th>
                                    <th>Tổng tiền</th>
                                    <th>#</th>
                                </tr>

                            </tbody>
                            @if (isset($warehouses))
                                @foreach ($warehouses as $item)
                                    <tr>
                                        <td>{{ $item->created_at }}</td>
                                        <td>{{ $item->w_qty }}</td>
                                        <td>{{ number_format($item->w_price, 0, ',', '.') }} VNĐ</td>
                                        <td>
                                            <a href="{{ route('admin.warehousing.update', $item->id) }}"
                                                class="btn btn-xs btn-primary"><i class="fa fa-pencil"></i> Edit</a>
                                            <a href="{{ route('admin.warehousing.delete', $item->id) }}"
                                                class="btn btn-xs btn-danger js-delete-confirm"><i class="fa fa-trash"></i>
                                                Delete</a>
                                        </td>
                                    </tr>
                                @endforeach
                            @endif
                        </table>
                    </div>
                </div> --}}
			 <div class="card-body table-responsive p-0">
				<table class="table table-hover text-nowrap table-bordered">
				    <thead>
					   <tr>
						  <th>Ngày</th>
						  <th>Số lượng</th>
						  <th>Thành Tiền</th>
						  <th class=" text-center">Hành động</th>
					   </tr>
				    </thead>
				    <tbody>
					@if (isset($warehouses))
					@foreach ($warehouses as $item)
							 <tr>
								
								<td>{{ $item->created_at }}</td>
				
								<td>{{ $item->w_qty }}</td>
								<td>{{ number_format($item->w_price, 0, ',', '.') }} VNĐ</td>
								<td class="text-center">
								    <a class="btn btn-primary btn-sm" href="{{ route('admin.warehousing.update', $item->id) }}">
									   <i class="fas fa-pencil-alt"></i>
								    </a>
								    <a class="btn btn-danger btn-sm btn-delete btn-confirm-delete" href="{{ route('admin.warehousing.delete', $item->id) }}">
									   <i class="fas fa-trash"></i>
								    </a>
								</td>
							 </tr>
							 @endforeach
							 @endif
				    </tbody>
				</table>
			
			 </div>
			
		  </div>
		 
	   </div>
            </div>
            <!-- /.box -->
        </div>
    </section>
    <!-- /.content -->
@stop
