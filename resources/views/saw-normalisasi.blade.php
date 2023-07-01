@extends('layouts.mainlayout')

@section('title', 'Book')

@section('content')
    <h1>Normalisasi SAW</h1>

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
                    <th>Rating</th>
                    <th>Price</th>
                    <th>Pages</th>
                    <th>Publication Year</th>
                    <th>Rent Duration</th>
                    <th>Topic Suitability</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($normal as $item)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $item->title }}</td>
                        <td>{{ $item->book_code }}</td>
                        <td>{{ $item->rating }}</td>
                        <td>{{ $item->price }}</td>
                        <td>{{ $item->pages }}</td>
                        <td>{{ $item->publication_year }}</td>
                        <td>{{ $item->rent_duration }}</td>
                        <td>{{ $item->topic_suitability }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection
