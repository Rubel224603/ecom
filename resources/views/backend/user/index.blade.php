@extends('backend.master')
@section('body')

    <!-- DataTable with Buttons -->
    <div class="card">
        <h4 class="fw-bold text-center text-success">User Admin Information</h4>
        <div class="card-datatable table-responsive pt-0">
            <table class="datatables-basic table table-bordered">
                <thead>
                <tr>
                    <th>Sl</th>

                    <th>Name</th>
                    <th>Email</th>
                    <th>Password</th>


                    <th>Image</th>

                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                @foreach($users as $user)
                    <tr>
                        <td>{{$loop->iteration}}</td>

                        <td>{{$user->name}}</td>
                        <td>{{$user->email}}</td>
                        <td>{{$user->mobile}}</td>


                        <td><img src="{{asset($user['profile_photo_path'])}}" alt="category_image" height="100x" width="100px"></td>

                        <td>
                            <a href="{{route('user.edit', $user->id)}}" class="btn btn-success btn-sm">
                                Edit
                            </a>
                            <form action="{{route('user.destroy', $user->id)}}" method="POST">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger btn-sm {{$user->id == 1 ? 'disabled' : ''}}" onclick="return confirm('Are you sure to delete this !')">Delete</button>
                            </form>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
    <!-- Modal to add new record -->


@endsection
