<?php

namespace App\Http\Controllers\Backend;

use App\Models\Auth\User;
use App\Models\Plan\Plan;
use App\Http\Controllers\Controller;
use Carbon\Carbon;
/**
 * Class DashboardController.
 */
class DashboardController extends Controller
{
    /**
     * @return \Illuminate\View\View
     */
    public function index()
    {
    	$newUser = User::whereMonth('created_at',Carbon::now()->month)->count();
    	$totalUser = User::count();
    	// $totalPlan = Plan::count();		
        return view('backend.dashboard',compact('newUser','totalUser'));
    }
}
