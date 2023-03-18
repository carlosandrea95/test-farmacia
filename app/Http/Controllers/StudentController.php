<?php

namespace App\Http\Controllers;

use App\Models\Student;
use App\Models\Grade;
use Illuminate\Http\Request;

class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // show all students
        $data = [
            'response' => [
                'code' => 200,
                'status' => 'success',
                'desc' => 'Show all students'
            ],
            'data' => [
                'students' => Student::all()->where('deleted', '=', '0')
            ]

        ];
        return response()->json($data);
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
        // create an new student
        $student = new Student();
        $student->fname = $request->fname;
        $student->lname = $request->lname;
        $student->carnetId = $request->carnetId;
        $student->dni = $request->dni;
        $student->sex = $request->sex;
        $student->stage = $request->stage;
        $student->phone = $request->phone;
        $student->address = $request->address;
        $student->status = $request->status;
        $student->save();
        $data = [
            'response' => [
                'code' => 201,
                'status' => 'created',
                'desc' => 'Student created successfully'
            ]
        ];
        return response()->json($data, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Student $student)
    {
        // show an student
        $data = [
            'response' => [
                'code' => 200,
                'status' => 'success',
                'desc' => 'Show a specified student'
            ],
            'data' => [
                'student' => $student
            ]
        ];
        return response()->json($data, 200);
    }
    public function grades(Student $student)
    {
        // show an student
        $student['grades'] = Grade::getGrades($student->id);
        $data = [
            'response' => [
                'code' => 200,
                'status' => 'success',
                'desc' => 'Show a specified student'
            ],
            'data' => [
                'student' => $student
            ]
        ];
        return response()->json($data, 200);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Student $student)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Student $student)
    {
        // Update an existing student
        $student->fname = $request->fname;
        $student->lname = $request->lname;
        $student->carnetId = $request->carnetId;
        $student->dni = $request->dni;
        $student->sex = $request->sex;
        $student->stage = $request->stage;
        $student->phone = $request->phone;
        $student->address = $request->address;
        $student->status = $request->status;
        $student->save();
        $data = [
            'response' => [
                'code' => 200,
                'status' => 'updated',
                'desc' => 'Student updated successfully'
            ]
        ];
        return response()->json($data, 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Student $student)
    {
        // Set deleted status for an existing student
        $student->deleted = 1;
        $student->save();
        if ($student->id != null) {
            $code = 200;
            $status = 'success';
            $desc = 'Delete an specified student';
        }
        $data = [
            'response' => [
                'code' => $code,
                'status' => $status,
                'desc' => $desc
            ],
        ];
        return response()->json($data);
    }
}
