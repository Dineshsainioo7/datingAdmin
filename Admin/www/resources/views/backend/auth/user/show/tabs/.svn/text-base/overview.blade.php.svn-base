<div class="col">
    <div class="table-responsive">
        <table class="table table-hover">
            <tr>
                <th>@lang('labels.backend.access.users.tabs.content.overview.avatar')</th> 
                @php  $picture =isset($user->userProfile->profile_pic) && !empty($user->userProfile->profile_pic)?$user->userProfile->profile_pic:'';    @endphp
                <td><img src="{{url('user/image/'.$picture)}}" class="user-profile-image"  style="width: 15%; height: 90px;" /></td>
            </tr>

            <tr>
                <th>@lang('labels.backend.access.users.tabs.content.overview.name')</th>
                <td>{{ $user->name }}</td>
            </tr>

            <tr>
                <th>@lang('labels.backend.access.users.tabs.content.overview.email')</th>
                <td>{{ $user->email }}</td>
            </tr>

            <tr>
                <th>@lang('labels.backend.access.users.tabs.content.overview.status')</th>
                <td>{!! $user->status_label !!}</td>
            </tr>

            <tr>
                <th>@lang('labels.backend.access.users.tabs.content.overview.confirmed')</th>
                <td>{!! $user->confirmed_label !!}</td>
            </tr>
            <tr>
                <th>@lang('validation.attributes.backend.access.users.gender')</th>
                <td>
                   @isset($user->userProfile->gender)
                        @if($user->userProfile->gender == 'F')
                                  Female
                        @else
                                   Male    
                        @endif 
                    @endisset

                    @empty($user->userProfile->gender)
                            Not Provide
                    @endempty 
                       
                </td>
            </tr>
            <tr>
                <th>@lang('validation.attributes.backend.access.users.interests')</th>
                <td>
                    @isset($user->userProfile->interest_name)
                            
                           @forelse($user->userProfile->interest_name as $interest) 
                           |{!! $interest->name !!}
                           @empty
                             Not Provide
                           @endforelse  
                    @endisset

                    @empty($user->userProfile->interest_name)
                            Not Provide
                    @endempty 
                </td>
            </tr>
            <tr>
                <th>@lang('validation.attributes.backend.access.users.date-of-birth')</th>
                <td>
                     @isset($user->userProfile->date_of_birth)
                           {!! $user->userProfile->date_of_birth !!}  
                     @endisset

                     @empty($user->userProfile->date_of_birth)
                            Not Provide
                     @endempty 
                </td>
            </tr>
            <tr>
                <th>@lang('validation.attributes.backend.access.users.contact-number')</th>
                <td>
                    @isset($user->userProfile->contact_numbers)
                           {!! $user->userProfile->contact_numbers !!}  
                     @endisset

                     @empty($user->userProfile->contact_numbers)
                            Not Provide
                     @endempty 
                </td>
            </tr>
            <tr>
                <th>@lang('validation.attributes.backend.access.users.interested_in')</th>
                <td> 
                    @isset($user->userProfile->interested_in)
                           {!! $user->userProfile->interested_in !!}  
                     @endisset

                     @empty($user->userProfile->interested_in)
                            Not Provide
                     @endempty
                </td>
            </tr>
             <tr>
                <th>@lang('validation.attributes.backend.access.users.country')</th>
                <td> 
                    @isset($user->userProfile->country_name)
                           {!! $user->userProfile['country_name'] !!}  
                     @endisset

                     @empty($user->userProfile->country_name)
                            Not Provide
                     @endempty
                </td>
            </tr>
             <tr>
                <th>@lang('validation.attributes.backend.access.users.state')</th>
                <td>
                    @isset($user->userProfile->state)
                           {!! $user->userProfile['state_name'] !!}  
                     @endisset

                     @empty($user->userProfile->state)
                            Not Provide
                     @endempty
                 </td>
            </tr>
            <tr>
                <th>@lang('validation.attributes.backend.access.users.city')</th>
                <td>
                    @isset($user->userProfile->city)
                           {!! $user->userProfile['city_name'] !!}  
                     @endisset

                     @empty($user->userProfile->city)
                            Not Provide
                     @endempty
                </td>
            </tr>
            <tr>
                <th>@lang('validation.attributes.backend.access.users.address')</th>
                <td>
                    @isset($user->userProfile->address)
                           {!! $user->userProfile->address !!}  
                     @endisset

                     @empty($user->userProfile->address)
                            Not Provide
                     @endempty
                </td>
            </tr>
            <tr>
                <th>@lang('validation.attributes.backend.access.users.summery')</th>
                <td>
                     @isset($user->userProfile->summery)
                           {!! $user->userProfile->summery !!}  
                     @endisset

                     @empty($user->userProfile->summery)
                            Not Provide
                     @endempty
                </td>
            </tr>
            

            <tr>
                <th>@lang('labels.backend.access.users.tabs.content.overview.last_login_at')</th>
                <td>
                    @if($user->last_login_at)
                        {{ timezone()->convertToLocal($user->last_login_at) }}
                    @else
                        N/A
                    @endif
                </td>
            </tr>

            <tr>
                <th>@lang('labels.backend.access.users.tabs.content.overview.last_login_ip')</th>
                <td>{{ $user->last_login_ip ?? 'N/A' }}</td>
            </tr>
        </table>
    </div>
</div><!--table-responsive-->

    