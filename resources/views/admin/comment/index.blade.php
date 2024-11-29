@extends('layouts.app_master_admin')
@section('content')
    <style type="text/css">
        .ratings span i {
            color: #eff0f5;
        }
        .ratings span.active i {
            color: #faca51;
        }
    </style>
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('admin.comment.index') }}">Bình Luận</a></li>
                        <li class="breadcrumb-item active">Danh sách</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <div class="container-fluid">

        <div class="row">
            <div class="col-12">
                <div class="card">
                    
                    <!-- /.card-header -->
                    <div class="card-body table-responsive p-0">
                        <table class="table table-hover text-nowrap table-bordered">
                            <thead>
                            <tr>
                                <th style="width: 10px">STT</th>
                                <th>Name</th>
                                <th>Comment </th>
                                <th>Time</th>
                                <th>Hành động</th>
                            </tr>
                            @if (isset($comments))
                                @foreach($comments as $key => $comment)
                                    <tr>
                                        <td>{{ (($comments->currentPage() - 1) * $comments->perPage()) + ( $key + 1)  }}</td>
                                        <td>{{ $comment->user->name ?? "[N\A]" }}</td>
                                        <td>{{ $comment->cmt_content ?? "[N\A]" }}</td>
                                        <td>{{ $comment->created_at }}</td>
                                        <td>
                                            <a href="{{  route('admin.comment.delete', $comment->id) }}" class="btn btn-sm btn-danger js-delete-confirm"><i class="fa fa-trash"></i></a>
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
                <!-- /.box-body -->
                <div class="box-footer">
                    {!! $comments->links() !!}
                </div>
                <!-- /.box-footer-->
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
