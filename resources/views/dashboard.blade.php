@extends('layouts.mainlayout')

@section('title', 'Dashboard')

@section('content')

    <h1>WELCOME, {{ Auth::user()->username }}</h1>
    <div class="row mt-5">
        <div class="col-lg-4">
            <div class="card-data book">
                <div class="row">
                    <div class="col-6"><i class="bi bi-journal-bookmark"></i></div>
                    <div class="col-6 d-flex flex-column justify-content-center align-items-end">
                        <div class="card-desc">Books</div>
                        <div class="card-count">{{ $book_count }}</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-4">
            <div class="card-data category">
                <div class="row">
                    <div class="col-6"><i class="bi bi-list-task"></i></div>
                    <div class="col-6 d-flex flex-column justify-content-center align-items-end">
                        <div class="card-desc">Categories</div>
                        <div class="card-count">{{ $category_count }}</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-4">
            <div class="card-data user">
                <div class="row">
                    <div class="col-6"><i class="bi bi-people"></i></div>
                    <div class="col-6 d-flex flex-column justify-content-center align-items-end">
                        <div class="card-desc">Users</div>
                        <div class="card-count">{{ $user_count }}</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="mt-5">
        <h2>Rent Log</h2>

        <table class="table">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>User</th>
                    <th>Book Title</th>
                    <th>Rent Date</th>
                    <th>Return Date</th>
                    <th>Actual Return Date</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                {{-- @foreach ($rentlog as $item)
            <tr class="{{ $item->actual_return_date == null ? '' : ($item->return_date < 
            $item->actual_return_date ? 'text-bg-danger' : 'text-bg-success') }}">
                <td>{{ $loop->iteration }}</td>
                <td>{{ $item->user->username }}</td>
                <td>{{ $item->book->title }}</td>
                <td>{{ $item->rent_date }}</td>
                <td>{{ $item->return_date }}</td>
                <td>{{ $item->actual_return_date }}</td>
                <td>Null</td>
            </tr>
            @endforeach --}}
            </tbody>
        </table>
    </div>

@endsection
{{-- <tr>
        <td colspan="7" style="text-align: center">No DATA</td>
    </tr> --}}
