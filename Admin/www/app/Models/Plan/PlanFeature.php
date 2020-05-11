<?php

namespace App\Models\Plan;

use Illuminate\Database\Eloquent\Model;
use App\Models\Plan\Plan;
use App\Models\Plan\Traits\Attribute\PlanFeatureAttribute;

class PlanFeature extends Model
{
	use PlanFeatureAttribute;  // plan traits
	
	
	public $timestamps = false;

    protected $fillable = ['plan_id','feature_name','plan_privilege_id','occurence','status'];


    public function plan()
    {
        return $this->belongsTo(Plan::class);
    }

}