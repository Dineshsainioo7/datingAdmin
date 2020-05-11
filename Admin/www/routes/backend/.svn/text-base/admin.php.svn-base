<?php

use App\Http\Controllers\Backend\DashboardController;
use App\Http\Controllers\Backend\Activity\InterestController;
// use App\Http\Controllers\Backend\StaticPage\StaticPageController;

// All route names are prefixed with 'admin.'.
Route::redirect('/', '/admin/dashboard', 301);
Route::get('dashboard', [DashboardController::class, 'index'])->name('dashboard');

// Interest curd
Route::get('interest/changestatus/{id}',[InterestController::class,'changestatus'])->name('interest.changestatus');
Route::get('interest', [InterestController::class, 'index'])->name('interest');
Route::get('interest/create', [InterestController::class, 'create'])->name('interest.create');
Route::post('interest', [InterestController::class, 'store'])->name('interest.store');

Route::get('interest/{id}/edit',[InterestController::class, 'edit'])->name('interest.edit');
Route::patch('interest/update', [InterestController::class, 'update'])->name('interest.update');
Route::delete('interest/destroy/{id}',[InterestController::class, 'destroy'])->name('interest.destroy');

// static page Controller
//Route::get('pages',[StaticPageController::class, 'index'])->name('pages.index');

Route::get('pages/changestatus/{id}', 'StaticPage\StaticPageController@changeStatus')->name('pages.changestatus');
Route::resource('pages','StaticPage\StaticPageController');

// Plan Curd 
Route::get('plans/changestatus/{id}', 'Plan\PlanController@changeStatus')->name('plans.changestatus');

Route::resource('plans','Plan\PlanController');

// Plan Feature Curd
Route::get('feature/changestatus/{id}', 'Plan\PlanFeatureController@changeStatus')->name('feature.changestatus');

Route::resource('plan/feature','Plan\PlanFeatureController');
// Plan Month Curd
Route::get('month/changestatus/{id}', 'Plan\PlanMonthController@changeStatus')->name('month.changestatus');

Route::resource('plan/month','Plan\PlanMonthController');

Route::resource('plan/plan-privilege','Plan\PlanPrivilegeController');
Route::get('plan-privilege/changestatus/{id}', 'Plan\PlanPrivilegeController@changeStatus')->name('plan-privilege.changestatus');
Route::get('plan-privilege/fetchAction', 'Plan\PlanPrivilegeController@fetchAction')->name('plan-privilege.fetchAction'); 