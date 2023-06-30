@extends('layouts.mainlayout')

@section('title', 'Edit Book')

@section('content')

    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />

    <h1>Edit Book</h1>
    <div class="my-5 d-flex justify-content-end">
        <a href="/books" class="btn btn-dark me-3">Back</a>
    </div>
    <div class="mt-5 w-50">
        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        <form action="/book-edit/{{ $book->slug }}" method="post" enctype="multipart/form-data">
            @csrf
            <div class="mb-3">
                <label for="code" class="form-label">Code</label>
                <input type="text" name="book_code" id="code" class="form-control" placeholder="Book's Code"
                    value="{{ $book->book_code }}">
            </div>

            <div class="mb-3">
                <label for="title" class="form-label">Title</label>
                <input type="text" name="title" id="title" class="form-control" placeholder="Book's Title"
                    value="{{ $book->title }}">
            </div>

            <div class="mb-3">
                <label for="author" class="form-label">author</label>
                <input type="text" name="author" id="author" class="form-control" placeholder="Book's author"
                    value="{{ $book->author }}">
            </div>
            <div class="mb-3">
                <label for="rating" class="form-label">rating</label>
                <input type="number" name="rating" id="rating" class="form-control" min="1" max="5"
                    step="0.01" value="{{ $book->rating }}">
            </div>
            <div class="mb-3">
                <label for="price" class="form-label">price</label>
                <input type="number" name="price" id="price" class="form-control" min="1000" max="10000"
                    step="0.01" value="{{ $book->price }}">
            </div>
            <div class="mb-3">
                <label for="pages" class="form-label">pages</label>
                <input type="text" name="pages" id="pages" class="form-control" placeholder="Book's pages"
                    value="{{ $book->pages }}">
            </div>
            <div class="mb-3">
                <label for="publication_year" class="form-label">publication_year</label>
                <select name="publication_year" id="publication_year" class="form-control">
                    <option value="">Select Year</option>
                    @for ($year = date('Y'); $year >= 1900; $year--)
                        <option value="{{ $year }}" {{ $book->publication_year == $year ? 'selected' : '' }}>
                            {{ $year }}</option>
                    @endfor
                </select>
            </div>
            <div class="mb-3">
                <label for="rent_duration" class="form-label">rent_duration</label>
                <select name="rent_duration" id="rent_duration" class="form-control">
                    <option value="">Select Duration</option>
                    @for ($days = 1; $days <= 7; $days++)
                        <option value="{{ $days }}" {{ $book->rent_duration == $days ? 'selected' : '' }}>
                            {{ $days }}</option>
                    @endfor
                </select>
            </div>
            <div class="mb-3">
                <label for="topic_suitability" class="form-label">topic_suitability</label>
                <input type="number" name="topic_suitability" id="topic_suitability" class="form-control" min="1"
                    max="10" step="0.01" value="{{ $book->topic_suitability }}">
            </div>

            <div class="mb-3">
                <label for="image" class="form-label">Image</label>
                <input type="file" name="image" class="form-control">
            </div>

            <div>
                <label for="currentImage" class="form-label" style="display:block">Current Image</label>
                @if ($book->cover != '')
                    <img src="{{ asset('storage/cover/' . $book->cover) }}" alt="" width="300px">
                @else
                    <img src="{{ asset('images/book-not-cover.jpg') }}" alt="" width="300px">
                @endif
            </div>

            <div class="mb-3">
                <label for="category" class="form-label">Category</label>
                <select name="categories[]" id="category" class="form-control select-multiple" multiple>
                    @foreach ($categories as $item)
                        <option value="{{ $item->id }}">{{ $item->name }}</option>
                    @endforeach
                </select>
            </div>

            <div class="mb-3">
                <label for="currentCategory">Current Category</label>
                <ul>
                    @foreach ($book->categories as $category)
                        <li>{{ $category->name }}</li>
                    @endforeach
                </ul>
            </div>

            <div class="mt-3">
                <button class="btn btn-success" type="submit">Save</button>
            </div>
        </form>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

    <script>
        $(document).ready(function() {
            $('.select-multiple').select2();
        });
    </script>
@endsection
