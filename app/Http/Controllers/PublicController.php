<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\Category;
use Illuminate\Http\Request;

class PublicController extends Controller
{
    public function index(Request $request)
    {
        $categories = Category::all();

        $books = Book::query();

        if ($request->category || $request->title) {
            $books->where(function($query) use($request) {
                if ($request->category) {
                    $query->orWhereHas('categories', function($q) use($request) {
                        $q->where('categories.id', $request->category);
                    });
                }

                if ($request->title) {
                    $query->orWhere('title', 'like', '%'.$request->title.'%');
                }
            });
        }

        $books = $books->get();

        return view('book-list', ['books' => $books, 'categories' => $categories]);
    }
}





// class PublicController extends Controller
// {
//     public function index(Request $request)
//     {
//         $categories = Category::all();

//         if ($request->category || $request->title) {
//             $books = Book::where('title', 'like', '%'.$request->title.'%')
//                     ->orWhereHas('categories', function($q) use($request) {
//                         $q->where('categories.id', $request->category);
//                     })
//                     ->get();

//                 }        
//                 else {
//                     $books = Book::all();
//                 }
                
//                 return view('book-list', ['books' => $books, 'categories'=>$categories]);
//             }
//         }
        // $books = Book::whereHas('categories', function($q) use($request) {
        //     $q->where('categories.id', $request->category);
        // })->get();
        
        // $books = Book::where('title', 'like', '%'.$request->title.'%')
        //             ->orWhereHas('categories', function($q) use($request) {
            //                 $q->where('categories.id', $request->category);
            //             }) 
//             ->get();