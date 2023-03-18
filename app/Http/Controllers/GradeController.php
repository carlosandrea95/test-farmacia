<?php

namespace App\Http\Controllers;

use App\Models\Grade;
use Illuminate\Http\Request;

class GradeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // Show all grades registered
        $data = [
            'response' => [
                'code' => 200,
                'status' => 'success',
                'desc' => 'Show all Grades'
            ],
            'data' => [
                'grades' => Grade::all()
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
        // Create an new grade
        $grade = new Grade();
        $grade->studentId = $request->studentId;
        $grade->courseId = $request->courseId;
        $grade->score = $request->score;
        $grade->save();
        $data = [
            'response' => [
                'code' => 201,
                'status' => 'created',
                'desc' => 'Created an rade for student #' . $request->studentId
            ]
        ];
        return response()->json($data, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Grade $grade)
    {
        // Show an Grade
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Grade $grade)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Grade $grade)
    {
        // Update an existing grade
        $grade->studentId = $request->studentId;
        $grade->courseId = $request->courseId;
        $grade->score = $request->score;
        $grade->save();
        $data = [
            'response' => [
                'code' => 200,
                'status' => 'updated',
                'desc' => 'Updated an grade for student #' . $request->studentId
            ]
        ];
        return response()->json($data, 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Grade $grade)
    {
        // Set deleted status for an existing grade
        $grade->deleted = 1;
        $grade->save();
        $data = [
            'response' => [
                'code' => 200,
                'status' => 'updated',
                'desc' => 'Grade deleted successfully'
            ]
        ];
        return response()->json($data, 200);
    }
}
