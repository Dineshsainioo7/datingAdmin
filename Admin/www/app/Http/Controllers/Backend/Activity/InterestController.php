<?php

namespace App\Http\Controllers\Backend\Activity;

use App\Models\Interest\Interest;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Str;
use Validator;
use Illuminate\Validation\Rule;
use Auth;
class InterestController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $interests = Interest::latest()->paginate(10);
        return view('backend.activities.interests.index',compact('interests'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       return view('backend.activities.interests.create');
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
                'name' => 'required|max:255|unique:interests',
        ]);
            Interest::create([
                        'user_id' => Auth::id(),
                        'name' => $request->name,
                        'slug' => Str::slug($request->name, '-'),
                        'status' => isset($request->status)?$request->status:'0'
            ]);
        return redirect()->route('admin.interest')->withFlashSuccess(__('alerts.backend.interest.created'));    
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
    public function edit($id)
    {
      $interest = Interest::findOrFail($id);

      return view('backend.activities.interests.edit',compact('interest'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $id = $request->id;
        $request->validate([
                'name' => ['required', 'max:255', Rule::unique('interests')->ignore($id)],
        ]);

        $value = [
            'name' => $request->name,
            'status' => isset($request->status)?$request->status:'0',
        ];
         Interest::whereId($id)->update($value);
        return redirect()->route('admin.interest')->withFlashSuccess(__('Successfully Update Interest'));         
                       
                        
     

      
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Interest::findOrFail($id)->delete();
        return redirect()->back()->withFlashSuccess('Successfully Deleted Interest');
    }

    public function changestatus($id= null)
    {
        $changestatus = Interest::findOrFail($id);
         
        if (isset($changestatus) && !empty($changestatus)) {
           if ($changestatus->status == 1) {
               $changestatus->update(['status' => '0']);
               return redirect()->back()->withFlashSuccess('Successfully Deactive Interest');
           }else{
               $changestatus->update(['status' => '1']);  
                return redirect()->back()->withFlashSuccess('Successfully Activeted  Interest');
           }
       }
    }
}
