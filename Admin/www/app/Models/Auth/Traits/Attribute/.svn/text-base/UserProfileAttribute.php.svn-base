<?php

namespace App\Models\Auth\Traits\Attribute;
use App\Models\Country;
use App\Models\State;
use App\Models\City;
use App\Models\Interest\Interest;

/**
 * UserProfileAttribute Trait
 */
trait UserProfileAttribute
{
    /**
     * summary
     */
    public function setCountryAttribute($value)
    {
         
         $this->attributes['country'] = Country::findOrFail($value)->name;       
    }  

    public function setStateAttribute($value)
    {
         
         $this->attributes['state'] = State::findOrFail($value)->name;        
    } 

    public function setCityAttribute($value)
    {
         
         $this->attributes['city'] = City::findOrFail($value)->name;        
    } 


    public function getCountryAttribute($value)
    {
        return Country::whereName($value)->first()->id;
    }

    public function getStateAttribute($value)
    {
        return State::whereName($value)->first()->id;
    }

    public function getCityAttribute($value)
    {
        return City::whereName($value)->first()->id;
    }

    // display conuntry name
     public function getCountryNameAttribute()
    {
        return Country::whereId($this->country)->first()->name;   
    }   
     
     public function getStateNameAttribute()
    {
        return State::whereId($this->state)->first()->name;   
    } 
    
     public function getCityNameAttribute()
    {
        return City::whereId($this->city)->first()->name;   
    }


    public function getInterestNameAttribute()
    {
    	if (!empty($this->interests)) {
    		
    		
    		$interest = \DB::table("interests")
                          ->select("name")
                           ->whereIn('id',explode(",",$this->interests))
                           ->get();

             return $interest;            

    	}else{

    		return "N/A";
    	}

    }


    public function interestName()
    {
    	return $this->belongsTo(Interest::class,'interests','id')->whereIn('interests');
    }

}