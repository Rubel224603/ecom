@extends('backend.master')
@section('body')


    <!-- DataTable with Buttons -->
    <div class="card">
        <h4 class="fw-bold text-center text-success">Unit Information</h4>
        <div class="card-datatable table-responsive pt-0">
            <table class="datatables-basic table table-bordered">
                <thead>
                    <tr>
                        <th>Sl</th>
                        <th>id</th>
                        <th>Unit Name</th>
                        <th>Unit Code</th>
                        <th>Status</th>
                        <th>Description</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>

                @foreach($units as $unit)

                    <tr>
                        <td>{{$loop->iteration}}</td>

                        <td>{{$unit->id}}</td>

                        <td>{{$unit->name}}</td>
                        <td>{{$unit->code}}</td>

                        <td>{{$unit->status}}</td>


                        <td>{{$unit->description}}</td>
                        <td>
                            <a href="{{route('unit.edit',['id'=>$unit->id])}}" class="btn btn-success">edit</a>
                            <a href="{{route('unit.delete',['id'=>$unit->id])}}" class="btn btn-danger" onclick="return confirm('Are you sure want to delete!!')">delete</a>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
    <!-- Modal to add new record -->











@endsection
