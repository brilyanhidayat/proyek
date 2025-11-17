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
        Schema::create('contracts', function (Blueprint $table) {
            $table->id();
            $table->string('nomor');
            $table->string('judul');
            $table->string('nomor_agreement');
            $table->date('start');
            $table->date('end');
            $table->string('nomor_sr');
            $table->string('plant');
            $table->string('kontraktor');
            $table->integer('ammount');
            $table->integer('worker');
            $table->string('remark');
            $table->string('file');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('contracts');
    }
};
