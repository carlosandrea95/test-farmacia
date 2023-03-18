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

        Schema::create('students', function (Blueprint $table) {

            // unique id
            $table->id();

            // foreign keys
            $table->integer('carnetId')->unsigned()->nullable(); //for example

            // student data
            $table->integer('dni')->unsigned();
            $table->string('fname');
            $table->string('lname');
            $table->string('sex', 1);
            $table->integer('stage')->nullable();
            $table->integer('phone')->nullable();
            $table->text('address')->nullable();


            // status management
            $table->boolean('status');

            // record management
            $table->boolean('deleted')->default('0');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('students');
    }
};
