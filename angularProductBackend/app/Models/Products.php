<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Products extends Model
{
    use SoftDeletes;
    protected $table = 'product_list';
    protected $fillable = [
    	'product_name', 'product_description', 'product_code', 'product_cost', 'product_quantity', 'product_notify_at', 'file', 'status',
    ];

	protected $dates = ['created_at','updated_at','deleted_at'];
	
}
