<?php

namespace App\Http\Controllers\Backend\User;

use App\Models\Auth\User;
use App\Models\Country;
use App\Models\State;
use App\Models\City;
use App\Models\Auth\UserProfile;
use App\Models\Interest\Interest;
use Illuminate\Http\Request;
use App\Exceptions\GeneralException;
use App\Http\Controllers\Controller;
use App\Http\Requests\Backend\Auth\User\StoreUserRequest;
use App\Http\Requests\Backend\Auth\User\UpdateUserRequest;
use App\Http\Requests\Backend\Auth\User\UpdateUserPasswordRequest;
use App\Events\Backend\Auth\User\UserConfirmed;
use App\Events\Backend\Auth\User\UserUnconfirmed;
use App\Notifications\Frontend\Auth\UserNeedsConfirmation;
use DB;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       $users =  User::with('userProfile')->latest()->paginate(10);
      return view('backend.auth.user.index',compact('users'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $interests = Interest::whereStatus('1')->latest()->pluck('name','id');
       $countries = Country::pluck('name','id');
       $countries->prepend("Select Country","");

        return view('backend.auth.user.create',compact('interests','countries'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreUserRequest $request)
    {
         // echo '<pre>'; // user profile
         // print_r($request->all()); exit();
         if ($request->hasFile('profile_pic')) {
                     $file = $request->file('profile_pic');
                     $image = $file->getClientOriginalExtension();
                     $newfile = time().'_'.rand().'_'.'user-profile'.'.'.$image;
                     $fmove   = $file->move(public_path().'/user/image/',$newfile);
                     $user_pic  = $newfile;
                }

        $user = User::create([
                'role_id' => 2,
                'first_name' => $request->first_name,
                'last_name' => $request->last_name,
                'email' => $request->email,
                'avatar_type' => 'profile-image',
                'avatar_location' =>isset($user_pic)?$user_pic:'',
                'password' => $request->password,
                'active' => isset($request->active) && $request->active === '1',
                'confirmation_code' => md5(uniqid(mt_rand(), true)),
                'confirmed' => isset($request->confirmed) && $request->confirmed === '1',
            ]);
          //Send confirmation email if requested and account approval is off
                if ($user->confirmed === false && ! config('access.users.requires_approval')) {
                    $user->notify(new UserNeedsConfirmation($user->confirmation_code));
                }
            if (!empty($user->id)) {
                    //echo $user->id; exit();
                    $userProfile = new UserProfile;  
                    $userProfile->user_id = $user->id;  
                    $userProfile->gender = $request->gender;  
                    $userProfile->date_of_birth = $request->date_of_birth;
                    $userProfile->interests = isset($request->interests)? implode(",",$request->interests):'';   
                    $userProfile->contact_numbers = $request->contact_numbers;   
                    $userProfile->country = $request->country;   
                    $userProfile->state = $request->state;   
                    $userProfile->city = $request->city;   
                    $userProfile->address = $request->address;   
                    $userProfile->interested_in = $request->interested_in;
                    $userProfile->summery = $request->summery;
                    $userProfile->profile_pic = isset($user_pic)?$user_pic:'';
                    $userProfile->save();   
                }     
        return redirect()->route('admin.user')->withFlashSuccess(__('alerts.backend.users.created'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id=null)
    {
        $userProfile = UserProfile::whereUserId($id)->first();

        // echo '<pre>';
        // print_r($userProfile->interest_name); exit();
        $user = User::with('userProfile')->findOrFail($id);
        return view('backend.auth.user.show')
            ->withUser($user);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        
        $user = User::with('userProfile')->findOrFail($id);
        $country_id = isset($user->userProfile) && !empty($user->userProfile->country) ? $user->userProfile->country:'';
        $state_id = isset($user->userProfile) && !empty($user->userProfile->state) ? $user->userProfile->state:'';
        // echo $country_id."<br>".$state_id;
        //     exit();
        $interests = Interest::whereStatus('1')->latest()->pluck('name','id');
        $countries = Country::pluck('name','id');
        $state = State::whereCountryId($country_id)->pluck('name','id');
        $city = City::whereStateId($state_id)->pluck('name','id');
        return view('backend.auth.user.edit',compact('user','interests','countries','state','city'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateUserRequest $request, $id)
    {
        
        if ($request->hasFile('profile_pic')) {
                $file = $request->file('profile_pic');
                $image = $file->getClientOriginalExtension();
                     $newfile = time().'_'.rand().'_'.'user-profile'.'.'.$image;
                     $fmove   = $file->move(public_path().'/user/image/',$newfile);
                     $user_pic  = $newfile;
                }
                else{
                    $user_pic = User::find($id)->avatar_location;
                }
        $user = [
            'first_name' => $request->first_name,
            'last_name'  => $request->last_name,
            'email'      => $request->email,
            'avatar_type'=> 'user-profile',
            'avatar_location'=>$user_pic,
            'role_id'      => $request->role_id,
        ];

         User::whereId($id)->update($user);

         $checkUserId = UserProfile::whereUserId($id)->first();
         if (isset($checkUserId) && !empty($checkUserId)) {
                $userProfile = UserProfile::whereUserId($id)->first();
                 $userProfile->gender = $request->gender;  
                 $userProfile->date_of_birth = $request->date_of_birth;
                 $userProfile->interests = isset($request->interests)? implode(",",$request->interests):'';   
                 $userProfile->contact_numbers = $request->contact_numbers;   
                 $userProfile->country = $request->country;   
                 $userProfile->state = $request->state;   
                 $userProfile->city = $request->city;
                 $userProfile->address = $request->address;   
                 $userProfile->interested_in = $request->interested_in;
                 $userProfile->summery = $request->summery;
                 $userProfile->profile_pic = $user_pic;
                 $userProfile->save();
                       // DB::table('user_profiles')->where('user_id', $id)->update($value);   
                 }else{
                    $userProfile = new UserProfile; 
                    $userProfile->user_id = $id;
                      $userProfile->gender = $request->gender;  
                     $userProfile->date_of_birth = $request->date_of_birth;
                     $userProfile->interests = isset($request->interests)? implode(",",$request->interests):'';   
                     $userProfile->contact_numbers = $request->contact_numbers;   
                     $userProfile->country = $request->country;   
                     $userProfile->state = $request->state;   
                     $userProfile->city = $request->city;
                     $userProfile->address = $request->address;   
                     $userProfile->interested_in = $request->interested_in;
                     $userProfile->summery = $request->summery;
                     $userProfile->profile_pic = $user_pic;
                    $userProfile->save();
                   // $new_value = array_merge($userId,$value);
                    //DB::table('user_profiles')->insert($new_value);
                 } 
          

        return redirect()->route('admin.user')->withFlashSuccess(__('alerts.backend.users.updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        User::findOrFail($id)->forceDelete();

        return redirect()->route('admin.user')->withFlashSuccess(__('alerts.backend.users.deleted'));
    }

    // state fetch
    public function state(Request $request)
    {
        if (!empty($request->country)) {
            
           $stateList = State::where('country_id',$request->country)->pluck('name','id');
          return view('backend.auth.user.ajaxLoad.state',compact('stateList'));
        }
    }
    // city fetch
    public function city(Request $request)
    {
        if (!empty($request->state)) {
            
           $cityList = City::where('state_id',$request->state)->pluck('name','id');
            
          return view('backend.auth.user.ajaxLoad.city',compact('cityList'));
        }
    }

    // USER profile change status 
    public function changeStatus($status)
    {
       $changestatus = User::findOrFail($status);
         
        if (isset($changestatus) && !empty($changestatus)) {
           if ($changestatus->active == 1) {
               $changestatus->update(['active' => 0]);
               return redirect()->back()->withFlashSuccess('Successfully Deactive User');
           }else{
               $changestatus->update(['active' => 1]);  
                return redirect()->back()->withFlashSuccess('Successfully Activeted  User');
           }
       }
    }

    // user password chage 

    public function changePassword($id)
    {
        $user = User::findOrFail($id);
        return view('backend.auth.user.change-password')->withUser($user);
    }

    // user Password update 
    public function updatePassword(UpdateUserPasswordRequest $request,$id)
    {
        User::whereId($id)->update(['password' => $request->password]);

       return redirect()->route('admin.user')->withFlashSuccess(__('alerts.backend.users.updated_password'));
    }

    // deactivated user 
    
    public function getDeactivated()
    {
        $users =  User::whereActive(false)->latest()->paginate(10);

        return view('backend.auth.user.deactivated',compact('users'));
    }

    //user confirm mail 

    public function confirm(User $user)
    {
       if ($user->confirmed) {
            throw new GeneralException(__('exceptions.backend.access.users.already_confirmed'));
        }

        $user->confirmed = true;
        $confirmed = $user->save();

        if ($confirmed) {
            event(new UserConfirmed($user));

            // Let user know their account was approved
            if (config('access.users.requires_approval')) {
                $user->notify(new UserAccountActive);
            }

            return redirect()->route('admin.user')->withFlashSuccess(__('alerts.backend.users.confirmed'));
        }

        throw new GeneralException(__('exceptions.backend.access.users.cant_confirm'));

        
    }

    public function unconfirm(User $user)
    {
        if (! $user->confirmed) {
            throw new GeneralException(__('exceptions.backend.access.users.not_confirmed'));
        }

        if ($user->id === 1) {
            // Cant un-confirm admin
            throw new GeneralException(__('exceptions.backend.access.users.cant_unconfirm_admin'));
        }

        if ($user->id === auth()->id()) {
            // Cant un-confirm self
            throw new GeneralException(__('exceptions.backend.access.users.cant_unconfirm_self'));
        }

        $user->confirmed = false;
        $unconfirmed = $user->save();

        if ($unconfirmed) {
            event(new UserUnconfirmed($user));

           return redirect()->route('admin.user')->withFlashSuccess(__('alerts.backend.users.unconfirmed'));
        }

        throw new GeneralException(__('exceptions.backend.access.users.cant_unconfirm'));

        
    }
       public function sendConfirmationEmail(User $user)
    {
        
        // Shouldn't allow users to confirm their own accounts when the application is set to manual confirmation
        if (config('access.users.requires_approval')) {
            return redirect()->back()->withFlashDanger(__('alerts.backend.users.cant_resend_confirmation'));
        }

        if ($user->isConfirmed()) {
            return redirect()->back()->withFlashSuccess(__('exceptions.backend.access.users.already_confirmed'));
        }

        $user->notify(new UserNeedsConfirmation($user->confirmation_code));

        return redirect()->back()->withFlashSuccess(__('alerts.backend.users.confirmation_email'));
    }
}
