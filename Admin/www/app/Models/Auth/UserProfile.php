<?php

namespace App\Models\Auth;

use Illuminate\Database\Eloquent\Model;
use App\Models\Auth\Traits\Attribute\UserProfileAttribute;

class UserProfile extends Model
{
	use UserProfileAttribute;  // userProfileTraits

    protected $fillable = [
    			'user_id',
    			'gender',
    			'date_of_birth',
    			'interests',
                'country',
                'state',
                'city',
                'address',
    			'hobbies',
    			'religion',
    			'cast',
    			'contact_numbers',
    			'summery',
    			'profile_status',
    			'profile_pic',
    		];
  

}