<?php
namespace App\Http\Controllers\Backend\Plan;

use App\Models\Plan\Plan;
use App\Models\Plan\PlanPrivilege;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Backend\Plan\StorePlanRequest;
use Route;

class PlanPrivilegeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $plan_privilege = PlanPrivilege::latest()->paginate(10);

        return view('backend.plans.plan_privilege.index',compact('plan_privilege'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {  
        $controllers = $this->getAllControllers();
        return view('backend.plans.plan_privilege.create',compact('controllers'));
    }

    public function fetchAction(Request $request)
    {
        $controller = $request->controllerValue;
        $actions = $this->getControllerActions($controller);
        
        return view('backend.plans.plan_privilege.ajax_action_load',compact('actions')); 
    }    

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {       
        $request->validate([
                    'name' => 'required',
                    'controller' => 'required',
                    'action' => 'required',
                ]);

        try {
            PlanPrivilege::create([
                'name' =>$request->name,
                'controller' =>$request->controller,
                'action' =>isset($request->action)? implode(",",$request->action):'',
                'status' => isset($request->status)?$request->status:'0'
            ]);
        } catch (\Exception $e) {
             return back()->withFlashDanger($e->getMessage());
        }
        return redirect()->route('admin.plan-privilege.index')->withFlashSuccess(__('The privilege was successfully Created'));
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
    public function edit(PlanPrivilege $plan_privilege)
    {
        $controller = $plan_privilege->controller;
        $controllers = $this->getAllControllers();
        $actions = $this->getControllerActions($controller);
       
        return view('backend.plans.plan_privilege.edit',compact('plan_privilege','controllers', 'actions'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,PlanPrivilege $plan_privilege)
    {
         $request->validate([
                    'name' => 'required',
                    'controller' => 'required',
                    'action' => 'required',
                ]);
         
        $plan_privilege->name = $request->name;
        $plan_privilege->controller = $request->controller;
        $plan_privilege->action =isset($request->action)? implode(",",$request->action):'';
        $plan_privilege->status = isset($request->status)?$request->status:'0';
        $plan_privilege->save();
        return redirect()->route('admin.plan-privilege.index')->withFlashSuccess(__('The Privilege was successfully updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(PlanPrivilege $plan_privilege)
    {

        $plan_privilege->delete();
        return redirect()->back()->withFlashSuccess('Successfully Deleted  Privilege');
    }

    public function changeStatus($id= null)
    {
        $changestatus = PlanPrivilege::findOrFail($id);
         
        if (isset($changestatus) && !empty($changestatus)) {
           if ($changestatus->status == 1) {
               $changestatus->update(['status' => '0']);
               return redirect()->back()->withFlashSuccess('Successfully Deactive Privilege');
           }else{
               $changestatus->update(['status' => '1']);  
                return redirect()->back()->withFlashSuccess('Successfully Activeted  Privilege');
           }
       }
    }
}
