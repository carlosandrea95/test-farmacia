<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// Students routes
Route::get('/students', 'App\Http\Controllers\StudentController@index');
Route::post('/students', 'App\Http\Controllers\StudentController@store');
Route::get('/students/{student}', 'App\Http\Controllers\StudentController@show');
Route::get('/students/grades/{student}', 'App\Http\Controllers\StudentController@grades');
Route::put('/students/{student}', 'App\Http\Controllers\StudentController@update');
Route::delete('/students/{student}', 'App\Http\Controllers\StudentController@destroy');

// Courses routes
Route::get('/courses', 'App\Http\Controllers\CourseController@index');
Route::post('/courses', 'App\Http\Controllers\CourseController@store');
Route::get('/courses/{course}', 'App\Http\Controllers\CourseController@show');
Route::put('/courses/{course}', 'App\Http\Controllers\CourseController@update');
Route::delete('/courses/{course}', 'App\Http\Controllers\CourseController@destroy');

// Grades routes
Route::get('/grades', 'App\Http\Controllers\GradeController@index');
Route::post('/grades', 'App\Http\Controllers\GradeController@store');
Route::get('/grades/{grade}', 'App\Http\Controllers\GradeController@show');
Route::put('/grades/{grade}', 'App\Http\Controllers\GradeController@update');
Route::delete('/grades/{grade}', 'App\Http\Controllers\GradeController@destroy');

// Fallback route for missing controllers
Route::fallback(function () {
    return response()->json([
        'message' => 'Page Not Found. Please try again'
    ], 404);
});
