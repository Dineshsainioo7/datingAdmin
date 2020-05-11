<?php

namespace App\Models\StaticPage;

use Illuminate\Database\Eloquent\Model;
use App\Models\StaticPage\Traits\PageAttribute;

class StaticPage extends Model
{
   use PageAttribute;  // Page traits

   protected $fillable = ['name','descrption','graphic_type','graphic_content','status','slug'];


}