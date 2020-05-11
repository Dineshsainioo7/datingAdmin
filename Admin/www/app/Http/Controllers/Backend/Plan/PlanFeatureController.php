<?php

namespace App\Http\Controllers\Backend\Plan;

use App\Models\Plan\Plan;
use App\Models\Plan\PlanFeature;
use App\Models\Plan\PlanPrivilege;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Backend\Plan\PlanFeatureRequest;

class PlanFeatureController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $plan_features = PlanFeature::with('plan')->latest()->paginate(10);   
        return view('backend.plans.plan_features.index',compact('plan_features'));
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
        $privilege = PlanPrivilege::whereStatus('1')->latest()->pluck('name','id');
        return view('backend.plans.plan_features.create',compact('plans','privilege'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(PlanFeatureRequest $request)
    {
            
        try {
            PlanFeature::create([
                'plan_id' =>$request->plan_id,
                'feature_name' =>$request->feature_name,
                'plan_privilege_id' =>isset($request->plan_privilege_id)? implode(",",$request->plan_privilege_id):'',
                'occurence' =>$request->occurence,
                'status' => isset($request->status)?$request->status:'0'
            ]);
        } catch (\Exception $e) {
             return back()->withFlashDanger($e->getMessage());
        }
        return redirect()->route('admin.feature.index')->withFlashSuccess(__('The Plan Feature was successfully Created'));
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
    public function edit(PlanFeature $feature)
    {

         $plans = Plan::whereStatus(1)->latest()->pluck('name','id');
        $plans->prepend('Select Plan',"");
        $privilege = PlanPrivilege::whereStatus('1')->latest()->pluck('name','id');
        return view('backend.plans.plan_features.edit',compact('feature','plans','privilege'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(PlanFeatureRequest $request, PlanFeature $feature)
    {
        $feature->plan_id = $request->plan_id;
        $feature->feature_name = $request->feature_name;
        $feature->plan_privilege_id = isset($request->plan_privilege_id)? implode(",",$request->plan_privilege_id):'';
        $feature->occurence = $request->occurence;
        $feature->status = isset($request->status)?$request->status:'0';
        $feature->save();
        return redirect()->route('admin.feature.index')->withFlashSuccess(__('The Plan Feature was successfully updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(PlanFeature $feature)
    {
        $feature->delete();
        return redirect()->back()->withFlashSuccess('Successfully  Plan Feature');
    }

    public function changeStatus($id= null)
    {
        $changestatus = PlanFeature::findOrFail($id);
         
        if (isset($changestatus) && !empty($changestatus)) {
           if ($changestatus->status == 1) {
               $changestatus->update(['status' => '0']);
               return redirect()->back()->withFlashSuccess('Successfully Deactive Plan Feature');
           }else{
               $changestatus->update(['status' => '1']);  
                return redirect()->back()->withFlashSuccess('Successfully Activeted  Plan Feature');
           }
       }
    }
}
