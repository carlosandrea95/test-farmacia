<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Grade extends Model
{
    use HasFactory;
    public function student()
    {
        return $this->belongsTo('App\Models\Student');
    }
    public function course()
    {
        return $this->hasOne(Course::class, 'courseId', 'id');
    }
    public static function getGrades($id)
    {
        $studentGrades = Grade::all()->where('studentId', '=', $id);
        $grades = [];
        foreach ($studentGrades as $grade) {
            $course = Course::find($grade->courseId);
            $courseGrade['id'] = $grade->id;
            $courseGrade['studentId'] = $grade->studentId;
            $courseGrade['courseId'] = $grade->courseId;
            $courseGrade['course'] = $course->name;
            $courseGrade['score'] = $grade->score;
            $grades[] = $courseGrade;
        }
        return $grades;
    }
}
