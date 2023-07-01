@extends('layouts.mainlayout')

@section('title', 'Book')

@section('content')
    <h1>Book List</h1>

    <div class="my-5 d-flex justify-content-end">
        <a href="{{ url('book-deleted') }}" class="btn btn-success me-3">View Deleted Data</a>
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
                    <th>No.</th>
                    <th>Code</th>
                    <th>Title</th>
                    <th>Category</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($books as $item)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $item->book_code }}</td>
                        <td>{{ $item->title }}</td>
                        <td>
                            @foreach ($item->categories as $category)
                                {{ $category->name }} <br>
                            @endforeach
                        </td>
                        <td>{{ $item->status }}</td>
                        <td>
                            <a href="{{ url('book-edit/' . $item->slug) }}" class="btn btn-dark">edit</a>
                            <a href="{{ url('book-detail') }}" class="btn btn-secondary">Detail</a>
                            <a href="{{ url('book-delete/' . $item->slug) }}" class="btn btn-danger">delete</a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection
