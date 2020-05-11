<?php

namespace App\Http\Controllers\Backend\Plan;

use App\Models\Plan\Plan;
use App\Models\Plan\PlanMonth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Backend\Plan\StorePlanMonthRequest;

class PlanMonthController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       $months = PlanMonth::with('plan')->latest()->paginate(10);
       return view('backend.plans.plan_months.index',compact('months'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $plans = Plan::whereStatus(1)->latest()->pluck('name','id');
        $plans->prepend('Select Plan',"");
        return view('backend.plans.plan_months.create',compact('plans'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StorePlanMonthRequest $request)
    {
        try 
        {
            PlanMonth::create([
                'plan_id' =>$request->plan_id,
                'month' =>$request->month,
                'discount' =>$request->discount,
                'status' => isset($request->status)?$request->status:'0'
            ]);
        } 
        catch (\Exception $e) 
        {
             return back()->withFlashDanger($e->getMessage());
        }
        return redirect()->route('admin.month.index')->withFlashSuccess(__('The Plan Month was successfully Created'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(PlanMonth $month)
    {
        $plans = Plan::whereStatus(1)->latest()->pluck('name','id');
        $plans->prepend('Select Plan',"");
        return view('backend.plans.plan_months.edit',compact('month','plans'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(StorePlanMonthRequest $request, PlanMonth $month)
    {
        $month->plan_id = $request->plan_id;
        $month->month = $request->month;
        $month->discount = $request->discount;
        $month->status = isset($request->status)?$request->status:'0';
        $month->save();
        return redirect()->route('admin.month.index')->withFlashSuccess(__('The Plan Month was successfully updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(PlanMonth $month)
    {
        $month->delete();
        return redirect()->back()->withFlashSuccess('Successfully Deleted  Plan Month');
    }

    public function changeStatus($id= null)
    {
        $changestatus = PlanMonth::findOrFail($id);
         
        if (isset($changestatus) && !empty($changestatus)) 
        {
            if ($changestatus->status == 1) 
            {
                $changestatus->update(['status' => '0']);
               return redirect()->back()->withFlashSuccess('Successfully Deactive Plan Month');
            }
            else
            {
                $changestatus->update(['status' => '1']);  
                return redirect()->back()->withFlashSuccess('Successfully Activeted  Plan Month');
            }
        }
    }

}
