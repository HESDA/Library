@extends('layouts.mainlayout')

@section('title', 'Users')

@section('content')
    <h1>List User</h1>

    <div class="mt-5 d-flex justify-content-end">
        <a href="{{ url('user-banned') }}" class="btn btn-success me-3">View Banned Users</a>
        <a href="{{ url('registered-users') }}" class="btn btn-primary">New Registered User</a>
    </div>

    <div class="mt-5">
        @if (session('status'))
            <div class="alert alert-success">
                {{ session('status') }}
            </div>
        @endif
    </div>

    <div class="my-5">
        <table class="table">
            <thead class="table-dark">
                <tr>
                    <th>No.</th>
                    <th>Username</th>
                    <th>Phone</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($users as $item)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $item->username }}</td>
                        <td>
                            @if ($item->phone)
                                {{ $item->phone }}
                            @else
                                -
                            @endif
                        </td>
                        <td>
                            <a href="{{ url('user-detail/' . $item->slug) }}" class="btn btn-dark">detail</a>
                            <a href="{{ url('user-ban/' . $item->slug) }}" class="btn btn-danger">ban user</a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection
