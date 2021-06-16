<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductListTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_list', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('product_name');
            $table->string('product_description');
            $table->string('product_code');
            $table->string('product_cost');            
            $table->string('product_size');            
            $table->integer('product_quantity');
            $table->integer('product_notify_at');
            $table->string('file');
            $table->boolean('status')->default(1);
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('product_list');
    }
}
