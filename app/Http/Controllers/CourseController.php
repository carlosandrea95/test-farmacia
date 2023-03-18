<?php

namespace App\Http\Controllers;

use App\Models\Course;
use Illuminate\Http\Request;

class CourseController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $data = [
            'response' => [
                'code' => 200,
                'status' => 'success',
                'desc' => 'Show all courses'
            ],
            'data' => [
                'courses' => Course::all()->where('deleted', '=', '0')
            ]
        ];
        return response()->json($data, 200);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // create an new course
        $course = new Course();
        $course->name = $request->name;
        $course->stage = $request->stage;
        $course->save();
        $data = [
            'response' => [
                'code' => 201,
                'status' => 'created',
                'desc' => 'Course created successfully'
            ]
        ];
        return response()->json($data, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Course $course)
    {
        // Show an course
        $data = [
            'response' => [
                'code' => 200,
                'status' => 'success',
                'desc' => 'Show an specified course'
            ],
            'data' => [
                'courses' => $course
            ]
        ];
        return response()->json($data, 200);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Course $course)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Course $course)
    {
        // Update an existing course
        $course->name = $request->name;
        $course->stage = $request->stage;
        $course->save();
        $data = [
            'response' => [
                'code' => 201,
                'status' => 'updated',
                'desc' => 'Course updated successfully'
            ]
        ];
        return response()->json($data, 201);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Course $course)
    {
        //Set deleted status for an existing course
        $course->deleted = 1;
        $course->save();
        $data = [
            'response' => [
                'code' => 200,
                'status' => 'success',
                'desc' => 'Delete an specified course'
            ]
        ];
        return response()->json($data, 200);
    }
}
