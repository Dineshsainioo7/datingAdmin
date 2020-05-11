<?php

namespace App\Models\Plan;

use Illuminate\Database\Eloquent\Model;
use App\Models\Plan\Traits\Attribute\PlanAttribute;

class Plan extends Model
{
	use PlanAttribute;  // plan traits
	
    protected $fillable = ['name','description','plan_type','amount','status'];

}
