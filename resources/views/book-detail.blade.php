@extends('layouts.mainlayout')

@section('title', 'Book Detail')

@section('content')
    <h1>Book Detail</h1>

    <div class="my-5 d-flex justify-content-end">
        <a href="/books" class="btn btn-dark me-3">Back</a>
    </div>
    <div class="my-5">
        <table class="table">
            <thead class="table-dark">
                <tr>
                    <th>No.</th>
                    <th>Code</th>
                    <th>Title</th>
                    <th>Category</th>
                    <th>Author</th>
                    <th>Rating</th>
                    <th>Price</th>
                    <th>Pages</th>
                    <th>Publication Year</th>
                    <th>Rent Duration</th>
                    <th>Topic Suitability</th>
                    <th>Status</th>
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
                        <td>{{ $item->author }}</td>
                        <td>{{ $item->rating }}</td>
                        <td>{{ $item->price }}</td>
                        <td>{{ $item->pages }}</td>
                        <td>{{ $item->publication_year }}</td>
                        <td>{{ $item->rent_duration }}</td>
                        <td>{{ $item->topic_suitability }}</td>

                        <td>{{ $item->status }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection
