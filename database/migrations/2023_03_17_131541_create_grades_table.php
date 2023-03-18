<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('grades', function (Blueprint $table) {

            // unique id
            $table->id();

            // foreign keys
            $table->unsignedBigInteger('studentId');
            $table->foreign('studentId')->references('id')->on('students');

            // secondary indexes
            $table->unsignedBigInteger('courseId');

            // grades data
            $table->integer('score')->unsigned();

            // record management
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('grades');
    }
};
