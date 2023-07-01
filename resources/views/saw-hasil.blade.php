@extends('layouts.mainlayout')

@section('title', 'Book')

@section('content')
    <h1>Final Rank SPK</h1>

    <div class="my-5 d-flex justify-content-end">
        <a href="{{ url('book-add') }}" class="btn btn-primary">Add Data</a>
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
                    <th>No</th>
                    <th>Title</th>
                    <th>Book Code</th>
                    <th>Hasil</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($hasil as $item)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $item->title }}</td>
                        <td>{{ $item->book_code }}</td>
                        <td>{{ $item->hasil }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection
