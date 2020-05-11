<?php
namespace App\Models\Plan;

use Illuminate\Database\Eloquent\Model;
use App\Models\Plan\Traits\Attribute\PlanPrivilegeAttribute;

class PlanPrivilege extends Model
{
	use PlanPrivilegeAttribute;  // plan Month traits
	
    protected $fillable = ['name','controller','action','status']; 
    /*public function plan()
    {
        return $this->belongsTo(Plan::class);
    }*/
}