<?php
namespace App\Http\Controllers\Backend\Plan;

use App\Models\Plan\Plan;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Backend\Plan\StorePlanRequest;

class PlanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $plans = Plan::latest()->paginate(10);
        return view('backend.plans.plan_page.index',compact('plans'));
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
        return view('backend.plans.plan_page.create',compact('plans'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StorePlanRequest $request)
    {       
            
        try {
            Plan::create([
                'name' =>$request->name,
                'description' =>$request->description,
                'plan_type' =>$request->plan_type,
                'amount' =>isset($request->amount) && !empty($request->amount)?$request->amount:'0.00',
                'status' => isset($request->status)?$request->status:'0'
            ]);
        } catch (\Exception $e) {
             return back()->withFlashDanger($e->getMessage());
        }
        return redirect()->route('admin.plans.index')->withFlashSuccess(__('The Plan was successfully Created'));
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
    public function edit(Plan $plan)
    {
        return view('backend.plans.plan_page.edit',compact('plan'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(StorePlanRequest $request,Plan $plan)
    {
        $plan->name = $request->name;
        $plan->description = $request->description;
        $plan->amount = isset($request->amount) && !empty($request->amount)?$request->amount:'0.00';
        $plan->status = isset($request->status)?$request->status:'0';
        $plan->save();
        return redirect()->route('admin.plans.index')->withFlashSuccess(__('The Plan was successfully updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Plan $plan)
    {
        $plan->delete();
        return redirect()->back()->withFlashSuccess('Successfully Deleted  Plan');
    }

     public function changeStatus($id= null)
    {
        $changestatus = Plan::findOrFail($id);
         
        if (isset($changestatus) && !empty($changestatus)) {
           if ($changestatus->status == 1) {
               $changestatus->update(['status' => '0']);
               return redirect()->back()->withFlashSuccess('Successfully Deactive Plan');
           }else{
               $changestatus->update(['status' => '1']);  
                return redirect()->back()->withFlashSuccess('Successfully Activeted  Plan');
           }
       }
    }
}
