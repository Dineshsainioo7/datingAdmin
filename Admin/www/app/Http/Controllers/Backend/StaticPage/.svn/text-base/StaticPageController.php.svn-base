<?php

namespace App\Http\Controllers\Backend\StaticPage;

use App\Models\StaticPage\StaticPage;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Str;
use Validator;
use Illuminate\Validation\Rule;
use Auth;
use File;



class StaticPageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
         $pages = StaticPage::latest()->paginate(10);
        return view('backend.static_pages.index',compact('pages'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       return view('backend.static_pages.create');
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
                'name' => 'required|max:255|unique:static_pages',
                'descrption' => 'required',
                'graphic_type' => 'required',
        ]);
        if ($request->graphic_type == 'image') {
                 $request->validate([
                    'image' => 'mimes:jpeg,jpg,png,gif|required|max:10000',
                ]);
                 $file = $request->file('image');
                  $image = $file->getClientOriginalExtension();
                  $newfile = time().'_'.rand().'_'.'pages'.'.'.$image;
                  $fmove   = $file->move(public_path().'/pages/image/',$newfile);
                  $graphic_content  = $newfile;

           }elseif ($request->graphic_type == 'video') {
                    $request->validate([
                    'video' => 'mimes:m4v,avi,flv,mp4,mov|required',
                    ]);

                  $file = $request->file('video');
                  $video = $file->getClientOriginalExtension();
                  $newvideo = time().'_'.rand().'_'.'pages'.'.'.$video;
                  $fmove   = $file->move(public_path().'/pages/video/',$newvideo);
                  $graphic_content  = $newvideo;
           }
           $page  = [
                   'name' => $request->name,
                   'description' => $request->description,
                   'graphic_type' => $request->graphic_type,
                   'graphic_content' => $graphic_content,
                   'slug' => Str::slug($request->name, '-'),
                   'status' => isset($request->status)?$request->status:'0'
           ];
          
              try 
              {
                    StaticPage::create($page);  
              } 
              catch (\Exception $e) 
              {
                 return back()->withFlashDanger($e->getMessage());
              }
        return redirect()->route('admin.pages.index')->withFlashSuccess(__('The Page was successfully Created'));    
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
      $staticPage = StaticPage::findOrFail($id);
      
      return view('backend.static_pages.edit',compact('staticPage'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
         
        $request->validate([
                'name' => ['required', 'max:255', Rule::unique('static_pages')->ignore($id)],
                'descrption' => 'required',
                'graphic_type' => 'required',
        ]);

         if ($request->hasFile('image')) {
                 $request->validate([
                    'image' => 'mimes:jpeg,jpg,png,gif|required|max:10000',
                ]);
                 $file = $request->file('image');
                  $image = $file->getClientOriginalExtension();
                  $newfile = time().'_'.rand().'_'.'pages'.'.'.$image;
                  $fmove   = $file->move(public_path().'/pages/image/',$newfile);
                  $graphic_content  = $newfile;

           }elseif ($request->hasFile('video')) {
                    $request->validate([
                    'video' => 'mimes:m4v,avi,flv,mp4,mov|required',
                    ]);

                  $file = $request->file('video');
                  $video = $file->getClientOriginalExtension();
                  $newvideo = time().'_'.rand().'_'.'pages'.'.'.$video;
                  $fmove   = $file->move(public_path().'/pages/video/',$newvideo);
                  $graphic_content  = $newvideo;
           }
           else{

               $graphic_content = StaticPage::findOrFail($id)->graphic_content;
           }

          $updatepage  = [
                   'name' => $request->name,
                   'descrption' => $request->descrption,
                   'graphic_type' => $request->graphic_type,
                   'graphic_content' => $graphic_content,
                   'status' => isset($request->status)?$request->status:'0'
                ];
          
              try 
              {
                    StaticPage::whereId($id)->update($updatepage);  
              } 
              catch (\Exception $e) 
              {
                 return back()->withFlashDanger($e->getMessage());
              }
        return redirect()->route('admin.pages.index')->withFlashSuccess(__('The Page was successfully Updated.'));         
                       
                        
     

      
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {   
       $deletePage = StaticPage::findOrFail($id);
        if (!empty($deletePage)) {
                if ($deletePage->graphic_type == 'image') {
                      $full_path = public_path('/pages/image/').$deletePage->graphic_content;
                       if(File::exists($full_path)) {
                           File::delete($full_path);
                        }           
                }if ($deletePage->graphic_type == 'video') {
                   $full_path = public_path('/pages/video/').$deletePage->graphic_content;
                      if(File::exists($full_path)) {
                         File::delete($full_path);
                     }
                }              

        }
        $deletePage->delete();
        return redirect()->back()->withFlashSuccess('Successfully Deleted Page');
    }

    public function changeStatus($id= null)
    {
        $changestatus = StaticPage::findOrFail($id);
         
        if (isset($changestatus) && !empty($changestatus)) {
           if ($changestatus->status == 1) {
               $changestatus->update(['status' => '0']);
               return redirect()->back()->withFlashSuccess('Successfully Deactive Page');
           }else{
               $changestatus->update(['status' => '1']);  
                return redirect()->back()->withFlashSuccess('Successfully Activeted  Page');
           }
       }
    }
}
