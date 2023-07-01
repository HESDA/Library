@extends('layouts.mainlayout')

@section('title', 'Kriteria Book')

@section('content')
    <h1>Kriteria SAW</h1>

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
                    <th>Nama</th>
                    <th>Label</th>
                    <th>Bobot</th>
                    <th>Persentase</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($criteria as $item)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $item->nama }}</td>
                        <td>{{ $item->label }}</td>
                        <td>{{ $item->bobot }}</td>
                        <td>{{ $item->persentase }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection
