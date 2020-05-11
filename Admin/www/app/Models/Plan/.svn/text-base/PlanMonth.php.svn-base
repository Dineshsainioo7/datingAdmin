<?php
namespace App\Models\Plan;

use Illuminate\Database\Eloquent\Model;
use App\Models\Plan\Plan;
use App\Models\Plan\Traits\Attribute\PlanMonthAttribute;

class PlanMonth extends Model
{
	use PlanMonthAttribute;  // plan Month traits
	
	
	public $timestamps = false;

    protected $fillable = ['plan_id','month','discount','status'];

    
    public function plan()
    {
        return $this->belongsTo(Plan::class);
    }
}